import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/widgets/app_bars/base_app_bar.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/widgets/background/page_background.dart';
import '../../../../core/widgets/buttons/main_button.dart';
import '../../../../core/widgets/formatters/phone_input_formatter.dart';
import '../../../../core/widgets/text/app_text_field.dart';
import '../../../../routing/app_router.dart';
import '../../providers/auth/auth_state.dart';
import '../../providers/profile_di.dart';
import '../../widgets/auth_checkbox.dart';
import '../../widgets/dialogs/selection_sheet.dart';
import 'code_input_sheet.dart';

@RoutePage()
class RegistrationPage extends ConsumerStatefulWidget {
  const RegistrationPage({super.key});

  @override
  ConsumerState<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends ConsumerState<RegistrationPage> {
  bool agree = false;

  String _authMethodLabel = 'Получить код в Telegram';

  final _nameCtrl = TextEditingController();
  final _phoneCtrl = TextEditingController();
  final _nameFocus = FocusNode();
  final _phoneFocus = FocusNode();
  bool _phoneError = false;
  bool _agreeError = false;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _phoneCtrl.dispose();
    _nameFocus.dispose();
    _phoneFocus.dispose();
    super.dispose();
  }

  void _showSnack(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message.isEmpty ? 'Ошибка' : message)),
    );
  }

  Future<void> _openAuthMethodSheet() async {
    final selected = await showSelectionSheet<String>(
      context: context,
      title: 'Способ авторизации',
      options: const ['Получить код в Telegram', 'Получить код по SMS'],
      current: _authMethodLabel,
      labelOf: (s) => s,
      showBackButton: false,
    );
    if (selected != null && selected != _authMethodLabel) {
      setState(() => _authMethodLabel = selected);
    }
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);

    ref.listen<AuthState>(ProfileDi.authProvider, (prev, next) async {
      await next.maybeWhen(
        authorized: (token, userId, userUuid) async {
          if (!mounted) return;
          await context.router.replaceAll([const HomeRoute()]);
        },
        orElse: () async {},
      );
    });

    final isLoading = ref
        .watch(ProfileDi.authProvider)
        .maybeWhen(
          sendingCode: (_) => true,
          verifyingCode: (_) => true,
          orElse: () => false,
        );

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: BaseAppBar(
        title: 'Регистрация',
        mediaQuery: media,
        showBackButton: true,
        clipRRect: false,
      ),
      resizeToAvoidBottomInset: false,
      body: PageBackground.registration(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 14.0,
              vertical: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Способ авторизации',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                const SizedBox(height: 12),

                InkWell(
                  onTap: _openAuthMethodSheet,
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 44,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: AppColors.base0,
                      border: Border.all(color: AppColors.base10),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            _authMethodLabel,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: AppColors.blueGenie,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          AppIcons.arrowDown,
                          colorFilter: const ColorFilter.mode(
                            AppColors.blueGenie,
                            BlendMode.srcIn,
                          ),
                          width: 24,
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 14),

                const Text(
                  'Номер телефона',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                ),
                const SizedBox(height: 8),
                AppTextField(
                  height: 44,
                  width: double.infinity,
                  controller: _phoneCtrl,
                  focusNode: _phoneFocus,
                  hintText: '+7 (999) 999-99-99',
                  keyboardType: TextInputType.phone,
                  backgroundColor: AppColors.base0,
                  border: Border.all(
                    color: _phoneError ? Colors.red : AppColors.base10,
                  ),
                  textStyle: const TextStyle(
                    color: AppColors.base100,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  hintStyle: const TextStyle(
                    color: AppColors.base60,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  formatters: const [PhoneInputFormatter()],
                  onChanged: (v) {
                    if (_phoneError && v.trim().isNotEmpty) {
                      setState(() => _phoneError = false);
                    }
                  },
                ),
                if (_phoneError) ...[
                  const SizedBox(height: 6),
                  const Text(
                    'Это поле обязательно к заполнению',
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ],
                const SizedBox(height: 14.0),
                MainButton(
                  type: MainButtonType.primary,
                  onPressed: () async {
                    if (isLoading) return;

                    final hasPhone = _phoneCtrl.text.trim().isNotEmpty;
                    setState(() {
                      _phoneError = !hasPhone;
                      _agreeError = !agree;
                    });
                    if (!hasPhone || !agree) return;
                    final sendRes = await ref
                        .read(ProfileDi.authProvider.notifier)
                        .sendCode(_phoneCtrl.text);

                    sendRes.when(
                      success: (_) async {
                        await showCodeInputSheet(
                          context: context,
                          phoneNumber: _phoneCtrl.text,
                          otpLength: 4,
                          initialSeconds: 60,
                          onVerify: (code) async {
                            final verifyRes = await ref
                                .read(ProfileDi.authProvider.notifier)
                                .verifyCode(code);
                            return verifyRes.when(
                              success: (_) => true,
                              error: (m) {
                                _showSnack(m);
                                return false;
                              },
                            );
                          },
                          onResend: () async {
                            final resend = await ref
                                .read(ProfileDi.authProvider.notifier)
                                .resendCode();
                            resend.when(
                              success: (_) {},
                              error: (m) => _showSnack(m),
                            );
                          },
                        );
                      },
                      error: (m) => _showSnack(m),
                    );
                  },
                  child: Text(
                    isLoading ? 'Отправляем…' : 'Зарегистрироваться',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),

                AuthCheckbox(
                  value: agree,
                  showError: _agreeError,
                  checkboxSize: 15,
                  onChanged: (v) => setState(() {
                    agree = v;
                    if (agree) _agreeError = false;
                  }),
                ),

                const SizedBox(height: 24.0),

                MainButton(
                  type: MainButtonType.tertiary,
                  onPressed: () =>
                      context.router.replaceAll([const AuthorizationRoute()]),
                  child: const Text(
                    'У вас уже есть аккаунт? Войти',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/widgets/dialogs/app_bottom_sheet.dart';
import '../../../../../core/widgets/formatters/text_input_phormatter.dart';
import '../../../../core/widgets/buttons/main_button.dart';
import '../../../../core/widgets/formatters/time_input_formatter.dart';
import '../../../universe/widgets/selectors/date_menu_selector.dart';
import '../../providers/profile_di.dart';
import '../avatar_setting_block.dart';
import '../text_fields/profile_settings_text_field.dart';

Future<void> showProfileSettingsSheet({required BuildContext context}) =>
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => const AppBottomSheet(
        title: 'Настройки профиля',
        showBackButton: false,
        child: _ProfileSettingsSheetContent(),
      ),
    );

class _ProfileSettingsSheetContent extends ConsumerStatefulWidget {
  const _ProfileSettingsSheetContent({Key? key}) : super(key: key);

  @override
  ConsumerState<_ProfileSettingsSheetContent> createState() =>
      _ProfileSettingsSheetContentState();
}

class _ProfileSettingsSheetContentState
    extends ConsumerState<_ProfileSettingsSheetContent> {
  late final TextEditingController _nameCtrl;
  late final TextEditingController _phoneCtrl;
  late final TextEditingController _timeCtrl;
  late final TextEditingController _countryCtrl;
  late final TextEditingController _cityCtrl;

  String _day = '';
  String _month = '';
  String _year = '';

  @override
  void initState() {
    super.initState();
    _init();
  }

  static const _labelStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.kettleman,
  );

  void _init() {
    _nameCtrl = TextEditingController();
    _phoneCtrl = TextEditingController();
    _timeCtrl = TextEditingController();
    _countryCtrl = TextEditingController();
    _cityCtrl = TextEditingController();

    final s = ref
        .read(ProfileDi.profileProvider)
        .mapOrNull(authorized: (s) => s);
    if (s != null) {
      final name = [
        s.firstName,
        s.lastName,
      ].where((e) => e.isNotEmpty).join(' ');
      _nameCtrl.text = name;
      _phoneCtrl.text = s.phone;

      final date = s.birthDate;
      if (date != null) {
        _year = date.year.toString();
        _month = date.month < 10 ? '0${date.month}' : date.month.toString();
        _day = date.day < 10 ? '0${date.day}' : date.month.toString();
      }

      if ((s.birthTime ?? '').isNotEmpty) {
        final raw = s.birthTime!;
        _timeCtrl.text = raw.length >= 5 ? raw.substring(0, 5) : raw;
      }

      _cityCtrl.text = s.birthCity ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final profile = ref.watch(ProfileDi.profileProvider);
    final avatarUrl = profile.mapOrNull(authorized: (s) => s.avatarUrl);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(child: AvatarSettingBlock(avatarUrl: avatarUrl)),
        const SizedBox(height: 24),

        const Text('Имя', style: _labelStyle),
        const SizedBox(height: 8),
        ProfileSettingsTextField(
          controller: _nameCtrl,
          hint: 'Ваше имя',
          formatters: const [AlphabeticalInputFormatter()],
        ),

        const SizedBox(height: 16),

        const Text('Телефон', style: _labelStyle),
        const SizedBox(height: 8),
        ProfileSettingsTextField(
          controller: _phoneCtrl,
          hint: 'Ваш телефон',
          readOnly: true,
        ),

        const SizedBox(height: 16),

        const Text('Дата рождения', style: _labelStyle),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: Builder(
                builder: (_) {
                  final month = _month;
                  int daysCount = 31;
                  if (['4', '6', '9', '11'].contains(month)) {
                    daysCount = 30;
                  }
                  if (month == '2') {
                    daysCount = 28;
                    final year = int.tryParse(_year) ?? 1;
                    if (year % 4 == 0) {
                      daysCount = 29;
                    }
                  }
                  return DateMenuSelector(
                    hint: 'День',
                    value: _day,
                    isProfile: true,
                    menuChildren: [
                      for (int i = 1; i <= daysCount; i++)
                        MenuItemButton(
                          onPressed: () => setState(() {
                            if (i < 10) {
                              _day = '0$i';
                            } else {
                              _day = i.toString();
                            }
                          }),
                          child: Text(i.toString()),
                        ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: DateMenuSelector(
                value: _month,
                hint: 'Месяц',
                isProfile: true,
                menuChildren: [
                  for (int i = 1; i <= 12; i++)
                    MenuItemButton(
                      onPressed: () => setState(() {
                        if (i < 10) {
                          _month = '0$i';
                        } else {
                          _month = i.toString();
                        }
                      }),
                      child: Text(i.toString()),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: DateMenuSelector(
                value: _year,
                hint: 'Год',
                isProfile: true,
                menuChildren: [
                  for (
                    int i = DateTime.now().year;
                    i >= DateTime.now().year - 100;
                    i--
                  )
                    MenuItemButton(
                      onPressed: () => setState(() {
                        _year = i.toString();
                      }),
                      child: Text(i.toString()),
                    ),
                ],
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        const Text('Время рождения', style: _labelStyle),
        const SizedBox(height: 8),
        ProfileSettingsTextField(
          controller: _timeCtrl,
          hint: 'Время рождения',
          keyboardType: TextInputType.datetime,
          leading: SvgPicture.asset(AppIcons.alarm, width: 18, height: 18),
          formatters: [TimeInputFormatter()],
        ),

        const SizedBox(height: 16),

        const Text('Страна и город', style: _labelStyle),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: ProfileSettingsTextField(
                controller: _countryCtrl,
                hint: 'Страна',
                leading: SvgPicture.asset(
                  AppIcons.globe,
                  width: 16,
                  height: 16,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: ProfileSettingsTextField(
                controller: _cityCtrl,
                hint: 'Город',
                leading: SvgPicture.asset(
                  AppIcons.globe,
                  width: 16,
                  height: 16,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 24),

        MainButton(
          type: MainButtonType.primary,
          onPressed: () async {
            final fullName = _nameCtrl.text.trim();
            final parts = fullName
                .split(' ')
                .where((e) => e.isNotEmpty)
                .toList();
            final firstName = parts.isEmpty ? '' : parts.first;
            final lastName = parts.length > 1 ? parts.sublist(1).join(' ') : '';

            final birthDate = _buildBirthDateIso();
            final birthTime = _buildBirthTime();
            final birthCity = _cityCtrl.text.trim().isEmpty
                ? null
                : _cityCtrl.text.trim();

            final ok = await ref
                .read(ProfileDi.profileProvider.notifier)
                .updatePersonalData(
                  firstName: firstName,
                  lastName: lastName,
                  birthDate: birthDate,
                  birthTime: birthTime,
                  birthCity: birthCity,
                );

            if (!context.mounted) return;
            if (ok) {
              await Navigator.of(context).maybePop();
              if (!context.mounted) return;
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Данные успешно изменены')),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Не удалось сохранить изменения')),
              );
            }
          },
          child: const Text(
            'Сохранить изменения',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),

        const SizedBox(height: 24),
      ],
    );
  }

  String? _buildBirthDateIso() {
    if (_day.isEmpty || _month.isEmpty || _year.isEmpty) return null;
    return '$_year-$_month-$_day';
  }

  String? _buildBirthTime() {
    final text = _timeCtrl.text.trim();
    if (text.isEmpty) return null;
    if (RegExp(r'^\d{2}:\d{2}$').hasMatch(text)) return text;
    return text;
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _phoneCtrl.dispose();
    _timeCtrl.dispose();
    _countryCtrl.dispose();
    _cityCtrl.dispose();
    super.dispose();
  }
}

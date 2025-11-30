import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/widgets/dialogs/app_bottom_sheet.dart';
import '../../../../../core/widgets/formatters/text_input_phormatter.dart';
import '../../../../core/widgets/buttons/main_button.dart';
import '../../../../core/widgets/formatters/phone_input_formatter.dart';
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
          formatters: [const PhoneInputFormatter()],
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

            final ok = await ref
                .read(ProfileDi.profileProvider.notifier)
                .updatePersonalData(
                  firstName: firstName,
                  lastName: lastName,
                  birthDate: birthDate,
                  phone: _phoneCtrl.text.trim(),
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

        const SizedBox(height: 80),
      ],
    );
  }

  String? _buildBirthDateIso() {
    if (_day.isEmpty || _month.isEmpty || _year.isEmpty) return null;
    return '$_year-$_month-$_day';
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _phoneCtrl.dispose();
    super.dispose();
  }
}

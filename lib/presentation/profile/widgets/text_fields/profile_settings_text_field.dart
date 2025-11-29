import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/text/app_text_field.dart';

class ProfileSettingsTextField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool readOnly;
  final Widget? leading;
  final List<TextInputFormatter>? formatters;
  final TextInputType? keyboardType;
  const ProfileSettingsTextField({
    required this.hint,
    required this.controller,
    this.readOnly = false,
    this.leading,
    this.formatters,
    this.keyboardType,
    super.key,
  });

  @override
  Widget build(BuildContext context) => AppTextField(
    readOnly: readOnly,
    contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 15.0),
    controller: controller,
    hintText: hint,
    backgroundColor: AppColors.cascadingWhite,
    border: Border.all(color: AppColors.base10),
    textStyle: const TextStyle(
      color: AppColors.base100,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    hintStyle: const TextStyle(
      color: AppColors.uniformGrey,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    leading: leading,
    formatters: formatters,
    keyboardType: keyboardType,
  );
}

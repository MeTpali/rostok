import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/text/app_text_field.dart';

class UniverseSettingTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final Widget? leading;
  final Widget? trailing;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final bool isQuery;
  const UniverseSettingTextField({
    required this.controller,
    required this.hintText,
    this.leading,
    this.trailing,
    this.inputFormatters,
    this.keyboardType,
    this.isQuery = false,
    super.key,
  });

  @override
  State<UniverseSettingTextField> createState() =>
      _UniverseSettingTextFieldState();
}

class _UniverseSettingTextFieldState extends State<UniverseSettingTextField> {
  late bool isEmpty;

  @override
  void initState() {
    super.initState();

    isEmpty = widget.controller.text.isEmpty;
    widget.controller.addListener(_onText);
  }

  void _onText() => setState(() {
    isEmpty = widget.controller.text.isEmpty;
  });

  @override
  Widget build(BuildContext context) => AppTextField(
    controller: widget.controller,
    hintText: widget.hintText,
    leading: widget.leading,
    trailing: widget.trailing,
    minHeight: widget.isQuery ? 121 : null,
    multiLine: widget.isQuery,
    hintStyle: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.uniformGrey,
    ),
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: widget.isQuery ? AppColors.kettleman : AppColors.blueGenie,
    ),
    contentPadding: const EdgeInsets.all(14.0),
    backgroundColor: isEmpty ? AppColors.cascadingWhite : AppColors.base0,
    border: Border.all(
      color: isEmpty ? AppColors.crystalBell : AppColors.blueGenie,
    ),
    textSpacing: 8,
    formatters: widget.inputFormatters,
    keyboardType: widget.keyboardType,
  );

  @override
  void dispose() {
    widget.controller.removeListener(_onText);
    super.dispose();
  }
}

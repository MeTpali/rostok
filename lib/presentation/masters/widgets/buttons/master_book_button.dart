import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/buttons/main_button.dart';

class MasterBookButton extends StatelessWidget {
  final VoidCallback onTap;
  const MasterBookButton({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: const BoxDecoration(
      color: AppColors.fairway,
      border: Border(top: BorderSide(color: AppColors.unicornSilver)),
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(14.0, 14.0, 14.0, 24.0),
      child: MainButton(
        child: const Text(
          'Забронировать сессию',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.fairway,
          ),
        ),
        onPressed: onTap,
        type: MainButtonType.secondary,
        starSize: 20,
      ),
    ),
  );
}

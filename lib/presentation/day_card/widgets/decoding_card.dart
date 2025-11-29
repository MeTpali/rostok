import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_fonts.dart';
import '../../../core/widgets/cards/app_card.dart';

class DecodingCard extends StatelessWidget {
  final String title;
  final String description;
  const DecodingCard({
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) => AppCard(
    color: AppColors.base0,
    contentPadding: const EdgeInsets.all(24.0),
    borderRadius: 20,
    border: Border.all(color: AppColors.transparentBlue),
    child: Column(
      spacing: 16,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: AppColors.carbonFiber,
            fontFamily: AppFonts.nyght,
          ),
        ),
        Text(
          description,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.carbonFiber,
          ),
        ),
      ],
    ),
  );
}

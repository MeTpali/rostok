import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/parsers/icon_color_mapper.dart';

class AstroCategoryTile extends StatelessWidget {
  final String title;
  final String value;
  final String icon;
  const AstroCategoryTile({
    required this.title,
    required this.value,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) => ListTile(
    contentPadding: const EdgeInsets.only(top: 32.0, bottom: 16.0),
    minVerticalPadding: 0,
    minTileHeight: 0,
    horizontalTitleGap: 14,
    leading: SvgPicture.asset(
      icon,
      height: 24,
      width: 24,
      colorMapper: const IconColorMapper.filled(color: AppColors.fairway),
    ),
    title: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.kettleman,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.carbonFiber,
          ),
        ),
      ],
    ),
  );
}

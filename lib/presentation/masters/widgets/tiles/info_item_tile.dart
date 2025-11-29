import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/num.dart';

class InfoItemTile extends StatelessWidget {
  final Widget info;
  final String label;
  const InfoItemTile({required this.info, required this.label, super.key});

  InfoItemTile.rating({required double rating, required this.label, super.key})
    : info = Row(
        spacing: 4,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(rating.toString(), style: _defaultStyle),
          const Icon(
            Icons.star_outlined,
            color: AppColors.kazakhstanYellow,
            size: 11.67,
          ),
        ],
      );

  InfoItemTile.number({required double number, required this.label, super.key})
    : info = Text(NumUtils.doubleToDecimalFormat(number), style: _defaultStyle);

  static const _defaultStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.carbonFiber,
  );

  @override
  Widget build(BuildContext context) => SizedBox(
    height: 84,
    width: 84,
    child: DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.whitePerl,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.transparentBlue),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0),
        child: Column(
          spacing: 6,
          children: [
            Expanded(child: info),
            Expanded(
              child: Text(
                label,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.kettleman,
                  height: 12 / 13,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

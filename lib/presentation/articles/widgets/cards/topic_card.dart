import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/parsers/icon_color_mapper.dart';
import '../../../../core/widgets/skeleton/app_skeleton.dart';
import '../../../../core/widgets/utils/ui/app_shadows.dart';

class TopicCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback? onTap;
  final Size? imageSize;
  final int? titleMaxLines;
  const TopicCard({
    required this.title,
    required this.description,
    this.onTap,
    this.imageSize,
    this.titleMaxLines,
    super.key,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.washMe,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: AppShadows.glow,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: SvgPicture.asset(
                AppIcons.body,
                height: imageSize?.height ?? 123,
                width: imageSize?.width ?? 127,
                colorMapper: const IconColorMapper.filled(
                  color: AppColors.transparentBlue,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          maxLines: titleMaxLines ?? 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: AppColors.washMe,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          description,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.washMe,
          ),
        ),
      ],
    ),
  );
}

class EmptyTopicCard extends StatelessWidget {
  final Size? imageSize;
  const EmptyTopicCard({this.imageSize, super.key});

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      DecoratedBox(
        decoration: const BoxDecoration(boxShadow: AppShadows.glow),
        child: AppSkeleton(
          height: imageSize?.height ?? 130,
          width: imageSize?.width ?? 160,
          borderRadius: 12,
        ),
      ),
      const SizedBox(height: 10),
      const AppSkeleton(height: 23, width: 70, borderRadius: 4),
      const SizedBox(height: 6),
      const AppSkeleton(height: 12, width: 100, borderRadius: 4),
      const SizedBox(height: 2),
      const AppSkeleton(height: 12, width: 80, borderRadius: 4),
    ],
  );
}

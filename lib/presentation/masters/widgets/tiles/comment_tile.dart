import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/extensions/string_extensions.dart';
import '../../../../core/widgets/skeleton/app_skeleton.dart';

class MasterCommentTile extends StatelessWidget {
  final String name;
  final DateTime dateTime;
  final int star;
  final List<String> topics;
  final String descrption;
  const MasterCommentTile({
    required this.name,
    required this.dateTime,
    required this.star,
    required this.topics,
    required this.descrption,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        name,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.carbonFiber,
        ),
      ),
      const SizedBox(height: 6.0),
      Text(
        DateFormat('dd MMMM yyyy', 'ru_Ru').format(dateTime),
        style: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: AppColors.flagstone,
        ),
      ),
      const SizedBox(height: 12.0),
      Row(
        spacing: 2,
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < star; i++)
            const Icon(
              Icons.star_outlined,
              color: AppColors.kazakhstanYellow,
              size: 11.67,
            ),

          for (int i = star; i < 5; i++)
            const Icon(
              Icons.star_outlined,
              color: AppColors.flagstone,
              size: 11.67,
            ),
        ],
      ),
      const SizedBox(height: 4.0),
      Text(
        topics.join(', ').capitalize(),
        style: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: AppColors.flagstone,
        ),
      ),
      const SizedBox(height: 12.0),
      Text(
        descrption,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.kettleman,
          height: 17 / 12,
        ),
      ),
    ],
  );
}

class LoadingMasterCommentTile extends StatelessWidget {
  const LoadingMasterCommentTile({super.key});

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const AppSkeleton(height: 14, width: 50, borderRadius: 4),
      const SizedBox(height: 6.0),
      const AppSkeleton(height: 12, width: 67, borderRadius: 4),
      const SizedBox(height: 12.0),
      Row(
        spacing: 2,
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < 5; i++)
            const Icon(
              Icons.star_outlined,
              color: AppColors.flagstone,
              size: 11.67,
            ),
        ],
      ),
      const SizedBox(height: 4.0),
      const AppSkeleton(height: 12, width: 120, borderRadius: 4),
      const SizedBox(height: 12.0),
      LayoutBuilder(
        builder: (context, constraints) => Column(
          spacing: 3,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSkeleton(
              height: 14,
              width: constraints.maxWidth,
              borderRadius: 4,
            ),
            AppSkeleton(
              height: 14,
              width: constraints.maxWidth * 7 / 8,
              borderRadius: 4,
            ),
            AppSkeleton(
              height: 14,
              width: constraints.maxWidth,
              borderRadius: 4,
            ),
            AppSkeleton(
              height: 14,
              width: constraints.maxWidth * 7 / 8,
              borderRadius: 4,
            ),
          ],
        ),
      ),
    ],
  );
}

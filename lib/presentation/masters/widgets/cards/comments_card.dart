import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/parsers/icon_color_mapper.dart';
import '../../../../core/widgets/cards/app_card.dart';
import '../../../../core/widgets/dialogs/app_bottom_sheet.dart';
import '../../../../core/widgets/skeleton/app_skeleton.dart';
import '../../../../domain/models/masters/master_comment/master_comment.dart';
import '../tiles/comment_tile.dart';

class CommentsCard extends StatelessWidget {
  final double rating;
  final List<MasterComment> comments;
  const CommentsCard({required this.rating, required this.comments, super.key});

  bool get _shouldShowDialog => comments.length > 4;

  @override
  Widget build(BuildContext context) => AppCard(
    color: AppColors.base0,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 14.0,
      vertical: 20.0,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: _shouldShowDialog ? () async => _showAll(context) : null,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Отзывы о преподавателе',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.carbonFiber,
                    ),
                  ),
                  Row(
                    spacing: 4,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        rating.toString(),
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.kettleman,
                        ),
                      ),
                      const Icon(
                        Icons.star_outlined,
                        color: AppColors.kazakhstanYellow,
                        size: 11.67,
                      ),
                    ],
                  ),
                ],
              ),

              if (_shouldShowDialog)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Все ${comments.length} отзывов',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColors.fairway,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 4, 0, 4),
                      child: SvgPicture.asset(
                        AppIcons.arrowDown,
                        height: 22,
                        width: 22,
                        colorMapper: const IconColorMapper(
                          fillColor: AppColors.artificialIntelligenceGrey,
                        ),
                      ),
                    ),
                  ],
                ),
              const SizedBox(height: 9),
            ],
          ),
        ),
        const Divider(
          color: AppColors.unicornSilver,
          indent: 0,
          endIndent: 0,
          height: 1,
        ),
        const SizedBox(height: 20),
        _buildList(min(comments.length, 4), false),
      ],
    ),
  );

  Future<void> _showAll(BuildContext context) async => showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) => AppBottomSheet(
      title: '${comments.length} отзывов',
      showBackButton: false,
      showDivider: true,
      child: _buildList(comments.length, true),
    ),
  );

  Widget _buildList(int length, bool addPadding) => ListView.separated(
    itemCount: length,
    padding: addPadding
        ? const EdgeInsets.symmetric(vertical: 24.0)
        : EdgeInsets.zero,
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemBuilder: (_, index) => MasterCommentTile(
      name: comments[index].name,
      dateTime: comments[index].dateTime,
      star: comments[index].star,
      topics: comments[index].topics,
      descrption: comments[index].descrption,
    ),
    separatorBuilder: (_, __) => const Padding(
      padding: EdgeInsets.only(top: 12.0, bottom: 20.0),
      child: Divider(
        color: AppColors.unicornSilver,
        indent: 0,
        endIndent: 0,
        height: 1,
      ),
    ),
  );
}

class LoadingCommentsCard extends StatelessWidget {
  const LoadingCommentsCard({super.key});

  @override
  Widget build(BuildContext context) => AppCard(
    color: AppColors.base0,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 14.0,
      vertical: 20.0,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSkeleton(height: 22, width: 150, borderRadius: 4),
            Row(
              spacing: 4,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppSkeleton(height: 17, width: 21, borderRadius: 4),
                Icon(
                  Icons.star_outlined,
                  color: AppColors.kazakhstanYellow,
                  size: 11.67,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Divider(
          color: AppColors.unicornSilver,
          indent: 0,
          endIndent: 0,
          height: 1,
        ),
        const SizedBox(height: 20),
        ListView.separated(
          itemCount: 4,
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, index) => const LoadingMasterCommentTile(),
          separatorBuilder: (_, __) => const Padding(
            padding: EdgeInsets.only(top: 12.0, bottom: 20.0),
            child: Divider(
              color: AppColors.unicornSilver,
              indent: 0,
              endIndent: 0,
              height: 1,
            ),
          ),
        ),
      ],
    ),
  );
}

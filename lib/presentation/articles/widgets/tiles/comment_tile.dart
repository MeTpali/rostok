import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/widgets/images/app_image.dart';
import '../../../../domain/models/articles/comment/comment.dart';

class CommentTile extends StatelessWidget {
  final Comment comment;
  final ValueChanged<Comment> onAnswer;
  final ValueChanged<Comment>? onTap;
  final int layer;
  final EdgeInsetsGeometry contentPadding;
  final List<Comment> selectedComments;
  final bool shouldBlur;

  const CommentTile({
    required this.comment,
    required this.onAnswer,
    this.onTap,
    this.layer = 0,
    this.contentPadding = const EdgeInsets.only(top: 20.0, bottom: 12.0),
    this.selectedComments = const <Comment>[],
    this.shouldBlur = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => onTap?.call(comment),
    child: Padding(
      padding: contentPadding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity:
                (shouldBlur &&
                    selectedComments.any((comm) => comm.id != comment.id))
                ? 0.5
                : 1,
            child: ListTile(
              minTileHeight: 0,
              minVerticalPadding: 0,
              contentPadding: EdgeInsets.zero,
              horizontalTitleGap: 8,
              minLeadingWidth: 0,
              titleAlignment: ListTileTitleAlignment.top,
              leading: Padding(
                padding: EdgeInsets.only(left: 38.0 * layer.toDouble()),
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: CircleAvatar(
                    child: AppImage(
                      url: comment.senderImageUrl ?? '',
                      height: 30,
                      width: 30,
                      errorImage: SvgPicture.asset(
                        AppIcons.user,
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                ),
              ),
              title: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 8.0,
                    children: [
                      Flexible(
                        child: Text(
                          comment.sender,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.carbonFiber,
                          ),
                        ),
                      ),
                      Text(
                        dateTime(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: AppColors.flagstone,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    comment.content,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.kettleman,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () => onAnswer(comment),
                        child: const Text(
                          'Ответить',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.flagstone,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: comment.subcomments.length,
            itemBuilder: (_, i) => CommentTile(
              comment: comment.subcomments[i],
              onAnswer: onAnswer,
              onTap: onTap,
              layer: layer + 1,
              contentPadding: contentPadding,
              selectedComments: selectedComments,
              shouldBlur: shouldBlur,
            ),
          ),
        ],
      ),
    ),
  );

  String dateTime() {
    final now = DateTime.now();

    if (comment.dateTime.add(const Duration(minutes: 1)).isAfter(now)) {
      return 'Сейчас';
    }

    if (comment.dateTime.add(const Duration(days: 1)).isAfter(now)) {
      return DateFormat('mm:ss', 'ru_RU').format(comment.dateTime);
    }

    if (comment.dateTime.add(const Duration(days: 2)).isAfter(now)) {
      return 'Вчера';
    }

    return DateFormat('dd MMMM yyyy', 'ru_Ru').format(comment.dateTime);
  }
}

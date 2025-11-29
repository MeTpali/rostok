import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/parsers/icon_color_mapper.dart';
import '../../../../core/widgets/blocks/menu_block.dart';
import '../../../../core/widgets/visuals/flexible_wrap.dart';
import '../../../../domain/models/articles/topic/topic.dart';
import '../../../../routing/app_router.dart';
import '../../../articles/widgets/cards/topic_card.dart';

class MasterArticlesBlock extends ConsumerWidget {
  final List<Topic> articles;
  const MasterArticlesBlock({required this.articles, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => MenuBlock(
    title: 'Статьи от автора',
    titleStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.brilliance,
    ),
    titlePadding: const EdgeInsets.fromLTRB(14.0, 0.0, 14.0, 16.0),
    action: articles.length > 4
        ? GestureDetector(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  articles.length.toString(),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.brilliance,
                  ),
                ),
                SvgPicture.asset(
                  AppIcons.arrowDown,
                  height: 20,
                  width: 20,
                  colorMapper: const IconColorMapper(
                    fillColor: AppColors.brilliance,
                  ),
                ),
              ],
            ),
          )
        : null,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: FlexibleWrap(
        spacing: 11,
        runSpacing: 24,
        children: [
          for (int i = 0; i < min(articles.length, 4); i++)
            SizedBox(
              width:
                  MediaQuery.of(context).size.width /
                  ((MediaQuery.of(context).size.width - 28) / 165 + 1),
              child: TopicCard(
                title: articles[i].title,
                description: articles[i].description,
                onTap: () async =>
                    context.router.push(ArticleRoute(id: articles[i].id)),
              ),
            ),
        ],
      ),
    ),
  );
}

class LoadingArticlesBlock extends StatelessWidget {
  const LoadingArticlesBlock({super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 14.0),
    child: Column(
      spacing: 16,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Статьи от автора',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.brilliance,
          ),
        ),
        FlexibleWrap(
          spacing: 11,
          runSpacing: 24,
          children: [
            for (int i = 0; i < 4; i++)
              const EmptyTopicCard(imageSize: Size(168, 160)),
          ],
        ),
      ],
    ),
  );
}

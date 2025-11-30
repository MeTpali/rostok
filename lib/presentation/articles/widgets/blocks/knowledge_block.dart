import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_fonts.dart';
import '../../../../core/widgets/blocks/menu_block.dart';
import '../../../../core/widgets/skeleton/app_skeleton.dart';
import '../../../../domain/models/articles/topic/topic.dart';
import '../cards/topic_card.dart';

class KnowledgeBlock extends StatelessWidget {
  final String title;
  final List<Topic> topics;
  final ValueChanged<(int, String)>? onTopic;
  const KnowledgeBlock({
    required this.title,
    required this.topics,
    this.onTopic,
    super.key,
  });

  @override
  Widget build(BuildContext context) => MenuBlock(
    title: title,
    titleStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: AppColors.boysenberryShadow,
      fontFamily: AppFonts.nyght,
    ),
    titlePadding: const EdgeInsets.only(left: 14.0, bottom: 16.0),
    child: SizedBox(
      height: 210,
      child: ListView.separated(
        itemCount: topics.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        itemBuilder: (context, i) => SizedBox(
          width: 165,
          child: TopicCard(
            title: topics[i].title,
            description: topics[i].description,
            titleMaxLines: 1,
            imageSize: const Size(127, 94),
            onTap: () => onTopic?.call((topics[i].id, topics[i].title)),
          ),
        ),
        separatorBuilder: (_, __) => const SizedBox(width: 10),
      ),
    ),
  );
}

class EmptyKnowledgeBlock extends StatelessWidget {
  const EmptyKnowledgeBlock({super.key});

  @override
  Widget build(BuildContext context) => Column(
    spacing: 16.0,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: AppSkeleton(height: 20, width: 110, borderRadius: 4),
      ),
      SizedBox(
        height: 210,
        child: ListView.separated(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          itemBuilder: (_, __) => const SizedBox(
            width: 165,
            child: EmptyTopicCard(imageSize: Size(160, 130)),
          ),
          separatorBuilder: (_, __) => const SizedBox(width: 10),
        ),
      ),
    ],
  );
}

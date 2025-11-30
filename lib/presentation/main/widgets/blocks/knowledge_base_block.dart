import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_fonts.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/parsers/icon_color_mapper.dart';
import '../../../../core/widgets/blocks/menu_block.dart';
import '../../../../core/widgets/visuals/flexible_wrap.dart';
import '../../../../domain/models/articles/knowledge/knowledge.dart';
import '../../../../routing/app_router.dart';
import '../../../articles/providers/articles_di.dart';
import '../../../articles/widgets/cards/topic_card.dart';
import '../buttons/knowledge_base_selector.dart';

class KnowledgeBaseBlock extends ConsumerStatefulWidget {
  const KnowledgeBaseBlock({super.key});

  @override
  ConsumerState<KnowledgeBaseBlock> createState() => _KnowledgeBaseBlockState();
}

class _KnowledgeBaseBlockState extends ConsumerState<KnowledgeBaseBlock> {
  int selectedIndex = 0;
  late ScrollController _scrollController;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _pageController = PageController();
  }

  Future<void> _onSelectorTap(int id) async {
    await _pageController.animateToPage(
      id,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  Future<void> _scrollToSelected(int index, List<Knowledge> knowledges) async {
    final screenWidth = MediaQuery.of(context).size.width;

    double offsetBefore = 0;
    for (int i = 0; i < index; i++) {
      offsetBefore += _calcItemWidth(knowledges[i].title) + 8;
    }

    final currentItemWidth = _calcItemWidth(knowledges[index].title);
    final targetOffset = offsetBefore + currentItemWidth / 2 - screenWidth / 2;

    await _scrollController.animateTo(
      targetOffset.clamp(
        _scrollController.position.minScrollExtent,
        _scrollController.position.maxScrollExtent,
      ),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  double _calcItemWidth(String text) {
    const basePadding = 24.0;
    const style = TextStyle(fontSize: 14, fontWeight: FontWeight.w400);

    final textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();

    return basePadding + textPainter.width;
  }

  @override
  Widget build(BuildContext context) {
    final libraryState = ref.watch(ArticlesDi.libraryProvider);

    return MenuBlock(
      title: 'База знаний',
      titleStyle: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w500,
        color: AppColors.boysenberryShadow,
        fontFamily: AppFonts.nyght,
      ),
      titlePadding: const EdgeInsets.only(
        bottom: 14.0,
        left: 14.0,
        right: 14.0,
      ),
      action: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Все',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.boysenberryShadow,
            ),
          ),
          SvgPicture.asset(
            AppIcons.chevronRight,
            height: 24,
            width: 24,
            colorMapper: const IconColorMapper.filled(
              color: AppColors.brilliance,
            ),
          ),
        ],
      ),
      onTap: () => AutoTabsRouter.of(context).setActiveIndex(3),
      child: Column(
        spacing: 20,
        mainAxisSize: MainAxisSize.min,
        children: [
          libraryState.when(
            idle: () => const SizedBox.shrink(),
            loading: () => SizedBox(
              height: 27,
              child: ListView.builder(
                itemCount: 10,
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                itemBuilder: (context, index) =>
                    const EmptyKnowledgeBaseSelector(),
              ),
            ),
            resolved: (knowledges) => SizedBox(
              height: 27,
              child: ListView.builder(
                itemCount: knowledges.length,
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                itemBuilder: (context, index) => KnowledgeBaseSelector(
                  id: knowledges[index].id,
                  name: knowledges[index].title,
                  isSelected: selectedIndex == index,
                  onTap: () async => _onSelectorTap(index),
                ),
              ),
            ),
          ),
          libraryState.when(
            idle: () => const SizedBox.shrink(),
            loading: () => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: FlexibleWrap(
                key: const ValueKey('loading'),
                spacing: 11,
                runSpacing: 24,
                children: [
                  for (int i = 0; i < 4; i++)
                    const SizedBox(
                      width: 165,
                      child: EmptyTopicCard(imageSize: Size(165, 160)),
                    ),
                ],
              ),
            ),
            resolved: (knowledges) => Builder(
              builder: (context) => SizedBox(
                height: 540,
                child: PageView.builder(
                  itemCount: 10,
                  controller: _pageController,
                  onPageChanged: (index) async {
                    setState(() {
                      selectedIndex = index;
                    });
                    await _scrollToSelected(index, knowledges);
                  },
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: FlexibleWrap(
                      spacing: 11,
                      runSpacing: 16.0,
                      children: [
                        for (final topic in knowledges[index].topics.sublist(
                          0,
                          4,
                        ))
                          SizedBox(
                            width: 165,
                            child: TopicCard(
                              title: topic.title,
                              description: topic.description,
                              onTap: () async {
                                AutoTabsRouter.of(context).setActiveIndex(3);

                                final router = AutoTabsRouter.of(context)
                                    .innerRouterOf<StackRouter>(
                                      ArticlesShellRoute.name,
                                    );

                                await router?.pushAndPopUntil(
                                  ArticlesRoute(
                                    topicId: topic.id,
                                    topicTitle: topic.title,
                                  ),
                                  predicate: (route) =>
                                      route.settings.name == 'LibraryRoute',
                                );
                              },
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _pageController.dispose();
    super.dispose();
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/app_bars/simple_app_bar.dart';
import '../../../core/widgets/cards/app_card.dart';
import '../../../routing/app_router.dart';
import '../providers/articles_di.dart';
import '../widgets/blocks/knowledge_block.dart';

@RoutePage()
class LibraryPage extends ConsumerWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final libraryState = ref.watch(ArticlesDi.libraryProvider);

    return Scaffold(
      appBar: SimpleAppBar(
        title: 'База знаний',
        mediaQuery: MediaQuery.of(context),
        showBackButton: false,
      ),
      backgroundColor: AppColors.base0,
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          ref.invalidate(ArticlesDi.libraryProvider);
        },
        child: ListView(
          children: [
            const SizedBox(height: 16.0),
            libraryState.when(
              idle: () => const SizedBox.shrink(),
              loading: () => AppCard(
                color: AppColors.fairway,
                contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  spacing: 24,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (int i = 0; i < 10; i++) const EmptyKnowledgeBlock(),
                  ],
                ),
              ),
              resolved: (knowledges) => AppCard(
                color: AppColors.fairway,
                contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  spacing: 24,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (final knowledge in knowledges)
                      if (knowledge.topics.isNotEmpty)
                        KnowledgeBlock(
                          title: knowledge.title,
                          topics: knowledge.topics,
                          onTopic: (topic) async {
                            await context.router.push(
                              ArticlesRoute(
                                topicId: topic.$1,
                                topicTitle: topic.$2,
                              ),
                            );
                          },
                        ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/app_bars/simple_app_bar.dart';
import '../../../core/widgets/cards/app_card.dart';
import '../../../core/widgets/visuals/flexible_wrap.dart';
import '../../../routing/app_router.dart';
import '../providers/articles_di.dart';
import '../widgets/cards/topic_card.dart';

@RoutePage()
class ArticlesPage extends ConsumerWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articlesState = ref.watch(ArticlesDi.arcticlesProvider);

    return Scaffold(
      appBar: SimpleAppBar(
        title: 'Туториал',
        mediaQuery: MediaQuery.of(context),
      ),
      backgroundColor: AppColors.base0,
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          await ref
              .watch(ArticlesDi.arcticlesProvider.notifier)
              .tryFetchArcticles();
        },
        child: ListView(
          children: [
            const SizedBox(height: 16.0),
            articlesState.when(
              idle: () => const SizedBox.shrink(),
              loading: () => AppCard(
                color: AppColors.fairway,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 14.0,
                ),
                child: FlexibleWrap(
                  key: const ValueKey('loading'),
                  spacing: 11,
                  runSpacing: 24,
                  children: [
                    for (int i = 0; i < 20; i++)
                      const SizedBox(
                        width: 165,
                        child: EmptyTopicCard(imageSize: Size(165, 160)),
                      ),
                  ],
                ),
              ),
              resolved: (_, topics) => AppCard(
                color: AppColors.fairway,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 14.0,
                ),
                child: FlexibleWrap(
                  key: const ValueKey('resolved'),
                  spacing: 11,
                  runSpacing: 24,
                  children: [
                    for (final topic in topics)
                      SizedBox(
                        width: 165,
                        child: TopicCard(
                          title: topic.title,
                          description: topic.description,
                          onTap: () async =>
                              context.router.push(ArticleRoute(id: topic.id)),
                        ),
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

import 'dart:async';
import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_fonts.dart';
import '../../../core/constants/app_icons.dart';
import '../../../core/constants/app_keys.dart';
import '../../../core/parsers/icon_color_mapper.dart';
import '../../../core/widgets/app_bars/transparent_app_bar.dart';
import '../../../core/widgets/background/page_background.dart';
import '../../../core/widgets/buttons/app_icon_button.dart';
import '../../../core/widgets/buttons/main_button.dart';
import '../../../core/widgets/cards/app_card.dart';
import '../../../core/widgets/skeleton/app_skeleton.dart';
import '../../../routing/app_router.dart';
import '../providers/articles_di.dart';
import '../widgets/blocks/knowledge_block.dart';
import '../widgets/dialogs/comments_bottom_sheet.dart';

@RoutePage()
class ArticlePage extends ConsumerStatefulWidget {
  final int id;
  const ArticlePage({required this.id, super.key});

  @override
  ConsumerState<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends ConsumerState<ArticlePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _update());
  }

  void _update() {
    unawaited(
      ref
          .read(ArticlesDi.arcticleProvider.notifier)
          .fetchArticle(articleId: widget.id),
    );
    unawaited(
      ref
          .read(ArticlesDi.sameArcticlesProvider.notifier)
          .fetchSameArticles(articleId: widget.id),
    );
    unawaited(
      ref
          .read(ArticlesDi.commentsProvider.notifier)
          .fetchComments(articleId: widget.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    final articleState = ref.watch(ArticlesDi.arcticleProvider);
    final sameArticlesState = ref.watch(ArticlesDi.sameArcticlesProvider);

    return Scaffold(
      appBar: TransparentAppBar(
        mediaQuery: MediaQuery.of(context),
        child: Row(
          spacing: 14.0,
          children: [
            AppIconButton(
              icon: SvgPicture.asset(
                AppIcons.chevronLeft,
                height: 20,
                width: 20,
              ),
              iconSize: 20,
              iconPadding: const EdgeInsets.all(11.0),
              backgroundColor: AppColors.seaGreen,
              onPressed: () async => context.router.maybePop(),
            ),
            const Spacer(),
            AppIconButton(
              icon: SvgPicture.asset(
                AppIcons.heart1,
                height: 22,
                width: 22,
                colorMapper: IconColorMapper(
                  fillColor: articleState.maybeMap(
                    orElse: () => Colors.transparent,
                    resolved: (article) => article.isFavourite
                        ? Colors.redAccent
                        : Colors.transparent,
                  ),
                ),
              ),
              iconPadding: const EdgeInsets.all(10.0),
              backgroundColor: AppColors.seaGreen,
            ),
            AppIconButton(
              icon: SvgPicture.asset(AppIcons.upload),
              iconPadding: const EdgeInsets.all(10.0),
              backgroundColor: AppColors.seaGreen,
            ),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      body: PageBackground.lock(
        child: RefreshIndicator(
          onRefresh: () async => _update(),
          child: ListView(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 138 / 812),
              articleState.map(
                idle: (_) => const SizedBox.shrink(),
                loading: (_) => const _LoadingArticleCard(),
                resolved: (article) => AppCard(
                  contentPadding: const EdgeInsets.fromLTRB(
                    14.0,
                    24.0,
                    14.0,
                    18.0,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.user,
                            colorMapper: const IconColorMapper.filled(
                              color: AppColors.carbonFiber,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          Flexible(
                            child: Text(
                              article.publisherName,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.carbonFiber,
                              ),
                            ),
                          ),
                          const SizedBox(width: 14.0),
                          Text(
                            DateFormat(
                              'dd MMMM yyyy',
                              'ru_Ru',
                            ).format(article.publishDate),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.uniformGrey,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Text(
                        article.title,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: AppColors.carbonFiber,
                          fontFamily: AppFonts.nyght,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        article.content,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.carbonFiber,
                        ),
                      ),
                      const SizedBox(height: 24),
                      MainButton(
                        child: Row(
                          spacing: 6,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(AppIcons.message),
                            Text(
                              '${article.commentsCount} комментария',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.base0,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () async => showModalBottomSheet<void>(
                          context:
                              AppKeys.rootScaffoldKey.currentContext ?? context,
                          isScrollControlled: true,
                          useRootNavigator: true,
                          backgroundColor: Colors.transparent,
                          builder: (_) =>
                              CommentsBottomSheet(articleId: article.id),
                        ),
                        type: MainButtonType.primary,
                      ),
                    ],
                  ),
                ),
              ),
              ...sameArticlesState.map(
                idle: (_) => [const SizedBox.shrink()],
                loading: (_) => [
                  const SizedBox(height: 24),
                  const EmptyKnowledgeBlock(),
                ],
                resolved: (sameArticles) => [
                  const SizedBox(height: 24),
                  KnowledgeBlock(
                    title: 'Ещё на эту тему',
                    topics: sameArticles.arcticles,
                    onTopic: (id) => context.router.push(ArticleRoute(id: id)),
                  ),
                ],
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoadingArticleCard extends StatelessWidget {
  const _LoadingArticleCard();

  @override
  Widget build(BuildContext context) => AppCard(
    contentPadding: const EdgeInsets.fromLTRB(14.0, 24.0, 14.0, 18.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              AppIcons.user,
              colorMapper: const IconColorMapper.filled(
                color: AppColors.carbonFiber,
              ),
            ),
            const SizedBox(width: 8.0),
            const AppSkeleton(height: 18, width: 78, borderRadius: 4),
            const SizedBox(width: 14.0),
            const AppSkeleton(height: 18, width: 107, borderRadius: 4),
          ],
        ),
        const SizedBox(height: 24),
        AppSkeleton(
          height: 30,
          width: (MediaQuery.of(context).size.width - 28) * 7 / 8,
          borderRadius: 4,
        ),
        const SizedBox(height: 20),
        for (int i = 0; i < 20; i++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: AppSkeleton(
              height: 18,
              width:
                  (MediaQuery.of(context).size.width - 28) *
                  Random().nextInt(12) /
                  13,
              borderRadius: 4,
            ),
          ),
        const SizedBox(height: 24),
        AppSkeleton(
          child: MainButton(
            child: Row(
              spacing: 6,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(AppIcons.message),
                const Text(
                  'Комментарии',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.base0,
                  ),
                ),
              ],
            ),
            onPressed: () {},
            type: MainButtonType.primary,
          ),
        ),
      ],
    ),
  );
}

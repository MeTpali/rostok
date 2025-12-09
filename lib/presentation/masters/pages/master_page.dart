import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../../routing/app_router.dart';
import '../../profile/providers/profile_di.dart';
import '../providers/masters_di.dart';
import '../widgets/app_bars/master_app_bar.dart';
import '../widgets/blocks/articles_block.dart';
import '../widgets/buttons/master_book_button.dart';
import '../widgets/cards/comments_card.dart';
import '../widgets/cards/master_info_card.dart';
import '../widgets/pages/empty_master_page.dart';

@RoutePage()
class MasterPage extends ConsumerStatefulWidget {
  final int id;
  const MasterPage({required this.id});

  @override
  ConsumerState<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends ConsumerState<MasterPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _update());
  }

  void _update() {
    unawaited(
      ref.read(MastersDi.masterProvider.notifier).fetchMaster(id: widget.id),
    );
    unawaited(
      ref
          .read(MastersDi.masterCommentsProvider.notifier)
          .fetchComments(masterId: widget.id),
    );
    unawaited(
      ref
          .read(MastersDi.masterArticlesProvider.notifier)
          .fetchArticles(masterId: widget.id),
    );
  }

  @override
  Widget build(BuildContext context) {
    final masterState = ref.watch(MastersDi.masterProvider);
    final masterCommentsState = ref.watch(MastersDi.masterCommentsProvider);
    final masterArticlesState = ref.watch(MastersDi.masterArticlesProvider);

    if (masterState.maybeMap(orElse: () => false, idle: (_) => true)) {
      return const SizedBox.shrink();
    }

    if (masterState.maybeMap(orElse: () => false, error: (_) => true)) {
      return const EmptyMasterPage();
    }

    return Scaffold(
      backgroundColor: AppColors.fairway,
      body: Column(
        children: [
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async => _update(),
              child: ListView(
                padding: EdgeInsets.zero,
                cacheExtent: 2000,
                children: [
                  masterState.maybeWhen(
                    orElse: () => MasterAppBar(
                      imageUrl: '',
                      isFavourite: false,
                      videoUrl: '',
                      height: MediaQuery.of(context).size.height / 3,
                    ),
                    resolved: (master) => MasterAppBar(
                      imageUrl:
                          'https://avatars.mds.yandex.net/i?id=c18d54be0eaf4d99edf680525a455c5eb8d4d110-4010157-images-thumbs&n=13',
                      isFavourite:
                          ref
                              .watch(MastersDi.facouriteMastersProvider)
                              .indexWhere((m) => m.id == widget.id) !=
                          -1,
                      videoUrl: '', // master.videoUrl,
                      height: MediaQuery.of(context).size.height / 3,
                      onToggleFavourite: (value) => ref
                          .read(MastersDi.facouriteMastersProvider.notifier)
                          .toggleFavorite(widget.id),
                    ),
                  ),
                  masterState.maybeWhen(
                    orElse: () => const SizedBox.shrink(),
                    loading: () => const LoadingMasterInfoCard(),
                    resolved: (master) => MasterInfoCard(
                      name: '${master.firstName} ${master.lastName}',
                      online: master.isOnline,
                      rating: master.rating,
                      articlesCount: 15,
                      reviewsCount: master.reviewsCount,
                      descrption: master.description,
                      topics: master.topics,
                      practices: [],
                    ),
                  ),
                  ...masterCommentsState.maybeWhen(
                    orElse: () => const [SizedBox.shrink()],
                    loading: () => [
                      const SizedBox(height: 8),
                      const LoadingCommentsCard(),
                    ],
                    resolved: (comments) => masterState.maybeWhen(
                      orElse: () => [const SizedBox.shrink()],
                      loading: () => [
                        const SizedBox(height: 8),
                        const LoadingMasterInfoCard(),
                      ],
                      resolved: (master) => [
                        const SizedBox(height: 8),
                        CommentsCard(rating: master.rating, comments: comments),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  ...masterArticlesState.when(
                    idle: () => const [SizedBox.shrink()],
                    loading: () => const [
                      SizedBox(height: 24),
                      LoadingArticlesBlock(),
                    ],
                    resolved: (articles) => [
                      const SizedBox(height: 24),
                      MasterArticlesBlock(articles: articles),
                    ],
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
          MasterBookButton(
            onTap: () async {
              final name = ref
                  .watch(MastersDi.masterProvider)
                  .maybeMap(
                    orElse: () => '',
                    resolved: (master) =>
                        '${master.master.firstName} ${master.master.lastName}',
                  );
              final profile = ref.read(ProfileDi.profileProvider);
              if (profile.maybeMap(
                orElse: () => false,
                authorized: (_) => true,
              )) {
                await context.router.push(
                  BookingRoute(masterId: widget.id, name: name),
                );
              } else {
                await showDialog<void>(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Авторизация'),
                    content: const Text(
                      'Для записи на занятие необходимо авторизоваться',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () async {
                          await context.router.push(const AuthorizationRoute());
                          if (!context.mounted) return;
                          await context.router.maybePop();
                        },
                        child: const Text('Авторизоваться'),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

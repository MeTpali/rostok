import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/app_bars/profile_app_bar.dart';
import '../../../core/widgets/cards/app_card.dart';
import '../../../routing/app_router.dart';
import '../../articles/providers/articles_di.dart';
import '../../day_card/widgets/day_card_widget.dart';
import '../../masters/providers/masters_di.dart';
import '../../profile/providers/profile_di.dart';
import '../providers/main_di.dart';
import '../widgets/blocks/discussion_block.dart';
import '../widgets/blocks/knowledge_base_block.dart';
import '../widgets/blocks/masters_block.dart';
import '../widgets/cards/promo_card.dart';
import '../widgets/cards/registration_card.dart';

@RoutePage()
class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(ProfileDi.profileProvider);

    return Scaffold(
      appBar: profileState.mapOrNull(
        authorized: (profile) => ProfileAppBar(
          username: profile.firstName,
          mediaQuery: MediaQuery.of(context),
          prana: 1000,
          imageUrl: profile.avatarUrl,
          onTapProfile: () async => context.router.push(const ProfileRoute()),
          onTapDayCard: () async => showDayCard(context),
        ),
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          ref.invalidate(MastersDi.previewMastersProvider);
          ref.invalidate(MainDi.topicsProvider);
          ref.invalidate(MainDi.practicesProvider);
          ref.invalidate(ArticlesDi.libraryProvider);
        },
        child: ListView(
          children: [
            ...profileState.maybeMap(
              orElse: () => [const SizedBox.shrink()],
              unauthorized: (_) => [
                const SizedBox(height: 12),
                RegistrationCard(
                  onTap: () async =>
                      ref.watch(ProfileDi.profileProvider.notifier).authorize(),
                ),
                const SizedBox(height: 20),
              ],
            ),
            AppCard.verticalPadding(
              color: AppColors.fairway,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ...profileState.maybeMap(
                    orElse: () => [const SizedBox.shrink()],
                    authorized: (_) => [
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0),
                        child: PromoCard(onTap: () async {}),
                      ),
                      // const SizedBox(height: 32),
                      // const SearchingBlock(),
                      const SizedBox(height: 32),
                      const DiscussionBlock(),
                    ],
                  ),
                  const MastersBlock(),
                  const SizedBox(height: 32),
                  const KnowledgeBaseBlock(),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.base0,
    );
  }
}

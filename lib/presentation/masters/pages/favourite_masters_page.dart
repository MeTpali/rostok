import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_icons.dart';
import '../../../core/widgets/app_bars/simple_app_bar.dart';
import '../../../core/widgets/background/page_background.dart';
import '../../../core/widgets/buttons/main_button.dart';
import '../../../core/widgets/cards/app_card.dart';
import '../../../core/widgets/cards/master_card.dart';
import '../../../core/widgets/visuals/flexible_wrap.dart';
import '../../../routing/app_router.dart';
import '../providers/masters_di.dart';

@RoutePage()
class FavouriteMastersPage extends ConsumerWidget {
  const FavouriteMastersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final masters = ref.watch(MastersDi.facouriteMastersProvider);

    return Scaffold(
      appBar: SimpleAppBar(
        title: 'Избранные преподаватели',
        mediaQuery: MediaQuery.of(context),
      ),
      backgroundColor: AppColors.base0,
      body: RefreshIndicator.adaptive(
        onRefresh: () async {
          await ref
              .watch(MastersDi.facouriteMastersProvider.notifier)
              .fetchFavorites();
        },
        child: masters.isEmpty
            ? const _Empty()
            : ListView(
                children: [
                  const SizedBox(height: 16.0),
                  AppCard(
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
                        for (final master in masters)
                          MasterCard(
                            key: ValueKey(master.id),
                            width:
                                MediaQuery.of(context).size.width /
                                ((MediaQuery.of(context).size.width - 28) /
                                        165 +
                                    1),
                            name: '${master.firstName} ${master.lastName}',
                            prana: master.prana,
                            rating: master.rating,
                            reviewsCount: master.reviewsCount,
                            url: master.url,
                            description: master.description,
                            timing: master.timing,
                            onTap: () async =>
                                context.router.push(MasterRoute(id: master.id)),
                            onBook: () {},
                            isFavorite:
                                ref
                                    .watch(MastersDi.facouriteMastersProvider)
                                    .indexWhere((m) => m.id == master.id) !=
                                -1,
                            onFavoriteToggle: () => ref
                                .read(
                                  MastersDi.facouriteMastersProvider.notifier,
                                )
                                .toggleFavorite(master.id),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

class _Empty extends StatelessWidget {
  const _Empty();

  @override
  Widget build(BuildContext context) => PageBackground.simple(
    child: LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 124,
                  height: 130,
                  decoration: const BoxDecoration(
                    color: AppColors.base10,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      colorFilter: const ColorFilter.mode(
                        AppColors.base100,
                        BlendMode.srcIn,
                      ),
                      AppIcons.heart,
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Список любимых преподавателей пуст',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'К сожалению мы не нашли ваших любимых преподавателей. \n Вам ещё не занимались у нас ? Добро пожаловать в каталог наших лучших преподаавтелей.',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 32),
                MainButton(
                  width: double.infinity,
                  height: 48,
                  child: const Text(
                    'База знаний',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () async =>
                      AutoTabsRouter.of(context).setActiveIndex(1),
                  type: MainButtonType.primary,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

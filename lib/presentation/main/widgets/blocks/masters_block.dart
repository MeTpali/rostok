import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_fonts.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/parsers/icon_color_mapper.dart';
import '../../../../core/widgets/blocks/menu_block.dart';
import '../../../../core/widgets/cards/master_card.dart';
import '../../../../core/widgets/skeleton/app_skeleton.dart';
import '../../../../core/widgets/visuals/flexible_wrap.dart';
import '../../../../routing/app_router.dart';
import '../../../masters/providers/masters_di.dart';
import '../../../profile/providers/profile_di.dart';

class MastersBlock extends ConsumerWidget {
  const MastersBlock({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mastersState = ref.watch(MastersDi.previewMastersProvider);

    return mastersState.maybeMap(
      orElse: () => const SizedBox.shrink(),
      resolved: (mastersState) => _buildBlock(
        context,
        FlexibleWrap(
          spacing: 11,
          runSpacing: 10,
          children: [
            for (int i = 0; i < 4; i++)
              MasterCard(
                width:
                    MediaQuery.of(context).size.width /
                    ((MediaQuery.of(context).size.width - 28) / 165 + 1),
                name:
                    '${mastersState.masters[i].firstName} ${mastersState.masters[i].lastName}',
                prana: mastersState.masters[i].prana,
                rating: mastersState.masters[i].rating,
                reviewsCount: mastersState.masters[i].reviewsCount,
                url: mastersState.masters[i].url,
                description: mastersState.masters[i].description,
                timing: mastersState.masters[i].timing,
                onTap: () async => context.router.push(
                  MasterRoute(id: mastersState.masters[i].id),
                ),
                isFavorite:
                    ref
                        .watch(MastersDi.facouriteMastersProvider)
                        .indexWhere(
                          (m) => m.id == mastersState.masters[i].id,
                        ) !=
                    -1,
                onFavoriteToggle: () => ref
                    .read(MastersDi.facouriteMastersProvider.notifier)
                    .toggleFavorite(mastersState.masters[i].id),
                onBook: () async {
                  final profile = ref.read(ProfileDi.profileProvider);
                  if (profile.maybeMap(
                    orElse: () => false,
                    authorized: (_) => true,
                  )) {
                    await context.router.push(
                      BookingRoute(
                        masterId: mastersState.masters[i].id,
                        name:
                            '${mastersState.masters[i].firstName} ${mastersState.masters[i].lastName}',
                      ),
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
                              await context.router.push(
                                const AuthorizationRoute(),
                              );
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
      ),
      loading: (_) => _buildBlock(
        context,
        FlexibleWrap(
          spacing: 11,
          runSpacing: 10,
          children: [
            for (int i = 0; i < 4; i++)
              const AppSkeleton(height: 283, width: 168, borderRadius: 12),
          ],
        ),
      ),
    );
  }

  Widget _buildBlock(BuildContext context, Widget child) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 14.0),
    child: MenuBlock(
      title: 'Преподаватели',
      titleStyle: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w500,
        color: AppColors.boysenberryShadow,
        fontFamily: AppFonts.nyght,
      ),
      titlePadding: const EdgeInsets.only(bottom: 14),
      onTap: () => AutoTabsRouter.of(context).setActiveIndex(1),
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
      child: child,
    ),
  );
}

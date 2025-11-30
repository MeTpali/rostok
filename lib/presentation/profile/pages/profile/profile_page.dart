import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/parsers/icon_color_mapper.dart';
import '../../../../core/widgets/cards/app_card.dart';
import '../../../../core/widgets/overlay/overlay_item.dart';
import '../../../../core/widgets/overlay/overlay_wrap.dart';
import '../../../../core/widgets/types/bracing.dart';
import '../../providers/profile_di.dart';
import '../../widgets/cards/payment_method_card.dart';
import '../../widgets/cards/profile_stat_cards.dart';
import '../../widgets/personal_info_block.dart';

@RoutePage()
class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(ProfileDi.profileProvider);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.base0,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).viewPadding.top),
          state.map(
            unauthorized: (_) =>
                const ProfilePersonalBlock(name: 'Гость', avatarUrl: ''),
            loading: (_) => const SizedBox(
              height: 99,
              child: Center(child: CircularProgressIndicator()),
            ),
            error: (_) =>
                const ProfilePersonalBlock(name: 'Ошибка', avatarUrl: ''),
            authorized: (s) {
              final name = [
                s.firstName,
                s.lastName,
              ].where((e) => e.isNotEmpty).join(' ').trim();

              return ProfilePersonalBlock(
                name: name.isEmpty ? 'Без имени' : name,
                avatarUrl: s.avatarUrl ?? '',
              );
            },
          ),
          Expanded(
            child: OverlayWrap(
              overlayItems: [
                OverlayItem(
                  topOffset: -15,
                  rightOffset: 0,
                  widget: SvgPicture.asset(
                    AppIcons.star1,
                    height: 30,
                    width: 30,
                    colorMapper: const IconColorMapper(
                      fillColor: AppColors.base0,
                      strokeColor: AppColors.fairway,
                    ),
                  ),
                ),
              ],
              child: AppCard(
                color: AppColors.fairway,
                contentPadding: const EdgeInsets.symmetric(horizontal: 14.0),
                bracingType: BracingType.bottom,
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  children: [
                    const Row(
                      spacing: 12,
                      children: [
                        Expanded(child: PranaStatCard(value: '1000')),
                        Expanded(child: ConsultationsStatCard(value: '2')),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const PaymentMethodCard(cardNumber: 'Мир *7676'),
                    const SizedBox(height: 12),

                    GestureDetector(
                      onTap: () async => url_launcher.launchUrl(
                        Uri.parse('https://t.me/PremiumRussia'),
                      ),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppColors.base0,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  'Поддержка',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.base100,
                                  ),
                                ),
                              ),
                              SvgPicture.asset(
                                AppIcons.headphones,
                                width: 20,
                                height: 20,
                                colorFilter: const ColorFilter.mode(
                                  AppColors.fairway,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

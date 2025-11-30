import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../routing/app_router.dart';
import '../../../../core/parsers/icon_color_mapper.dart';
import '../../providers/profile_di.dart';

class ActivitiesCard extends ConsumerWidget {
  const ActivitiesCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => ClipRRect(
    clipBehavior: Clip.hardEdge,
    borderRadius: BorderRadius.circular(14),
    child: ColoredBox(
      color: AppColors.base0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildSectionTitle('Избранное'),
          _buildTile(
            context: context,
            title: 'Статьи',
            onTap: () async =>
                context.router.push(const FavouriteArticlesRoute()),
            isFirstOfCard: true,
            leading: SvgPicture.asset(
              AppIcons.book,
              width: 18,
              height: 18,
              colorMapper: const IconColorMapper.filled(
                color: AppColors.fairway,
              ),
            ),
          ),
          _buildDivider(),
          _buildTile(
            context: context,
            title: 'Преподаватели',
            onTap: () async =>
                context.router.push(const FavouriteMastersRoute()),
            leading: SvgPicture.asset(
              AppIcons.grid,
              width: 18,
              height: 18,
              colorMapper: const IconColorMapper.filled(
                color: AppColors.fairway,
              ),
            ),
          ),

          _buildSectionTitle('История'),
          _buildTile(
            context: context,
            title: 'Операции',
            onTap: () {},
            leading: SvgPicture.asset(AppIcons.wallet, width: 18, height: 18),
          ),
          _buildDivider(),
          _buildTile(
            context: context,
            title: 'Комментарии',
            onTap: () {},
            leading: SvgPicture.asset(AppIcons.chat2, width: 18, height: 18),
          ),

          _buildSectionTitle('Профиль'),
          _buildTile(
            context: context,
            title: 'Настройки',
            onTap: () {},
            leading: SvgPicture.asset(AppIcons.setting, width: 18, height: 18),
          ),
          _buildDivider(),
          _buildTile(
            context: context,
            title: 'Способ оплаты',
            onTap: () async => context.router.push(const PaymentMethodRoute()),
            leading: SvgPicture.asset(
              AppIcons.cardCheck,
              width: 18,
              height: 18,
            ),
          ),
          _buildDivider(),
          _buildTile(
            context: context,
            title: 'Поддержка',
            onTap: () async =>
                url_launcher.launchUrl(Uri.parse('https://t.me/PremiumRussia')),
            isLastOfCard: true,
            leading: SvgPicture.asset(AppIcons.shield, width: 18, height: 18),
          ),

          const SizedBox(height: 32),
          Center(
            child: GestureDetector(
              onTap: () async {
                // await ref.read(ProfileDi.authProvider.notifier).logoutLocal();
                // if (context.mounted) {
                //   await context.router.replaceAll([HomeRoute()]);
                // }
                await showDialog<void>(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text(
                      'Вы действительно хотите выйти из профиля?',
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () => context.router.maybePop(),
                        child: const Text(
                          'Отмена',
                          style: TextStyle(color: Colors.redAccent),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          await ref
                              .read(ProfileDi.authProvider.notifier)
                              .logoutLocal();
                          if (context.mounted) {
                            await context.router.replaceAll([HomeRoute()]);
                          }
                          if (!context.mounted) return;
                          await context.router.maybePop();
                        },
                        child: const Text(
                          'Выход',
                          style: TextStyle(color: AppColors.fairway),
                        ),
                      ),
                    ],
                  ),
                );
              },
              child: const Text(
                'Выйти из профиля',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    ),
  );

  Widget _buildSectionTitle(String text) => Padding(
    padding: const EdgeInsets.fromLTRB(14, 14, 14, 8),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.base100,
      ),
    ),
  );

  Widget _buildDivider() => const Divider(
    thickness: 1,
    height: 1,
    color: AppColors.base10,
    indent: 26,
    endIndent: 14,
  );

  Widget _buildTile({
    required BuildContext context,
    required String title,
    required VoidCallback onTap,
    Widget? leading,
    bool isFirstOfCard = false,
    bool isLastOfCard = false,
  }) => InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.vertical(
      top: isFirstOfCard ? const Radius.circular(14) : Radius.zero,
      bottom: isLastOfCard ? const Radius.circular(14) : Radius.zero,
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(26, 14, 14, 14),
      child: Row(
        children: [
          if (leading != null) ...[
            SizedBox(width: 18, height: 18, child: Center(child: leading)),
            const SizedBox(width: 12),
          ],
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.base100,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

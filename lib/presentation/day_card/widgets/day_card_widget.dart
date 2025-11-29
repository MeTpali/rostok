import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_fonts.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/widgets/buttons/app_icon_button.dart';
import '../../../core/widgets/buttons/main_button.dart';
import '../../../routing/app_router.dart';
import '../providers/day_card_di.dart';

Future<void> showDayCard(BuildContext context) => showDialog<void>(
  context: context,
  builder: (context) => const Padding(
    padding: EdgeInsets.symmetric(horizontal: 14.0),
    child: DayCardWidget(),
  ),
);

class DayCardWidget extends ConsumerWidget {
  const DayCardWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dayCardState = ref.watch(DayCardDi.dayCardProvider);

    return Center(
      child: Material(
        color: Colors.transparent,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.base0, AppColors.transparentBlue],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(14.0, 14.0, 14.0, 2.5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  spacing: 6,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 24),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 18.0),
                        child: Text(
                          'Карта дня',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: AppColors.carbonFiber,
                            fontFamily: AppFonts.nyght,
                          ),
                        ),
                      ),
                    ),
                    AppIconButton(
                      onPressed: () async => context.router.maybePop(),
                      icon: const Icon(
                        Icons.close_rounded,
                        color: AppColors.navyBlazer,
                      ),
                      iconSize: 24,
                    ),
                  ],
                ),
                const SizedBox(height: 17.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    dayCardState.map(
                      idle: (_) =>
                          'Черпайте ежедневные наставления из Вселенной',
                      card: (card) => card.title,
                    ),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.carbonFiber,
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                SvgPicture.asset(AppImages.dayCard),
                const SizedBox(height: 24.0),
                if (dayCardState.isLoading)
                  Opacity(
                    opacity: 0.6,
                    child: MainButton(
                      child: const Text(
                        'Читаем звезды...',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () {},
                      type: MainButtonType.primary,
                    ),
                  ),
                if (!dayCardState.isLoading)
                  MainButton(
                    child: Text(
                      dayCardState.map(
                        idle: (card) => 'Тянуть карту',
                        card: (_) => 'Расшифровать',
                      ),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: dayCardState.map(
                      idle: (_) =>
                          () async => ref
                              .read(DayCardDi.dayCardProvider.notifier)
                              .pullCard(),
                      card: (card) => () async {
                        await ref
                            .read(DayCardDi.dayCardProvider.notifier)
                            .decode();
                        if (!context.mounted) return;
                        await context.router.maybePop();
                        if (!context.mounted) return;
                        await context.router.push(
                          DayCardRoute(
                            card: card.title,
                            description: card.description,
                          ),
                        );
                      },
                    ),
                    type: MainButtonType.primary,
                  ),
                const SizedBox(height: 24.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

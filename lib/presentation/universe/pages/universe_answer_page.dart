import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:share_plus/share_plus.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_fonts.dart';
import '../../../core/constants/app_icons.dart';
import '../../../core/parsers/icon_color_mapper.dart';
import '../../../core/widgets/background/page_background.dart';
import '../../../core/widgets/buttons/app_icon_button.dart';
import '../../../core/widgets/cards/app_card.dart';
import '../../../domain/models/universe/universe_answer/universe_answer.dart';
import '../widgets/tiles/astro_category_tile.dart';

@RoutePage()
class UniverseAnswerPage extends StatelessWidget {
  final UniverseAnswer answer;
  const UniverseAnswerPage({required this.answer, super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: PageBackground.universeAnswer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: ListView(
          children: [
            const SizedBox(height: 14),
            AppCard(
              contentPadding: const EdgeInsets.all(24),
              borderRadius: 20,
              border: Border.all(color: AppColors.transparentBlue),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ваш астрологический профиль',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: AppColors.carbonFiber,
                      fontFamily: AppFonts.nyght,
                    ),
                  ),
                  AstroCategoryTile(
                    title: 'Солнечный знак',
                    value: answer.sunSign,
                    icon: AppIcons.sun,
                  ),
                  const Divider(
                    indent: 0,
                    endIndent: 0,
                    color: AppColors.unicornSilver,
                  ),
                  AstroCategoryTile(
                    title: 'Солнечный знак',
                    value: answer.sunSign,
                    icon: AppIcons.moon,
                  ),
                  const Divider(
                    indent: 0,
                    endIndent: 0,
                    color: AppColors.unicornSilver,
                  ),
                  AstroCategoryTile(
                    title: 'Солнечный знак',
                    value: answer.sunSign,
                    icon: AppIcons.star1,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            AppCard(
              contentPadding: const EdgeInsets.all(24),
              borderRadius: 20,
              border: Border.all(color: AppColors.transparentBlue),
              child: Column(
                spacing: 16,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text(
                          'Ваш прогноз',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: AppColors.carbonFiber,
                            fontFamily: AppFonts.nyght,
                          ),
                        ),
                      ),
                      AppIconButton(
                        icon: SvgPicture.asset(
                          AppIcons.share,
                          height: 16,
                          width: 16,
                          colorMapper: const IconColorMapper.filled(
                            color: AppColors.fairway,
                          ),
                        ),
                        iconPadding: const EdgeInsets.all(6.0),
                        backgroundColor: AppColors.astronomer,
                        onPressed: () async {
                          final text =
                              'Aстрологический профиль\n'
                              'Солнечный знак: ${answer.sunSign}\n'
                              'Лунный знак: ${answer.moonSign}\n'
                              'Асцендент: ${answer.ascendent}\n\n'
                              'Прогноз\n'
                              '${answer.answer}';
                          await SharePlus.instance.share(
                            ShareParams(text: text),
                          );
                        },
                      ),
                    ],
                  ),
                  Text(
                    answer.answer,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.carbonFiber,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

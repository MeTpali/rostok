import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_fonts.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/widgets/blocks/menu_block.dart';
import '../../../../core/widgets/buttons/app_icon_button.dart';
import '../../../mock/mock_practice_button.dart';
import '../../providers/main_di.dart';

class SearchingBlock extends ConsumerWidget {
  const SearchingBlock({super.key});

  @override
  Widget build(BuildContext contex, WidgetRef ref) {
    final practicesState = ref.watch(MainDi.practicesProvider);

    return MenuBlock(
      title: 'Я ищу',
      titlePadding: const EdgeInsets.only(bottom: 14.0, left: 14.0),
      titleStyle: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w500,
        color: AppColors.boysenberryShadow,
        fontFamily: AppFonts.nyght,
      ),
      child: SizedBox(
        height: 91,
        child: practicesState.maybeWhen(
          orElse: () => ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            itemCount: 20,
            itemBuilder: (_, index) => const MockPracticeButton(),
            separatorBuilder: (_, __) => const SizedBox(width: 14),
          ),
          resolved: (practices) => ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            itemCount: practices.length,
            itemBuilder: (_, index) => SizedBox(
              width: 90,
              child: AppIconButton(
                icon: SvgPicture.asset(AppIcons.sunface, height: 42, width: 42),
                iconPadding: const EdgeInsets.all(9.0),
                backgroundColor: AppColors.transparentBlue,
                label: practices[index],
                labelSpacing: 6.0,
                elevation: 5,
                labelStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.brilliance,
                ),
              ),
            ),
            separatorBuilder: (_, __) => const SizedBox(width: 14),
          ),
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/widgets/background/page_background.dart';
import '../../../../core/widgets/buttons/main_button.dart';

class EmptyMastersPage extends StatelessWidget {
  const EmptyMastersPage({super.key});

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
                  'Список преподавателей пуст',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                const FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'К сожалению не удалось найти подходящих преподавателей',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 32),
                MainButton(
                  width: double.infinity,
                  height: 48,
                  child: const Text(
                    'Вернуться',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () async => context.router.maybePop(),
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

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_fonts.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/parsers/icon_color_mapper.dart';
import '../../../../core/widgets/buttons/main_button.dart';
import '../../../../core/widgets/utils/ui/app_shadows.dart';

class PromoCard extends StatelessWidget {
  final VoidCallback onTap;
  const PromoCard({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: AppColors.base0,
      boxShadow: AppShadows.soft,
    ),
    child: SizedBox(
      height: 120,
      child: Stack(
        children: [
          Positioned(
            bottom: -32,
            right: -10,
            child: Transform.rotate(
              angle: -8 / 180 * pi,
              child: SvgPicture.asset(
                AppIcons.randBook(),
                height: 127,
                width: 127,
                colorMapper: const IconColorMapper.filled(
                  color: AppColors.transparentBlue,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Получите 100 очков Роста',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.carbonFiber,
                    fontFamily: AppFonts.nyght,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        spacing: 16,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Расскажите о нас друзьям',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.carbonFiber,
                            ),
                          ),
                          MainButton(
                            child: const Text(
                              'Получить',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppColors.brilliance,
                              ),
                            ),
                            onPressed: onTap,
                            type: MainButtonType.primary,
                            height: 32,
                            starSize: 20,
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 8.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

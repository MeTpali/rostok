import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/parsers/icon_color_mapper.dart';
import '../../../../core/widgets/buttons/main_button.dart';

class PaymentBalanceCard extends StatelessWidget {
  final String prana;
  final VoidCallback onTap;

  const PaymentBalanceCard({
    required this.prana,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: BorderRadius.circular(14),
    child: ColoredBox(
      color: AppColors.base0,
      child: Stack(
        children: [
          Positioned(
            right: 24,
            top: 4,
            child: Transform.rotate(
              angle: -0.8,
              child: SvgPicture.asset(
                AppIcons.heartstar,
                width: 41,
                height: 41,
                colorMapper: const IconColorMapper(
                  fillColor: AppColors.base0,
                  strokeColor: AppColors.lightPeriwinkle,
                ),
              ),
            ),
          ),
          Positioned(
            right: 2,
            top: -1,
            child: Transform.rotate(
              angle: -0.3,
              child: SvgPicture.asset(
                AppIcons.heartstar,
                width: 28,
                height: 28,
                colorMapper: const IconColorMapper(
                  fillColor: AppColors.base0,
                  strokeColor: AppColors.lightPeriwinkle,
                ),
              ),
            ),
          ),
          Positioned(
            right: -8,
            top: 48,
            child: Transform.rotate(
              angle: 3.14,
              child: SvgPicture.asset(
                AppIcons.heartstar,
                width: 20,
                height: 20,
                colorMapper: const IconColorMapper(
                  fillColor: AppColors.base0,
                  strokeColor: AppColors.lightPeriwinkle,
                ),
              ),
            ),
          ),
          Positioned(
            right: 3,
            top: 25,
            child: Transform.rotate(
              angle: -0.15,
              child: SvgPicture.asset(
                AppIcons.heartstar,
                width: 23,
                height: 23,
                colorMapper: const IconColorMapper(
                  fillColor: AppColors.base0,
                  strokeColor: AppColors.lightPeriwinkle,
                ),
              ),
            ),
          ),
          Positioned(
            right: 55,
            top: -21,
            child: Transform.rotate(
              angle: -0.6,
              child: SvgPicture.asset(
                AppIcons.heartstar,
                width: 40,
                height: 40,
                colorMapper: const IconColorMapper(
                  fillColor: AppColors.base0,
                  strokeColor: AppColors.lightPeriwinkle,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 42,
                      height: 42,
                      decoration: const BoxDecoration(
                        color: AppColors.liteGreen,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          AppIcons.prana,
                          width: 20,
                          height: 20,
                          colorFilter: const ColorFilter.mode(
                            AppColors.fairway,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'Баланс: ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.carbonFiber,
                                  ),
                                ),
                                TextSpan(
                                  text: '$prana Прана',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.carbonFiber,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            '1 ₽ = 1 Прана',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: AppColors.uniformGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                MainButton(
                  type: MainButtonType.primary,
                  onPressed: onTap,
                  child: const Text(
                    'Пополнить',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

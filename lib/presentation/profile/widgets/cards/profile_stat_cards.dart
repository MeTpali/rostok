import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_icons.dart';
import '../../../../routing/app_router.dart';
import 'stat_info_card.dart';

class PranaStatCard extends StatelessWidget {
  final String value;
  const PranaStatCard({required this.value, super.key});

  @override
  Widget build(BuildContext context) => StatInfoCard(
    title: 'Очки Прана',
    value: value,
    onTap: () => context.router.push(const PaymentMethodRoute()),
    trailingIcon: SvgPicture.asset(
      AppIcons.prana,
      width: 20,
      height: 20,
      colorFilter: const ColorFilter.mode(AppColors.fairway, BlendMode.srcIn),
    ),
    bgIconsBuilder: (size) => [
      Positioned(
        left: size.width * 0.74,
        top: size.height * 0.25,
        child: Transform.rotate(
          angle: -0.20,
          child: SvgPicture.asset(
            AppIcons.wrist,
            width: 31,
            height: 67,
            colorFilter: const ColorFilter.mode(
              AppColors.transparentBlue,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),

      Positioned(
        left: size.width * 0.92,
        top: size.height * 0.48,
        child: Transform.rotate(
          angle: 0.26,
          child: SvgPicture.asset(
            AppIcons.star,
            width: 10,
            height: 10,
            colorFilter: const ColorFilter.mode(
              AppColors.transparentBlue,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),

      Positioned(
        left: size.width * 0.69,
        top: size.height * 0.85,
        child: Transform.rotate(
          angle: 0.26,
          child: SvgPicture.asset(
            AppIcons.star,
            width: 10,
            height: 10,
            colorFilter: const ColorFilter.mode(
              AppColors.transparentBlue,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    ],
  );
}

class ConsultationsStatCard extends StatelessWidget {
  final String value;
  const ConsultationsStatCard({required this.value, super.key});

  @override
  Widget build(BuildContext context) => StatInfoCard(
    title: 'Мои консультации',
    value: value,
    trailingIcon: SvgPicture.asset(AppIcons.clock, width: 17, height: 17),
    bgIconsBuilder: (size) => [
      Positioned(
        left: size.width * 0.73,
        top: size.height * 0.42,
        child: Transform.rotate(
          angle: 4,
          child: SvgPicture.asset(
            AppIcons.halfmoon,
            width: 36,
            height: 56,
            colorFilter: const ColorFilter.mode(
              AppColors.transparentBlue,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
      Positioned(
        left: size.width * 0.85,
        top: size.height * 0.28,
        child: Transform.rotate(
          angle: 0.25,
          child: SvgPicture.asset(
            AppIcons.star,
            width: 10,
            height: 10,
            colorFilter: const ColorFilter.mode(
              AppColors.transparentBlue,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
      Positioned(
        left: size.width * 0.66,
        top: size.height * 0.88,
        child: Transform.rotate(
          angle: 0.35,
          child: SvgPicture.asset(
            AppIcons.star,
            width: 10,
            height: 10,
            colorFilter: const ColorFilter.mode(
              AppColors.transparentBlue,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    ],
  );
}

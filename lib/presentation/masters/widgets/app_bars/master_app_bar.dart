import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/parsers/icon_color_mapper.dart';
import '../../../../core/widgets/buttons/app_icon_button.dart';
import '../../../../core/widgets/images/app_image.dart';
import '../../../../routing/app_router.dart';

class MasterAppBar extends StatelessWidget {
  final String imageUrl;
  final String videoUrl;
  final bool isFavourite;
  final double height;
  final ValueChanged<bool>? onToggleFavourite;
  const MasterAppBar({
    required this.imageUrl,
    required this.isFavourite,
    required this.height,
    this.videoUrl = '',
    this.onToggleFavourite,
    super.key,
  });

  @override
  Widget build(BuildContext context) => AppImage(
    height: height,
    url: imageUrl,
    borderRadius: 0,
    fit: BoxFit.cover,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MediaQuery.of(context).viewPadding.top),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10000),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 11, sigmaY: 11),
                  child: AppIconButton(
                    icon: SvgPicture.asset(
                      AppIcons.chevronLeft,
                      height: 28,
                      width: 28,
                    ),
                    iconPadding: const EdgeInsets.all(7.0),
                    backgroundColor: AppColors.base0.withValues(alpha: 0.3),
                    borderColor: AppColors.base0.withValues(alpha: 0.2),
                    onPressed: () async => context.router.maybePop(),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10000),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 11, sigmaY: 11),
                  child: AppIconButton(
                    icon: SvgPicture.asset(
                      AppIcons.heart,
                      height: 20,
                      width: 20,
                      colorMapper: IconColorMapper(
                        fillColor: isFavourite
                            ? Colors.redAccent
                            : Colors.transparent,
                        strokeColor: AppColors.carbonFiber,
                      ),
                    ),
                    iconPadding: const EdgeInsets.all(11.0),
                    backgroundColor: AppColors.base0.withValues(alpha: 0.3),
                    borderColor: AppColors.base0.withValues(alpha: 0.2),
                    onPressed: () => onToggleFavourite?.call(!isFavourite),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        if (videoUrl.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 14.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10000),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 11, sigmaY: 11),
                child: ElevatedButton(
                  onPressed: () async =>
                      context.router.push(VideoRoute(url: videoUrl)),
                  child: Row(
                    spacing: 4,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        AppIcons.play,
                        height: 24,
                        width: 24,
                        colorMapper: const IconColorMapper.filled(
                          color: AppColors.base0,
                        ),
                      ),

                      const Text(
                        'Смотреть видео-визитку',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: AppColors.base0,
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(6.0, 5.0, 12.0, 5.0),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minimumSize: const Size(0, 0),
                    backgroundColor: AppColors.base0.withValues(alpha: 0.3),
                    disabledBackgroundColor: AppColors.base0.withValues(
                      alpha: 0.3,
                    ),
                    elevation: 0,
                    shadowColor: AppColors.quartzite.withAlpha(100),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: AppColors.base0.withValues(alpha: 0.2),
                      ),
                      borderRadius: BorderRadius.circular(10000),
                    ),
                  ),
                ),
              ),
            ),
          ),
        const SizedBox(height: 14),
        const DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.base0,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: SizedBox(height: 20, width: double.infinity),
        ),
      ],
    ),
  );
}

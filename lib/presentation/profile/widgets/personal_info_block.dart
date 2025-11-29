import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_fonts.dart';
import '../../../core/constants/app_icons.dart';
import '../../../core/parsers/icon_color_mapper.dart';
import '../../../core/widgets/images/app_image.dart';
import '../../../core/widgets/overlay/overlay_item.dart';
import '../../../core/widgets/overlay/overlay_wrap.dart';
import '../../../routing/app_router.dart';

class ProfilePersonalBlock extends StatelessWidget {
  final String name;
  final String? avatarUrl;

  const ProfilePersonalBlock({required this.name, this.avatarUrl, super.key});

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => context.router.push(const ProfileSettingsRoute()),
    child: OverlayWrap(
      overlayItems: [
        OverlayItem(
          alignment: Alignment.topLeft,
          widget: SvgPicture.asset(
            AppIcons.star4,
            height: 30,
            width: 30,
            colorMapper: const IconColorMapper(
              fillColor: AppColors.base0,
              strokeColor: AppColors.fairway,
            ),
          ),
        ),
      ],
      child: ColoredBox(
        color: AppColors.base0,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 24, 12, 18),
          child: Row(
            children: [
              AppImage(
                url: avatarUrl ?? '',
                width: 60,
                height: 60,
                errorImage: const ColoredBox(
                  color: AppColors.base10,
                  child: Center(
                    child: Icon(
                      Icons.person,
                      size: 28,
                      color: AppColors.base40,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Личные данные',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.uniformGrey,
                      ),
                    ),
                    Text(
                      name,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: AppColors.base100,
                        fontFamily: AppFonts.nyght,
                      ),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                AppIcons.chevronRight,
                width: 20,
                height: 20,
                colorFilter: const ColorFilter.mode(
                  AppColors.carbonFiber,
                  BlendMode.srcIn,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

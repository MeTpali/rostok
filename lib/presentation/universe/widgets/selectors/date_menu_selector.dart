import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/parsers/icon_color_mapper.dart';

class DateMenuSelector extends StatelessWidget {
  final String value;
  final String hint;
  final List<Widget> menuChildren;
  final bool isProfile;
  const DateMenuSelector({
    required this.value,
    required this.hint,
    required this.menuChildren,
    this.isProfile = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final selected = value.isNotEmpty;

    return MenuAnchor(
      menuChildren: menuChildren,
      style: MenuStyle(
        maximumSize: WidgetStateProperty.all(const Size(double.infinity, 375)),
      ),
      builder: (context, controller, child) => GestureDetector(
        onTap: () {
          if (controller.isOpen) {
            controller.close();
          } else {
            controller.open();
          }
        },
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: selected
                ? isProfile
                      ? AppColors.cascadingWhite
                      : AppColors.base0
                : AppColors.cascadingWhite,
            border: Border.all(
              color: isProfile || !selected
                  ? AppColors.crystalBell
                  : AppColors.blueGenie,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    selected ? value : hint,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: selected
                          ? isProfile
                                ? AppColors.base100
                                : AppColors.blueGenie
                          : AppColors.uniformGrey,
                    ),
                  ),
                ),
                SvgPicture.asset(
                  AppIcons.arrowDown,
                  height: 16,
                  width: 16,
                  colorMapper: const IconColorMapper.filled(
                    color: AppColors.uniformGrey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_fonts.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/parsers/icon_color_mapper.dart';
import '../../../../core/widgets/buttons/main_button.dart';
import '../../../../routing/app_router.dart';

class RegistrationCard extends StatelessWidget {
  final VoidCallback onTap;
  const RegistrationCard({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: BorderRadius.circular(12),
    child: ColoredBox(
      color: AppColors.fairway,
      child: SizedBox(
        height: 160,
        child: Stack(
          children: [
            Positioned(
              top: -10,
              right: 30,
              child: SvgPicture.asset(
                AppIcons.booky,
                height: 100,
                width: 100,
                colorMapper: const IconColorMapper.filled(
                  color: AppColors.base0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: Text(
                      'Начните учиться с РостОК',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.base0,
                        fontFamily: AppFonts.nyght,
                      ),
                    ),
                  ),
                  Spacer(flex: 6),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 20.0),
                child: MainButton(
                  child: const Text(
                    'Войти или зарегистрироваться',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  onPressed: () async {
                    await context.router.push(const AuthorizationRoute());
                  },
                  type: MainButtonType.secondary,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

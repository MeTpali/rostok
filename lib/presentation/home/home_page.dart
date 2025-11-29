import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_icons.dart';
import '../../core/constants/app_keys.dart';
import '../../routing/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final _routes = const [
    MainShellRoute(),
    MastersShellRoute(),
    ChatShellRoute(),
    ArticlesShellRoute(),
  ];

  final List<PageRouteInfo> _initialRoutes = const [
    MainRoute(),
    MastersRoute(),
    ChatRoute(),
    LibraryRoute(),
  ];

  @override
  Widget build(BuildContext context) => AutoTabsRouter(
    homeIndex: 2,
    routes: _routes,
    builder: (context, child) {
      final tabsRouter = AutoTabsRouter.of(context);
      return Scaffold(
        key: AppKeys.rootScaffoldKey,
        body: child,
        extendBody: true,
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
          child: BottomNavigationBar(
            elevation: 0,
            useLegacyColorScheme: false,
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.potBlack,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) async => _onTap(index, tabsRouter),
            selectedLabelStyle: const TextStyle(
              color: AppColors.transparentBlue,
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelStyle: TextStyle(
              color: AppColors.transparentBlue.withAlpha(123),
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
            items: [
              BottomNavigationBarItem(
                label: 'Главная',
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: SvgPicture.asset(
                    AppIcons.home,
                    colorFilter: _getIconColor(0, tabsRouter.activeIndex),
                    height: 26,
                    width: 26,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Преподаватели',
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: SvgPicture.asset(
                    AppIcons.grid,
                    colorFilter: _getIconColor(1, tabsRouter.activeIndex),
                    height: 26,
                    width: 26,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'Чат',
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: SvgPicture.asset(
                    AppIcons.chat,
                    colorFilter: _getIconColor(2, tabsRouter.activeIndex),
                    height: 26,
                    width: 26,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: 'База знаний',
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: SvgPicture.asset(
                    AppIcons.book,
                    colorFilter: _getIconColor(3, tabsRouter.activeIndex),
                    height: 26,
                    width: 26,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );

  Future<void> _onTap(int index, TabsRouter tabsRouter) async {
    if (index != tabsRouter.activeIndex) {
      tabsRouter.setActiveIndex(index);
      return;
    }

    await tabsRouter
        .innerRouterOf<StackRouter>(_routes[index].routeName)
        ?.replaceAll([_initialRoutes[index]]);
  }

  ColorFilter _getIconColor(int index, int activeIndex) => ColorFilter.mode(
    activeIndex == index
        ? AppColors.transparentBlue
        : AppColors.transparentBlue.withAlpha(123),
    BlendMode.srcIn,
  );
}

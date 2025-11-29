import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../domain/models/universe/universe_answer/universe_answer.dart';
import '../presentation/articles/pages/article_page.dart';
import '../presentation/articles/pages/articles_page.dart';
import '../presentation/articles/pages/articles_shell_page.dart';
import '../presentation/articles/pages/library_page.dart';
import '../presentation/chat/pages/chat_page.dart';
import '../presentation/chat/pages/chat_shell_page.dart';
import '../presentation/day_card/pages/day_card_page.dart';
import '../presentation/home/app_loading_page.dart';
import '../presentation/home/home_page.dart';
import '../presentation/main/pages/main_page.dart';
import '../presentation/main/pages/main_shell_page.dart';
import '../presentation/masters/pages/master_page.dart';
import '../presentation/masters/pages/masters_page.dart';
import '../presentation/masters/pages/masters_shell_page.dart';
import '../presentation/masters/pages/video_page.dart';
import '../presentation/profile/pages/auth/auth_page.dart';
import '../presentation/profile/pages/auth/registration_page.dart';
import '../presentation/profile/pages/profile/add_balanced_page.dart';
import '../presentation/profile/pages/profile/payment_method_page.dart';
import '../presentation/profile/pages/profile/profile_page.dart';
import '../presentation/profile/pages/profile/profile_settings_page.dart';
import '../presentation/universe/pages/universe_answer_page.dart';
import '../presentation/universe/pages/universe_page.dart';
import '../presentation/universe/pages/universe_question_settings_page.dart';
import '../presentation/universe/pages/universe_shell_page.dart';
import 'guards/auth_guard.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(initial: true, page: AppLoadingRoute.page),
    AutoRoute(
      page: HomeRoute.page,
      children: [
        AutoRoute(
          initial: true,
          page: MainShellRoute.page,
          children: [
            AutoRoute(initial: true, page: MainRoute.page),
            AutoRoute(page: DayCardRoute.page),
            AutoRoute(page: ProfileSettingsRoute.page),
            AutoRoute(page: ProfileRoute.page, guards: [AuthGuard()]),
            AutoRoute(page: PaymentMethodRoute.page),
            AutoRoute(page: AddBalancedRoute.page),
            AutoRoute(page: UniverseQuestionSettingsRoute.page),
            AutoRoute(page: UniverseAnswerRoute.page),
          ],
        ),
        AutoRoute(
          page: MastersShellRoute.page,
          children: [
            AutoRoute(initial: true, page: MastersRoute.page),
            AutoRoute(page: DayCardRoute.page),
            AutoRoute(page: ArticleRoute.page),
          ],
        ),
        AutoRoute(
          page: UniverseShellRoute.page,
          children: [
            AutoRoute(page: UniverseRoute.page),
            AutoRoute(page: DayCardRoute.page),
            AutoRoute(initial: true, page: UniverseQuestionSettingsRoute.page),
            AutoRoute(page: UniverseAnswerRoute.page),
          ],
        ),
        AutoRoute(
          page: ChatShellRoute.page,
          children: [
            AutoRoute(initial: true, page: ChatRoute.page),
            AutoRoute(page: DayCardRoute.page),
          ],
        ),
        AutoRoute(
          page: ArticlesShellRoute.page,
          children: [
            AutoRoute(initial: true, page: LibraryRoute.page),
            AutoRoute(page: DayCardRoute.page),
            AutoRoute(page: ArticlesRoute.page),
            AutoRoute(page: ArticleRoute.page),
          ],
        ),
      ],
    ),
    AutoRoute(page: AuthorizationRoute.page),
    AutoRoute(page: MasterRoute.page),
    AutoRoute(page: ArticleRoute.page),
    AutoRoute(page: VideoRoute.page),
  ];
}

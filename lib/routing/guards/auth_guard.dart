import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../data/repositories/token/token.dart';
import '../../di/di.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final result = await getIt<TokenRepository>().fetchToken();

    result.when(
      success: (_) => resolver.next(),

      error: (_) {
        final ctx = router.navigatorKey.currentContext;
        if (ctx != null) {
          ScaffoldMessenger.of(ctx).showSnackBar(
            const SnackBar(content: Text('Войдите, чтобы открыть профиль')),
          );
        }
        resolver.next(false);
      },
    );
  }
}

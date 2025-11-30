import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_images.dart';
import '../../routing/app_router.dart';
import '../profile/providers/profile_di.dart';

@RoutePage()
class AppLoadingPage extends ConsumerWidget {
  const AppLoadingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => FutureBuilder<bool>(
    future: Future(() async {
      await Future<void>.delayed(const Duration(seconds: 1));

      final res = await ref.read(ProfileDi.authProvider.notifier).tryLogin();
      return res;
    }),
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        unawaited(context.router.replaceAll([HomeRoute()]));
      }
      return ColoredBox(
        color: AppColors.base0,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Image.asset(AppImages.rostok, fit: BoxFit.contain),
          ),
        ),
      );
    },
  );
}

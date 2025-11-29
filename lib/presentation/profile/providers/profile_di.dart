// presentation/profile/providers/profile_di.dart
import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/repositories/accounts/accounts_repository.dart';
import '../../../data/repositories/auth/auth_repository.dart';
import '../../../data/repositories/token/token.dart';
import '../../../di/di.dart';
import 'auth/auth_notifier.dart';
import 'auth/auth_state.dart';
import 'profile/profile_notifier.dart';
import 'profile/profile_state.dart';

abstract class ProfileDi {
  // репозитории
  static final authRepositoryProvider = Provider<AuthRepository>(
    (ref) => getIt<AuthRepository>(),
  );
  static final tokenRepositoryProvider = Provider<TokenRepository>(
    (ref) => getIt<TokenRepository>(),
  );
  static final accountsRepositoryProvider = Provider<AccountsRepository>(
    (ref) => getIt<AccountsRepository>(),
  );

  // ЕДИНСТВЕННЫЙ authProvider во всём приложении
  static final authProvider = StateNotifierProvider<AuthNotifier, AuthState>(
    (ref) => AuthNotifier(
      authRepository: ref.read(authRepositoryProvider),
      tokenRepository: ref.read(tokenRepositoryProvider),
    ),
  );

  // profileProvider зависит ровно от этого authProvider
  static final profileProvider =
      StateNotifierProvider<ProfileNotifier, ProfileState>((ref) {
        final notifier = ProfileNotifier(
          accountsRepository: ref.read(accountsRepositoryProvider),
          authNotifier: ref.read(authProvider.notifier),
        );
        unawaited(notifier.init());
        return notifier;
      });
}

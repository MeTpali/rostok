import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../data/repositories/accounts/accounts_remote_repository.dart';
import '../../data/repositories/accounts/accounts_repository.dart';
import '../../data/repositories/auth/auth_remote_repository.dart';
import '../../data/repositories/auth/auth_repository.dart';
import '../../data/repositories/token/sessionid_repository.dart';
import '../../data/repositories/token/token.dart';
import '../../data/services/accounts/accounts_remote_service.dart';
import '../../data/services/auth/auth_service.dart';
import '../data/repositories/library/library_remote_repository.dart';
import '../data/repositories/library/library_repository.dart';
import '../data/repositories/masters/masters_remote_repository.dart';
import '../data/repositories/masters/masters_repository.dart';
import '../data/repositories/practices/practices_remote_repository.dart';
import '../data/repositories/practices/practices_repository.dart';
import '../data/repositories/topics/topics_remote_repository.dart';
import '../data/repositories/topics/topics_repository.dart';
import '../data/repositories/universe/universe_remote_repository.dart';
import '../data/repositories/universe/universe_repository.dart';
import '../data/services/masters/masters_remote_service.dart';
import '../data/services/practices/practices_remote_service.dart';
import '../data/services/topics/topics_remote_service.dart';
import 'di.dart';

void setupProdRepos() {
  getIt.registerLazySingleton<SessionidRepository>(
    () => SessionidRepository(getIt<FlutterSecureStorage>()),
  );

  /// Auth repository
  getIt.registerLazySingleton<AuthService>(() => AuthService(getIt<Dio>()));
  getIt.registerLazySingleton<AccountsRemoteService>(
    () => AccountsRemoteService(getIt<Dio>()),
  );

  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRemoteRepository(
      service: getIt<AuthService>(),
      tokenRepository: getIt<TokenRepository>(),
    ),
  );
  getIt.registerLazySingleton<AccountsRepository>(
    () => AccountsRemoteRepository(
      service: getIt<AccountsRemoteService>(),
      tokenRepository: getIt<TokenRepository>(),
    ),
  );

  /// Masters
  getIt.registerLazySingleton<MastersRemoteService>(
    () => MastersRemoteService(getIt<Dio>()),
  );
  getIt.registerSingleton<MastersRepository>(
    MastersRemoteRepository(mastersService: getIt<MastersRemoteService>()),
  );

  /// Topics
  getIt.registerLazySingleton<TopicsRemoteService>(
    () => TopicsRemoteService(getIt<Dio>()),
  );
  getIt.registerSingleton<TopicsRepository>(
    TopicsRemoteRepository(topicsService: getIt<TopicsRemoteService>()),
  );

  /// Prctices
  getIt.registerLazySingleton<PracticesRemoteService>(
    () => PracticesRemoteService(getIt<Dio>()),
  );
  getIt.registerSingleton<PracticesRepository>(
    PracticesRemoteRepository(
      practicesService: getIt<PracticesRemoteService>(),
    ),
  );

  /// Knowledge base
  getIt.registerSingleton<LibraryRepository>(const LibraryRemoteRepository());

  /// Universe
  getIt.registerSingleton<UniverseRepository>(const UniverseRemoteRepository());
}

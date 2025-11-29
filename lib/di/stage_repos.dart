import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import '../../data/repositories/accounts/accounts_repository.dart';
import '../../data/repositories/auth/auth_repository.dart';
import '../../data/repositories/auth/auth_test_repository.dart';
import '../../data/repositories/token/sessionid_repository.dart';
import '../../data/repositories/token/token.dart';
import '../data/repositories/accounts/accounts_test_repository.dart';
import '../data/repositories/library/library_repository.dart';
import '../data/repositories/library/library_test_repository.dart';
import '../data/repositories/masters/masters_repository.dart';
import '../data/repositories/masters/masters_test_repository.dart';
import '../data/repositories/practices/practices_repository.dart';
import '../data/repositories/practices/practices_test_repository.dart';
import '../data/repositories/token/token_test_repository.dart';
import '../data/repositories/topics/topics_repository.dart';
import '../data/repositories/topics/topics_test_repository.dart';
import '../data/repositories/universe/universe_repository.dart';
import '../data/repositories/universe/universe_test_repository.dart';
import '../data/services/library/library_test_service.dart';
import '../data/services/masters/masters_test_service.dart';
import '../data/services/universe/universe_test_service.dart';

void setupStageRepos() {
  final getIt = GetIt.instance;

  getIt.registerLazySingleton<TokenRepository>(() => TokenTestRepository());

  getIt.registerLazySingleton<SessionidRepository>(
    () => SessionidRepository(getIt<FlutterSecureStorage>()),
  );

  /// Auth repository
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthTestRepository(getIt<TokenRepository>()),
  );

  getIt.registerLazySingleton<AccountsRepository>(
    () => AccountsTestRepository(),
  );

  /// Masters
  getIt.registerLazySingleton<MastersTestService>(() => MastersTestService());
  getIt.registerSingleton<MastersRepository>(
    MastersTestRepository(mastersService: getIt<MastersTestService>()),
  );

  /// Topics
  getIt.registerSingleton<TopicsRepository>(const TopicsTestRepository());

  /// Prctices
  getIt.registerSingleton<PracticesRepository>(const PracticesTestRepository());

  /// Knowledge base
  getIt.registerLazySingleton<LibraryTestService>(() => LibraryTestService());
  getIt.registerSingleton<LibraryRepository>(
    LibraryTestRepository(libraryService: getIt<LibraryTestService>()),
  );

  /// Universe
  getIt.registerLazySingleton<UniverseTestService>(
    () => const UniverseTestService(),
  );
  getIt.registerSingleton<UniverseRepository>(
    UniverseTestRepository(universeTestService: getIt<UniverseTestService>()),
  );
}

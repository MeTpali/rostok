import '../../../core/entities/result/result.dart';

abstract class TokenRepository {
  /// Запрос на получение токена.
  Future<Result<String>> fetchToken();

  /// Запрос на запись токена.
  Future<Result<void>> setToken(String token);

  /// Запрос на удаление токена.
  Future<Result<void>> deleteToken();
}

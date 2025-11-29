import '../../../core/entities/result/result.dart';
import 'token.dart';

class TokenTestRepository implements TokenRepository {
  TokenTestRepository();
  String _token = '';

  @override
  Future<Result<void>> deleteToken() async {
    _token = '';
    return const Result.success(null);
  }

  @override
  Future<Result<String>> fetchToken() async => _token.isEmpty
      ? const Result.error('Необходимо авторизоваться')
      : Result.success(_token);

  @override
  Future<Result<void>> setToken(String token) async {
    _token = token;
    return const Result.success(null);
  }
}

import '../../../core/entities/result/result.dart';
import '../../../domain/models/user/avatar_info.dart';
import '../../../domain/models/user/user_model.dart';
import '../../services/accounts/accounts_remote_service.dart';
import '../token/token.dart';
import 'accounts_repository.dart';

class AccountsRemoteRepository implements AccountsRepository {
  final AccountsRemoteService _service;
  final TokenRepository _tokenRepository;

  const AccountsRemoteRepository({
    required AccountsRemoteService service,
    required TokenRepository tokenRepository,
  }) : _service = service,
       _tokenRepository = tokenRepository;

  @override
  Future<Result<UserModel>> fetchMe() async {
    final tokenRes = await _tokenRepository.fetchToken();
    return tokenRes.when(
      success: (token) async {
        final resp = await _service.fetchMe(token: token);
        return resp.when(
          success: Result.success,
          error: (e) => Result.error(e.message),
        );
      },
      error: (_) => const Result.error('Необходимо авторизоваться'),
    );
  }

  @override
  Future<Result<UserModel>> updateMe({required UserModel user}) async {
    final tokenRes = await _tokenRepository.fetchToken();
    return tokenRes.when(
      success: (token) async {
        final resp = await _service.updateMe(token: token, user: user);
        return resp.when(
          success: Result.success,
          error: (e) => Result.error(e.message),
        );
      },
      error: (_) => const Result.error('Необходимо авторизоваться'),
    );
  }

  @override
  Future<Result<AvatarInfo>> uploadAvatar({required String filePath}) async {
    final tokenRes = await _tokenRepository.fetchToken();
    return tokenRes.when(
      success: (token) async {
        final resp = await _service.uploadAvatar(
          token: token,
          filePath: filePath,
        );
        return resp.when(
          success: Result.success,
          error: (e) => Result.error(e.message),
        );
      },
      error: (_) => const Result.error('Необходимо авторизоваться'),
    );
  }

  @override
  Future<Result<void>> deleteAvatar({required String key}) async {
    final tokenRes = await _tokenRepository.fetchToken();
    return tokenRes.when(
      success: (token) async {
        final resp = await _service.deleteAvatar(token: token, key: key);
        return resp.when(
          success: (_) => const Result.success(null),
          error: (e) => Result.error(e.message),
        );
      },
      error: (_) => const Result.error('Необходимо авторизоваться'),
    );
  }
}

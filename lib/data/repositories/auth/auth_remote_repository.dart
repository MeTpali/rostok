import '../../../core/entities/response_result/response_result.dart';
import '../../../core/entities/result/result.dart';
import '../../../domain/models/auth/auth_responses.dart';
import '../../services/auth/auth_service.dart';
import '../token/token.dart';
import 'auth_repository.dart';

class AuthRemoteRepository implements AuthRepository {
  final AuthService _service;
  final TokenRepository _tokenRepository;

  const AuthRemoteRepository({
    required AuthService service,
    required TokenRepository tokenRepository,
  }) : _service = service,
       _tokenRepository = tokenRepository;

  @override
  Future<Result<SendCodeResponse>> sendCode({required String phone}) async {
    final ResponseResult<SendCodeResponse> resp = await _service.sendCode(
      phone: phone,
    );

    return resp.when(
      success: (data) => Result.success(data),
      error: (err) => Result.error(err.message),
    );
  }

  @override
  Future<Result<VerifyCodeResponse>> verifyCode({
    required String phone,
    required String code,
  }) async {
    final ResponseResult<VerifyCodeResponse> resp = await _service.verifyCode(
      phone: phone,
      code: code,
    );

    return await resp.when(
      success: (data) async {
        final save = await _tokenRepository.setToken(data.token);
        return save.when(
          success: (_) => Result.success(data),
          error: (msg) => Result.error(msg),
        );
      },
      error: (err) => Result.error(err.message),
    );
  }
}

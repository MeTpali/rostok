import '../../../core/entities/result/result.dart';
import '../../../domain/models/auth/auth_responses.dart';

abstract class AuthRepository {
  Future<Result<SendCodeResponse>> sendCode({required String phone});

  Future<Result<VerifyCodeResponse>> verifyCode({
    required String phone,
    required String code,
  });
}

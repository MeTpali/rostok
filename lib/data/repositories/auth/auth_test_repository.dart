import 'dart:async';

import '../../../core/entities/result/result.dart';

import '../../../domain/models/auth/auth_responses.dart';
import '../token/token.dart';
import 'auth_repository.dart';

class AuthTestRepository implements AuthRepository {
  final TokenRepository _tokenRepository;
  AuthTestRepository(this._tokenRepository);

  static const _delay = Duration(milliseconds: 600);

  String _phone = '+7 (000) 000-00-00';

  @override
  Future<Result<SendCodeResponse>> sendCode({required String phone}) async {
    await Future<void>.delayed(_delay);
    _phone = phone;
    return Result.success(
      SendCodeResponse(
        message: 'Код подтверждения отправлен',
        phone: '+7${phone.replaceAll(RegExp(r'[^0-9]'), '').substring(1)}',
        expiresIn: 300,
      ),
    );
  }

  @override
  Future<Result<VerifyCodeResponse>> verifyCode({
    required String phone,
    required String code,
  }) async {
    await Future<void>.delayed(_delay);
    final _code = _phone
        .split('')
        .where((element) => int.tryParse(element) != null)
        .toList()
        .sublist(7, 11)
        .join();
    if (code == _code) {
      const token = 'test.jwt.token';
      final save = await _tokenRepository.setToken(token);
      return save.when(
        success: (_) => const Result.success(
          VerifyCodeResponse(
            userId: 16,
            userUuid: '00000000-0000-0000-0000-000000000000',
            token: token,
            message: 'Пользователь успешно зарегистрирован и авторизован',
          ),
        ),
        error: (msg) => Result.error(msg),
      );
    }

    return const Result.error('Неверный код. Попробуйте снова.');
  }
}

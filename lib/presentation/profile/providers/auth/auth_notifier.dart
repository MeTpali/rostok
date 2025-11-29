import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/entities/result/result.dart';
import '../../../../data/repositories/auth/auth_repository.dart';
import '../../../../data/repositories/token/token.dart';

import '../../../../domain/models/auth/auth_responses.dart';
import 'auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier({
    required AuthRepository authRepository,
    required TokenRepository tokenRepository,
  }) : _authRepository = authRepository,
       _tokenRepository = tokenRepository,
       super(const AuthState.idle());

  final AuthRepository _authRepository;
  final TokenRepository _tokenRepository;

  String _normalizePhone(String input) {
    final digits = input.replaceAll(RegExp(r'[^\d]'), '');
    if (digits.isEmpty) return digits;

    if (digits.length == 11 && digits.startsWith('7')) {
      return '8${digits.substring(1)}';
    }
    if (digits.length == 11 && digits.startsWith('8')) {
      return digits;
    }
    if (digits.length == 10) {
      return '8$digits';
    }
    return digits;
  }

  String? _extractPhoneFromState() => state.maybeWhen(
    sendingCode: (p) => p,
    codeSent: (p, _) => p,
    verifyingCode: (p) => p,
    error: (_, p) => p,
    orElse: () => null,
  );

  Future<Result<void>> sendCode(String rawPhone) async {
    final phone = _normalizePhone(rawPhone);
    if (phone.length != 11) {
      return const Result.error('Введите корректный номер телефона');
    }

    state = AuthState.sendingCode(phone: phone);

    final result = await _authRepository.sendCode(phone: phone);
    return result.when(
      success: (SendCodeResponse resp) {
        final seconds = resp.expiresIn;
        state = AuthState.codeSent(phone: resp.phone, expiresIn: seconds);
        return const Result.success(null);
      },
      error: (msg) {
        state = AuthState.error(message: msg, phone: phone);
        return Result.error(msg);
      },
    );
  }

  Future<Result<void>> resendCode() async {
    final phone = _extractPhoneFromState();
    if (phone == null) {
      return const Result.error('Невозможно отправить код: номер неизвестен');
    }
    return sendCode(phone);
  }

  Future<Result<void>> verifyCode(String code) async {
    final phone = _extractPhoneFromState();
    if (phone == null) {
      return const Result.error('Номер телефона неизвестен');
    }
    if (code.isEmpty) {
      return const Result.error('Введите код из SMS');
    }

    state = AuthState.verifyingCode(phone: phone);

    final result = await _authRepository.verifyCode(phone: phone, code: code);

    return result.when(
      success: (VerifyCodeResponse resp) {
        state = AuthState.authorized(
          token: resp.token,
          userId: resp.userId,
          userUuid: resp.userUuid,
        );
        return const Result.success(null);
      },
      error: (msg) {
        state = AuthState.error(message: msg, phone: phone);
        return Result.error(msg);
      },
    );
  }

  Future<bool> tryLogin() async {
    final tokenRes = await _tokenRepository.fetchToken();
    return tokenRes.when(
      success: (token) {
        state = AuthState.authorized(token: token);
        return true;
      },
      error: (_) {
        state = const AuthState.idle();
        return false;
      },
    );
  }

  Future<void> logoutLocal() async {
    await _tokenRepository.deleteToken();
    state = const AuthState.idle();
  }
}

import 'dart:async';
import 'package:dio/dio.dart';

import '../token/token.dart';

class InvalidTokenInterceptor extends Interceptor {
  final TokenRepository _tokenRepository;

  const InvalidTokenInterceptor({required TokenRepository tokenRepository})
    : _tokenRepository = tokenRepository;

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      await _tokenRepository.deleteToken();
    }
    handler.next(err);
  }
}

import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../../core/entities/result/result.dart';
import 'token.dart';

class SessionidRepository implements TokenRepository {
  final FlutterSecureStorage _storage;
  SessionidRepository(this._storage);

  final _key = 'session_id';

  String? _token;

  @override
  Future<Result<String>> fetchToken() async {
    if (_token != null) {
      return Result.success(_token!);
    }

    final token = await _storage.read(key: _key);

    if (token == null) {
      return const Result.error('Токен не найден');
    } else {
      return Result.success(token);
    }
  }

  @override
  Future<Result<void>> setToken(String token) async {
    try {
      await _storage.write(key: _key, value: token);
      _token = token;
      return const Result.success(null);
    } on PlatformException catch (e) {
      return Result.error(e.message ?? 'Ошибка');
    }
  }

  @override
  Future<Result<void>> deleteToken() async {
    try {
      await _storage.delete(key: _key);
      _token = null;
      return const Result.success(null);
    } on PlatformException catch (e) {
      return Result.error(e.message ?? 'Ошибка');
    }
  }
}

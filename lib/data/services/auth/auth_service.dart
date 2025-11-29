import 'package:dio/dio.dart';

import '../../../core/entities/response_result/response_result.dart';
import '../../../core/utils/dio.dart';
import '../../../domain/models/auth/auth_responses.dart';

class AuthService {
  final Dio _dio;
  const AuthService(this._dio);

  static const String _path = '/auth';

  Future<ResponseResult<SendCodeResponse>> sendCode({
    required String phone,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '$_path/send-code',
        data: {'phone': phone},
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          SendCodeResponse.fromJson(response.data!),
        );
      }

      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<SendCodeResponse>(e);
    }
  }

  Future<ResponseResult<VerifyCodeResponse>> verifyCode({
    required String phone,
    required String code,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '$_path/verify-code',
        data: {'phone': phone, 'code': code},
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(
          VerifyCodeResponse.fromJson(response.data!),
        );
      }

      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<VerifyCodeResponse>(e);
    }
  }
}

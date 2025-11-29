import 'package:dio/dio.dart';

import '../../../core/entities/response_result/response_result.dart';
import '../../../core/utils/dio.dart';
import '../../../domain/models/user/avatar_info.dart';
import '../../../domain/models/user/user_model.dart';

class AccountsRemoteService {
  final Dio _dio;
  const AccountsRemoteService(this._dio);

  static const String _path = '/profile';

  Future<ResponseResult<UserModel>> fetchMe({required String token}) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '$_path/me',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200) {
        final data = response.data;
        if (data == null) {
          return const ResponseResult.error(
            ResponseError.unexpected('no data'),
          );
        }
        return ResponseResult.success(UserModel.fromJson(data));
      } else {
        return ResponseResult.error(
          ResponseError.server('Server error', response.statusCode),
        );
      }
    } on DioException catch (e) {
      return DioUtils.handleDioException<UserModel>(e);
    }
  }

  Future<ResponseResult<UserModel>> updateMe({
    required String token,
    required UserModel user,
  }) async {
    try {
      final response = await _dio.put<Map<String, dynamic>>(
        '$_path/me',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
        data: user.toJson(),
      );

      if (response.statusCode == 200 && response.data != null) {
        return ResponseResult.success(UserModel.fromJson(response.data!));
      }
      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<UserModel>(e);
    }
  }

  Future<ResponseResult<AvatarInfo>> uploadAvatar({
    required String token,
    required String filePath,
  }) async {
    try {
      final fileName = filePath.split('/').last;
      final form = FormData.fromMap({
        'file': await MultipartFile.fromFile(filePath, filename: fileName),
      });

      final response = await _dio.post<Map<String, dynamic>>(
        '$_path/avatar',
        data: form,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
            'Content-Type': 'multipart/form-data',
          },
        ),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;
        if (data == null) {
          return const ResponseResult.error(
            ResponseError.unexpected('no data'),
          );
        }
        return ResponseResult.success(AvatarInfo.fromJson(data));
      } else {
        return ResponseResult.error(
          ResponseError.server('Server error', response.statusCode),
        );
      }
    } on DioException catch (e) {
      return DioUtils.handleDioException<AvatarInfo>(e);
    }
  }

  Future<ResponseResult<void>> deleteAvatar({
    required String token,
    required String key,
  }) async {
    try {
      final response = await _dio.delete<Map<String, dynamic>>(
        '$_path/avatar',
        queryParameters: {'key': key},
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200 || response.statusCode == 204) {
        return const ResponseResult.success(null);
      } else {
        return ResponseResult.error(
          ResponseError.server('Server error', response.statusCode),
        );
      }
    } on DioException catch (e) {
      return DioUtils.handleDioException<void>(e);
    }
  }

  Future<ResponseResult<String>> fetchSession() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/accounts/session',
      );

      if (response.statusCode == 200) {
        final sessionid = response.data?['sessionid'] as String?;
        if (sessionid == null || sessionid.isEmpty) {
          return const ResponseResult.error(
            ResponseError.unexpected('no sessionid'),
          );
        }
        return ResponseResult.success(sessionid);
      }

      return ResponseResult.error(
        ResponseError.server('Server error', response.statusCode),
      );
    } on DioException catch (e) {
      return DioUtils.handleDioException<String>(e);
    }
  }
}

import 'package:dio/dio.dart';

import '../../../core/entities/response_result/response_result.dart';
import '../../../core/utils/dio.dart';
import '../../../domain/models/masters/masters_list_model/masters_list_model.dart';

class MastersRemoteService {
  final Dio _dio;
  const MastersRemoteService(this._dio);
  final String path = '/masters';

  /// Запрос на получение списка мастеров.
  Future<ResponseResult<MastersListModel>> fetchMasters({
    required int page,
    required int limit,
    String? topic,
    String? practice,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>('$path');

      if (response.statusCode != null &&
          response.statusCode == 200 &&
          response.data != null) {
        return ResponseResult.success(
          MastersListModel.fromJson(response.data!),
        );
      } else {
        return ResponseResult.error(
          ResponseError.server('Server error', response.statusCode),
        );
      }
    } on DioException catch (e) {
      return DioUtils.handleDioException<MastersListModel>(e);
    }
  }
}

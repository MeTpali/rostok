import 'package:dio/dio.dart';

import '../../../core/entities/response_result/response_result.dart';
import '../../../core/parsers/data_parser.dart';
import '../../../core/utils/dio.dart';

class TopicsRemoteService {
  final Dio _dio;
  const TopicsRemoteService(this._dio);
  final String path = '/topics';

  /// Запрос на получение списка тем.
  Future<ResponseResult<List<String>>> fetchTopics() async {
    try {
      final response = await _dio.get<Map<String, dynamic>>('$path');

      if (response.statusCode != null && response.statusCode == 200) {
        if (response.data == null || response.data!['topics'] == null) {
          return const ResponseResult.error(
            ResponseError.unexpected('Список тем пуст'),
          );
        }

        return ResponseResult.success(
          DataParser.listOfNullableStringsToNonNullList(
            response.data!['topics'],
          ),
        );
      } else {
        return ResponseResult.error(
          ResponseError.server('Server error', response.statusCode),
        );
      }
    } on DioException catch (e) {
      return DioUtils.handleDioException<List<String>>(e);
    }
  }
}

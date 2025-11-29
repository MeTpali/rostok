import '../../../core/entities/result/result.dart';

abstract class TopicsRepository {
  /// Запрос на получение списка тем.
  Future<Result<List<String>>> fetchTopics();
}

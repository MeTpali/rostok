import '../../../core/entities/result/result.dart';

abstract class PracticesRepository {
  /// Запрос на получение списка практик.
  Future<Result<List<String>>> fetchPractices();
}

import '../../../core/entities/result/result.dart';
import '../../../domain/models/universe/universe_answer/universe_answer.dart';

abstract class UniverseRepository {
  /// Запрос во вселенную.
  Future<Result<UniverseAnswer>> makeUniverseRequest({
    required String query,
    int? day,
    int? month,
    int? year,
    String? time,
    String? country,
    String? city,
  });
}

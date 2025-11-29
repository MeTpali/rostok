import '../../../core/entities/result/result.dart';
import '../../../domain/models/universe/universe_answer/universe_answer.dart';
import '../../services/universe/universe_test_service.dart';
import 'universe_repository.dart';

class UniverseTestRepository implements UniverseRepository {
  final UniverseTestService _universeTestService;
  const UniverseTestRepository({
    required UniverseTestService universeTestService,
  }) : _universeTestService = universeTestService;

  @override
  Future<Result<UniverseAnswer>> makeUniverseRequest({
    required String query,
    int? day,
    int? month,
    int? year,
    String? time,
    String? country,
    String? city,
  }) async {
    final answer = await _universeTestService.makeUniverseRequest(
      day: day,
      month: month,
      year: year,
      time: time,
      country: country,
      city: city,
      query: query,
    );

    return Result.success(answer);
  }
}

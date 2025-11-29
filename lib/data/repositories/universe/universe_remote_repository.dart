import '../../../core/entities/result/result.dart';
import '../../../domain/models/universe/universe_answer/universe_answer.dart';
import 'universe_repository.dart';

class UniverseRemoteRepository implements UniverseRepository {
  const UniverseRemoteRepository();

  @override
  Future<Result<UniverseAnswer>> makeUniverseRequest({
    required String query,
    int? day,
    int? month,
    int? year,
    String? time,
    String? country,
    String? city,
  }) {
    // TODO: implement makeUniverseRequest
    throw UnimplementedError();
  }
}

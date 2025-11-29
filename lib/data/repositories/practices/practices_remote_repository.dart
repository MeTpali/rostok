import '../../../core/entities/result/result.dart';
import '../../services/practices/practices_remote_service.dart';
import 'practices_repository.dart';

class PracticesRemoteRepository implements PracticesRepository {
  final PracticesRemoteService _practicesService;
  const PracticesRemoteRepository({
    required PracticesRemoteService practicesService,
  }) : _practicesService = practicesService;

  @override
  Future<Result<List<String>>> fetchPractices() async {
    final response = await _practicesService.fetchPractices();

    return response.when(
      success: (practices) => Result.success(practices),
      error: (error) => Result.error(error.message),
    );
  }
}

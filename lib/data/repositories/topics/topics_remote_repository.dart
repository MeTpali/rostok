import '../../../core/entities/result/result.dart';
import '../../services/topics/topics_remote_service.dart';
import 'topics_repository.dart';

class TopicsRemoteRepository implements TopicsRepository {
  final TopicsRemoteService _topicsService;
  const TopicsRemoteRepository({required TopicsRemoteService topicsService})
    : _topicsService = topicsService;

  @override
  Future<Result<List<String>>> fetchTopics() async {
    final response = await _topicsService.fetchTopics();

    return response.when(
      success: (topics) => Result.success(topics),
      error: (error) => Result.error(error.message),
    );
  }
}

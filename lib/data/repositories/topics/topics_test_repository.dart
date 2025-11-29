import '../../../core/entities/result/result.dart';
import 'topics_repository.dart';

class TopicsTestRepository implements TopicsRepository {
  const TopicsTestRepository();

  final _delay = const Duration(seconds: 2);

  final _topics = const ['Деньги', 'Любовь', 'Здоровье', 'Работа', 'Семья'];

  @override
  Future<Result<List<String>>> fetchTopics() async {
    await Future<void>.delayed(_delay);
    return Result.success(_topics);
  }
}

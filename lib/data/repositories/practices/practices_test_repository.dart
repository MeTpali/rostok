import '../../../core/entities/result/result.dart';
import 'practices_repository.dart';

class PracticesTestRepository implements PracticesRepository {
  const PracticesTestRepository();

  final _delay = const Duration(seconds: 2);

  final _practices = const [
    'Таро',
    'Астрология',
    'Нумерология',
    'Чары',
    'Гемотерапия',
    'Ароматерапия',
    'Другое',
  ];

  @override
  Future<Result<List<String>>> fetchPractices() async {
    await Future<void>.delayed(_delay);
    return Result.success(_practices);
  }
}

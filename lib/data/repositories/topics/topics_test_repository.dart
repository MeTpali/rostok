import '../../../core/entities/result/result.dart';
import 'topics_repository.dart';

class TopicsTestRepository implements TopicsRepository {
  const TopicsTestRepository();

  final _delay = const Duration(seconds: 2);

  final _topics = const <String>[
    'Математика',
    'Алгебра',
    'Геометрия',
    'Физика',
    'Химия',
    'Биология',
    'Информатика',
    'Программирование',
    'Русский язык',
    'Литература',
    'Английский язык',
    'Немецкий язык',
    'Французский язык',
    'Испанский язык',
    'История',
    'Обществознание',
    'География',
    'Экономика',
    'ЕГЭ',
    'ОГЭ',
    'Олимпиадная математика',
    'IELTS',
    'TOEFL',
    'FCE',
    'Финансовая грамотность',
  ];

  @override
  Future<Result<List<String>>> fetchTopics() async {
    await Future<void>.delayed(_delay);
    return Result.success(_topics);
  }
}

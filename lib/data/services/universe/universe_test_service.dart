import '../../../domain/models/universe/universe_answer/universe_answer.dart';

class UniverseTestService {
  const UniverseTestService();

  final _delay = const Duration(seconds: 2);

  Future<UniverseAnswer> makeUniverseRequest({
    required String query,
    int? day,
    int? month,
    int? year,
    String? time,
    String? country,
    String? city,
  }) async {
    await Future<void>.delayed(_delay);

    return const UniverseAnswer(
      sunSign: 'Весы',
      moonSign: 'Рыбы',
      ascendent: 'Лео',
      answer:
          'Сегодняшний день идеально подходит для творческих начинаний. Ваша интуиция обострится, что делает этот день прекрасным для личных проектов. Сохраняйте баланс в отношениях и избегайте конфликтов',
    );
  }
}

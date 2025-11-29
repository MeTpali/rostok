import '../../../domain/models/articles/topic/topic.dart';
import '../../../domain/models/masters/master_comment/master_comment.dart';
import '../../../domain/models/masters/master_model/master_model.dart';
import '../../../domain/models/masters/master_profile/master_profile.dart';
import '../../../domain/models/masters/masters_list_model/masters_list_model.dart';

class MastersTestService {
  MastersTestService();

  final _delay = const Duration(seconds: 1);
  final _mastersCount = 100;

  final _masters = const [
    MasterModel(
      id: 1,
      firstName: 'Тайлер',
      lastName: 'Дерден',
      about: 'Таро, Астрология, Семья',
      birthDate: '1992-03-03',
      birthTime: '10:20:00',
      gender: null,
      birthCity: 'Санкт-Петербург',
    ),
    MasterModel(
      id: 2,
      firstName: 'Шарль',
      lastName: 'Леклер',
      about: 'Таро, Астрология, Семья',
      birthDate: '1993-04-04',
      birthTime: '11:30:00',
      gender: null,
      birthCity: 'Новосибирск',
    ),
    MasterModel(
      id: 3,
      firstName: 'Макс',
      lastName: 'Ферстаппен',
      about: 'Таро, Астрология',
      birthDate: '1994-05-05',
      birthTime: '12:40:00',
      gender: null,
      birthCity: 'Екатеринбург',
    ),
    MasterModel(
      id: 4,
      firstName: 'Шинобу',
      lastName: 'Кочо',
      about: 'Таро, Астрология, Семья',
      birthDate: '1991-02-02',
      birthTime: '09:10:00',
      gender: 'Ж',
      birthCity: 'Москва',
    ),
    MasterModel(
      id: 5,
      firstName: 'Билли',
      lastName: 'Дерден',
      about: 'Таро, Астрология, Семья',
      birthDate: '1995-06-06',
      birthTime: '13:50:00',
      gender: null,
      birthCity: 'Казань',
    ),
  ];

  /// Запрос на получение списка мастеров.
  Future<MastersListModel> fetchMasters({
    required int page,
    required int limit,
    String? topic,
    String? practice,
  }) async {
    await Future<void>.delayed(_delay);

    final mastersList = <MasterModel>[];
    final start = page * limit;
    final end = (page + 1) * limit;
    if (start > _mastersCount) {
      return MastersListModel(
        masters: mastersList,
        total: mastersList.length,
        page: page,
        limit: limit,
        totalPages: (_mastersCount ~/ limit) + 1,
      );
    }

    for (int i = start; i < end; i++) {
      mastersList.add(_masters[i % _masters.length].copyWith(id: i));
    }

    return MastersListModel(
      masters: mastersList,
      total: mastersList.length,
      page: page,
      limit: limit,
      totalPages: (_mastersCount ~/ limit) + 1,
    );
  }

  final _masterProfile = const MasterProfile(
    id: 1,
    firstName: '五条',
    lastName: '悟',
    description:
        'Повседневная практика показывает, что реализация намеченных плановых заданий обеспечивает широкому кругу (специалистов) участие в формировании новых предложений. Равным образом постоянное информационно-пропагандистское обеспечение нашей деятельности в значительной степени обуславливает создание системы обучения кадров, соответствует насущным потребностям.',
    url:
        'https://media.2x2tv.ru/content/images/size/w1440h810/2024/10/Satoru_Gojo_arrives_on_the_battlefield_28Anime29-2.jpg',
    videoUrl:
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    isOnline: true,
    rating: 4.7,
    reviewsCount: 234,
    articlesCount: 41,
  );

  Future<MasterProfile> fetchMaster({required int id}) async {
    await Future<void>.delayed(_delay);
    return _masterProfile.copyWith(id: id);
  }

  final _comments = <MasterComment>[
    MasterComment(
      name: 'Марина',
      dateTime: DateTime(2025, 1, 12, 14, 23),
      star: 5,
      topics: ['совместимость', 'отношения'],
      descrption:
          'Очень глубокий разбор! Даже не ожидала, что можно настолько точно описать ситуацию между мной и партнёром. После консультации стало намного спокойнее и понятнее, куда двигаться.',
    ),
    MasterComment(
      name: 'Антон',
      dateTime: DateTime(2025, 1, 3, 10, 47),
      star: 4,
      topics: ['финансы', 'персональный расклад'],
      descrption:
          'Получил ответы на важные вопросы по финансам. Не всё совпало, но направление и советы реально помогли. Благодарю за внимательность и аккуратный подход.',
    ),
    MasterComment(
      name: 'Людмила',
      dateTime: DateTime(2024, 12, 27, 19, 10),
      star: 5,
      topics: ['таро', 'самопознание'],
      descrption:
          'Очень мягкая энергетика и невероятно точные попадания! Расклад помог разобраться в причинах внутреннего напряжения. После консультации прям выдохнула.',
    ),
    MasterComment(
      name: 'Игорь',
      dateTime: DateTime(2025, 2, 2, 9, 32),
      star: 5,
      topics: ['карьера', 'предназначение'],
      descrption:
          'Все рекомендации по карьерному пути оказались очень точными, как будто человек знал мою историю заранее. Помогли осознать сильные стороны и зону роста.',
    ),
    MasterComment(
      name: 'Екатерина',
      dateTime: DateTime(2025, 1, 25, 16, 05),
      star: 3,
      topics: ['совместимость'],
      descrption:
          'Информация интересная, но местами слишком обобщённая. Возможно, я ожидала большего персонального разбора. Но в целом консультация полезная.',
    ),
    MasterComment(
      name: 'Дарья',
      dateTime: DateTime(2024, 11, 30, 12, 41),
      star: 5,
      topics: ['отношения', 'таро', 'психология'],
      descrption:
          'Обалденная консультация! Сочетание таро и психологического подхода — просто топ. Поняла, почему встречаются одни и те же сценарии в отношениях.',
    ),
    MasterComment(
      name: 'Оксана',
      dateTime: DateTime(2025, 1, 18, 21, 00),
      star: 4,
      topics: ['родовые программы', 'энергетика'],
      descrption:
          'Глубокая работа, после которой даже физически почувствовала облегчение. В какой-то момент было тяжеловато, но результат стоил того.',
    ),
    MasterComment(
      name: 'Владимир',
      dateTime: DateTime(2025, 2, 15, 8, 52),
      star: 5,
      topics: ['персональный гороскоп'],
      descrption:
          'Очень профессионально! Гороскоп составлен детально, много полезных инсайтов. Теперь намного понятнее, как планировать год.',
    ),
    MasterComment(
      name: 'Светлана',
      dateTime: DateTime(2025, 1, 6, 18, 12),
      star: 4,
      topics: ['карма', 'самопознание'],
      descrption:
          'Консультация помогла увидеть причины повторяющихся ситуаций. Не ожидала, что можно так тонко объяснить внутренние процессы.',
    ),
    MasterComment(
      name: 'Кристина',
      dateTime: DateTime(2024, 12, 5, 13, 58),
      star: 5,
      topics: ['женская энергия', 'отношения'],
      descrption:
          'Очень тёплый контакт! После работы почувствовала мощный прилив женской энергии и уверенности. Большое спасибо за такой бережный подход.',
    ),
  ];

  Future<List<MasterComment>> fetchComments({required int masterId}) async {
    await Future<void>.delayed(_delay);
    return _comments;
  }

  final _topics = const <Topic>[
    Topic(
      id: 1,
      title: 'Тени знаков: что скрывает ваша карта',
      description:
          'Каждый Аркан имеет свет и тень. В этой статье мы разберём, какие скрытые стороны вашей личности проявляются в тёмной стороне карт и как трансформировать их в силу.',
    ),
    Topic(
      id: 2,
      title: 'Как задавать вопросы Таро правильно',
      description:
          'Таро отвечает ровно так, как вы спрашиваете. Узнайте, какие формулировки открывают доступ к истинному знанию, а какие — ведут к путанице и искажению.',
    ),
    Topic(
      id: 3,
      title: 'Расклад дня: почему он работает',
      description:
          'Ежедневный расклад помогает синхронизироваться с энергией событий. В статье — о том, как читать карту дня, какие ошибки допускают новички и как использовать подсказки Арканов.',
    ),
    Topic(
      id: 4,
      title: 'Арканы любви: язык отношений в Таро',
      description:
          'Каждая карта в любовных раскладах несёт отдельный слой смысла. Мы разберём, как Арканы говорят об эмоциональной близости, разрывах, притяжении и теневых сценариях пары.',
    ),
    Topic(
      id: 5,
      title: 'Путь Шутa: почему важно позволить себе начать',
      description:
          'Шут — первый Аркан, энергия нового цикла. Узнайте, как этот образ помогает в период перемен, и почему иногда нужно шагнуть вперёд, даже не видя дороги.',
    ),
    Topic(
      id: 6,
      title: 'Карта года: как Арканы формируют энергетику цикла',
      description:
          'Простая формула позволяет узнать вашу персональную карту года. В статье — её значение, скрытые уроки и способы прожить год в согласии с энергией Аркана.',
    ),
    Topic(
      id: 7,
      title: 'Сила и мягкость: как Аркан VIII раскрывает внутренний баланс',
      description:
          'Аркан Сила говорит не о физической мощи, а о способности управлять инстинктами. Мы разберём, как найти ту точку баланса, где мягкость становится самым эффективным инструментом.',
    ),
    Topic(
      id: 8,
      title: 'Башня: кризис как механизм обновления',
      description:
          'Страшный на первый взгляд Аркан на самом деле символизирует освобождение от ложных структур. Узнайте, как правильно проживать моменты крушения старого.',
    ),
    Topic(
      id: 9,
      title: 'Императрица: энергия созидания и изобилия',
      description:
          'Императрица — Аркан плодородия, творчества и внутреннего ресурса. В статье — способы раскрыть свою творческую силу и активировать энергию процветания.',
    ),
    Topic(
      id: 10,
      title: 'Маг: сила намерения в Таро',
      description:
          'Маг учит управлять энергией через осознанное действие. Как формировать намерение так, чтобы оно работало, и почему у некоторых людей желания не исполняются.',
    ),
    Topic(
      id: 11,
      title: 'Луна: иллюзии, страхи и голос подсознания',
      description:
          'Эта карта показывает скрытую сторону эмоций, цикличность и внутренние страхи. В статье рассказываю, как отличать интуицию от тревоги.',
    ),
    Topic(
      id: 12,
      title: 'Как Таро помогает в самопознании',
      description:
          'Таро — не предсказание будущего, а система символов, отражающих ваше состояние. Узнайте, как использовать расклады для личностного роста и внутренней работы.',
    ),
  ];

  Future<List<Topic>> fetchArticles({required int masterId}) async {
    await Future<void>.delayed(_delay);
    return _topics;
  }
}

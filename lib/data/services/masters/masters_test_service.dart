import 'dart:math';

import '../../../domain/models/articles/topic/topic.dart';
import '../../../domain/models/masters/master_comment/master_comment.dart';
import '../../../domain/models/masters/master_model/master_model.dart';
import '../../../domain/models/masters/master_profile/master_profile.dart';
import '../../../domain/models/masters/masters_list_model/masters_list_model.dart';

class MastersTestService {
  MastersTestService();

  final _delay = const Duration(seconds: 1);

  final _masters = const <MasterModel>[
    MasterModel(
      id: 1,
      firstName: 'Алексей',
      lastName: 'Иванов',
      rating: 4.9,
      reviewsCount: 812,
      about:
          'Опытный преподаватель математики и информатики. Готовлю к ОГЭ, ЕГЭ и олимпиадам.',
      birthDate: '1987-03-12',
      birthTime: '09:15',
      gender: 'male',
      birthCity: 'Москва',
      topics: ['Математика', 'Алгебра', 'Информатика', 'ЕГЭ'],
      timing: 60,
      prana: 820,
    ),
    MasterModel(
      id: 2,
      firstName: 'Мария',
      lastName: 'Петрова',
      rating: 4.8,
      reviewsCount: 640,
      about: 'Преподаю английский язык более 10 лет. Подготовка к IELTS и FCE.',
      birthDate: '1992-11-04',
      gender: 'female',
      birthCity: 'Санкт-Петербург',
      topics: ['Английский язык', 'IELTS', 'FCE'],
      timing: 45,
      prana: 540,
    ),
    MasterModel(
      id: 3,
      firstName: 'Дмитрий',
      lastName: 'Сергеев',
      rating: 5.0,
      reviewsCount: 911,
      about:
          'Специалист по олимпиадной математике, работаю с сильными учениками.',
      birthDate: '1984-06-21',
      gender: 'male',
      birthCity: 'Новосибирск',
      topics: ['Математика', 'Олимпиадная математика'],
      timing: 90,
      prana: 1300,
    ),
    MasterModel(
      id: 4,
      firstName: 'Екатерина',
      lastName: 'Власова',
      rating: 4.7,
      reviewsCount: 302,
      about:
          'Готовлю к ЕГЭ по русскому языку и литературе. Помогаю развивать письменную речь.',
      birthDate: '1995-02-10',
      gender: 'female',
      birthCity: 'Казань',
      topics: ['Русский язык', 'Литература', 'ЕГЭ'],
      timing: 60,
      prana: 610,
    ),
    MasterModel(
      id: 5,
      firstName: 'Павел',
      lastName: 'Алексеев',
      rating: 4.6,
      reviewsCount: 244,
      about: 'Учитель физики, разбираю сложнейшие темы простыми словами.',
      birthDate: '1980-07-25',
      gender: 'male',
      birthCity: 'Екатеринбург',
      topics: ['Физика', 'Математика', 'ОГЭ'],
      timing: 60,
      prana: 910,
    ),
    MasterModel(
      id: 6,
      firstName: 'Ольга',
      lastName: 'Соколова',
      rating: 4.9,
      reviewsCount: 521,
      about:
          'Преподаю химию и биологию. Готовлю к экзаменам по авторской методике.',
      birthDate: '1991-09-18',
      gender: 'female',
      birthCity: 'Ростов-на-Дону',
      topics: ['Химия', 'Биология', 'ЕГЭ'],
      timing: 50,
      prana: 740,
    ),
    MasterModel(
      id: 7,
      firstName: 'Антон',
      lastName: 'Громов',
      rating: 4.5,
      reviewsCount: 187,
      about:
          'Программист и преподаватель Python и C++. Помогаю делать проекты.',
      birthDate: '1993-01-05',
      gender: 'male',
      birthCity: 'Пермь',
      topics: ['Программирование', 'Информатика'],
      timing: 60,
      prana: 480,
    ),
    MasterModel(
      id: 8,
      firstName: 'Наталья',
      lastName: 'Миронова',
      rating: 4.8,
      reviewsCount: 345,
      about: 'Автор курсов по финансовой грамотности для подростков.',
      birthDate: '1988-12-02',
      gender: 'female',
      birthCity: 'Самара',
      topics: ['Экономика', 'Финансовая грамотность'],
      timing: 45,
      prana: 670,
    ),
    MasterModel(
      id: 9,
      firstName: 'Илья',
      lastName: 'Борисов',
      rating: 4.6,
      reviewsCount: 210,
      about: 'Опытный историк. Помогаю понять процессы, а не заучивать даты.',
      birthDate: '1986-08-11',
      gender: 'male',
      birthCity: 'Тюмень',
      topics: ['История', 'Обществознание', 'ОГЭ'],
      timing: 60,
      prana: 520,
    ),
    MasterModel(
      id: 10,
      firstName: 'Вероника',
      lastName: 'Ковалева',
      rating: 4.7,
      reviewsCount: 156,
      about: 'Преподаватель французского языка, жила во Франции 4 года.',
      birthDate: '1994-10-14',
      gender: 'female',
      birthCity: 'Москва',
      topics: ['Французский язык'],
      timing: 60,
      prana: 420,
    ),
    MasterModel(
      id: 11,
      firstName: 'Сергей',
      lastName: 'Калачёв',
      rating: 4.4,
      reviewsCount: 122,
      about:
          'Географ и путешественник. Просто объясняю сложные процессы природы.',
      birthDate: '1982-03-03',
      gender: 'male',
      birthCity: 'Уфа',
      topics: ['География', 'ОГЭ'],
      timing: 50,
      prana: 390,
    ),
    MasterModel(
      id: 12,
      firstName: 'Анастасия',
      lastName: 'Лебедева',
      rating: 4.8,
      reviewsCount: 377,
      about:
          'Подготовка к TOEFL, разговорный английский. Индивидуальный подход.',
      birthDate: '1997-04-19',
      gender: 'female',
      birthCity: 'Иркутск',
      topics: ['Английский язык', 'TOEFL'],
      timing: 45,
      prana: 560,
    ),
    MasterModel(
      id: 13,
      firstName: 'Георгий',
      lastName: 'Трофимов',
      rating: 4.9,
      reviewsCount: 522,
      about: 'Эксперт по подготовке к ЕГЭ по истории.',
      birthDate: '1985-11-30',
      gender: 'male',
      birthCity: 'Тверь',
      topics: ['История', 'ЕГЭ'],
      timing: 60,
      prana: 820,
    ),
    MasterModel(
      id: 14,
      firstName: 'Юлия',
      lastName: 'Артёмова',
      rating: 4.5,
      reviewsCount: 158,
      about: 'Преподаю испанский язык. Делаю уроки интересными.',
      birthDate: '1990-06-22',
      gender: 'female',
      birthCity: 'Москва',
      topics: ['Испанский язык'],
      timing: 50,
      prana: 330,
    ),
    MasterModel(
      id: 15,
      firstName: 'Константин',
      lastName: 'Шилов',
      rating: 4.7,
      reviewsCount: 284,
      about: 'Опытный учитель информатики и программирования.',
      birthDate: '1979-09-27',
      gender: 'male',
      birthCity: 'Красноярск',
      topics: ['Информатика', 'Программирование'],
      timing: 60,
      prana: 710,
    ),
    MasterModel(
      id: 16,
      firstName: 'Татьяна',
      lastName: 'Фомина',
      rating: 4.3,
      reviewsCount: 133,
      about: 'Химия — просто и понятно. Помогаю подтянуть базу школьникам.',
      birthDate: '1996-08-13',
      gender: 'female',
      birthCity: 'Курск',
      topics: ['Химия', 'ОГЭ'],
      timing: 45,
      prana: 300,
    ),
    MasterModel(
      id: 17,
      firstName: 'Виталий',
      lastName: 'Еремин',
      rating: 4.9,
      reviewsCount: 688,
      about: 'Учитель физики и математики. Автор пособий для подготовки к ЕГЭ.',
      birthDate: '1983-12-17',
      gender: 'male',
      birthCity: 'Воронеж',
      topics: ['Физика', 'Математика', 'ЕГЭ'],
      timing: 75,
      prana: 1150,
    ),
    MasterModel(
      id: 18,
      firstName: 'Кристина',
      lastName: 'Гусева',
      rating: 4.6,
      reviewsCount: 144,
      about: 'Литература — это интересно. Помогаю подготовиться к экзаменам.',
      birthDate: '1998-01-22',
      gender: 'female',
      birthCity: 'Псков',
      topics: ['Литература'],
      timing: 60,
      prana: 350,
    ),
    MasterModel(
      id: 19,
      firstName: 'Егор',
      lastName: 'Дементьев',
      rating: 4.8,
      reviewsCount: 431,
      about: 'Готовлю к математическим олимпиадам. Индивидуальная программа.',
      birthDate: '1989-05-29',
      gender: 'male',
      birthCity: 'Сочи',
      topics: ['Олимпиадная математика', 'Математика'],
      timing: 90,
      prana: 990,
    ),
    MasterModel(
      id: 20,
      firstName: 'Алена',
      lastName: 'Белова',
      rating: 4.4,
      reviewsCount: 121,
      about: 'Немецкий язык для начинающих и продолжающих.',
      birthDate: '1993-03-16',
      gender: 'female',
      birthCity: 'Калуга',
      topics: ['Немецкий язык'],
      timing: 45,
      prana: 260,
    ),
    MasterModel(
      id: 21,
      firstName: 'Фёдор',
      lastName: 'Дроздов',
      rating: 4.7,
      reviewsCount: 312,
      about: 'Экономика и финансовая грамотность. Анализ реальных кейсов.',
      birthDate: '1981-10-02',
      gender: 'male',
      birthCity: 'Пенза',
      topics: ['Экономика', 'Финансовая грамотность'],
      timing: 60,
      prana: 740,
    ),
    MasterModel(
      id: 22,
      firstName: 'Оксана',
      lastName: 'Шевченко',
      rating: 4.5,
      reviewsCount: 198,
      about: 'Обществознание для школьников и абитуриентов.',
      birthDate: '1994-05-10',
      gender: 'female',
      birthCity: 'Саратов',
      topics: ['Обществознание', 'ЕГЭ'],
      timing: 55,
      prana: 410,
    ),
    MasterModel(
      id: 23,
      firstName: 'Артём',
      lastName: 'Колесников',
      rating: 4.8,
      reviewsCount: 501,
      about: 'Интенсивы по математике для старшеклассников.',
      birthDate: '1987-02-11',
      gender: 'male',
      birthCity: 'Москва',
      topics: ['Математика', 'ЕГЭ'],
      timing: 60,
      prana: 670,
    ),
    MasterModel(
      id: 24,
      firstName: 'Лидия',
      lastName: 'Барсукова',
      rating: 4.6,
      reviewsCount: 211,
      about: 'Подготовка к английским экзаменам, разговорная практика.',
      birthDate: '1991-11-03',
      gender: 'female',
      birthCity: 'Тула',
      topics: ['Английский язык', 'FCE'],
      timing: 50,
      prana: 520,
    ),
    MasterModel(
      id: 25,
      firstName: 'Ярослав',
      lastName: 'Гаврилов',
      rating: 4.9,
      reviewsCount: 603,
      about: 'Физика для школьников и студентов. Решаем сложные задачи.',
      birthDate: '1985-01-27',
      gender: 'male',
      birthCity: 'Киров',
      topics: ['Физика'],
      timing: 75,
      prana: 890,
    ),
    MasterModel(
      id: 26,
      firstName: 'Вера',
      lastName: 'Максимова',
      rating: 4.7,
      reviewsCount: 322,
      about: 'Преподаватель биологии. Автор обучающих методичек.',
      birthDate: '1999-09-09',
      gender: 'female',
      birthCity: 'Москва',
      topics: ['Биология', 'ЕГЭ'],
      timing: 55,
      prana: 430,
    ),
    MasterModel(
      id: 27,
      firstName: 'Ростислав',
      lastName: 'Одинцов',
      rating: 5.0,
      reviewsCount: 744,
      about: 'Эксперт в олимпиадной математике.',
      birthDate: '1988-04-08',
      gender: 'male',
      birthCity: 'Новгород',
      topics: ['Олимпиадная математика'],
      timing: 90,
      prana: 1250,
    ),
    MasterModel(
      id: 28,
      firstName: 'Светлана',
      lastName: 'Гаврилова',
      rating: 4.4,
      reviewsCount: 119,
      about: 'Легко объясняю школьную химию. Помогаю подтянуть базу.',
      birthDate: '1992-07-20',
      gender: 'female',
      birthCity: 'Брянск',
      topics: ['Химия'],
      timing: 60,
      prana: 310,
    ),
    MasterModel(
      id: 29,
      firstName: 'Максим',
      lastName: 'Никифоров',
      rating: 4.6,
      reviewsCount: 205,
      about: 'Специалист по географии, автор пособий для школьников.',
      birthDate: '1990-12-14',
      gender: 'male',
      birthCity: 'Омск',
      topics: ['География', 'ЕГЭ'],
      timing: 50,
      prana: 530,
    ),
    MasterModel(
      id: 30,
      firstName: 'Елена',
      lastName: 'Кравцова',
      rating: 4.9,
      reviewsCount: 485,
      about: 'Преподаватель русского языка, подготовка к ОГЭ и ЕГЭ.',
      birthDate: '1986-02-18',
      gender: 'female',
      birthCity: 'Москва',
      topics: ['Русский язык', 'ОГЭ', 'ЕГЭ'],
      timing: 60,
      prana: 760,
    ),
  ];

  var _liked = const [
    MasterModel(
      id: 2,
      firstName: 'Мария',
      lastName: 'Петрова',
      rating: 4.8,
      reviewsCount: 640,
      about: 'Преподаю английский язык более 10 лет. Подготовка к IELTS и FCE.',
      birthDate: '1992-11-04',
      gender: 'female',
      birthCity: 'Санкт-Петербург',
      topics: ['Английский язык', 'IELTS', 'FCE'],
      timing: 45,
      prana: 540,
    ),
    MasterModel(
      id: 28,
      firstName: 'Светлана',
      lastName: 'Гаврилова',
      rating: 4.4,
      reviewsCount: 119,
      about: 'Легко объясняю школьную химию. Помогаю подтянуть базу.',
      birthDate: '1992-07-20',
      gender: 'female',
      birthCity: 'Брянск',
      topics: ['Химия'],
      timing: 60,
      prana: 310,
    ),
    MasterModel(
      id: 29,
      firstName: 'Максим',
      lastName: 'Никифоров',
      rating: 4.6,
      reviewsCount: 205,
      about: 'Специалист по географии, автор пособий для школьников.',
      birthDate: '1990-12-14',
      gender: 'male',
      birthCity: 'Омск',
      topics: ['География', 'ЕГЭ'],
      timing: 50,
      prana: 530,
    ),
    MasterModel(
      id: 30,
      firstName: 'Елена',
      lastName: 'Кравцова',
      rating: 4.9,
      reviewsCount: 485,
      about: 'Преподаватель русского языка, подготовка к ОГЭ и ЕГЭ.',
      birthDate: '1986-02-18',
      gender: 'female',
      birthCity: 'Москва',
      topics: ['Русский язык', 'ОГЭ', 'ЕГЭ'],
      timing: 60,
      prana: 760,
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
    final masters = _masters
        .where((master) => topic == null || master.topics.contains(topic))
        .toList();

    final mastersList = <MasterModel>[];
    final start = (page - 1) * limit;
    final end = min(page * limit, masters.length);
    if (start > masters.length) {
      return MastersListModel(
        masters: mastersList,
        total: mastersList.length,
        page: page,
        limit: limit,
        totalPages: (masters.length ~/ limit) + 1,
      );
    }

    for (int i = start; i < end; i++) {
      mastersList.add(masters[i % masters.length]);
    }

    return MastersListModel(
      masters: mastersList,
      total: mastersList.length,
      page: page,
      limit: limit,
      totalPages: (masters.length ~/ limit) + 1,
    );
  }

  Future<List<MasterModel>> fetchFavouriteMasters() async {
    await Future<void>.delayed(_delay);
    return _liked;
  }

  Future<List<MasterModel>> toggleLikeMaster({required int id}) async {
    if (_liked.indexWhere((l) => l.id == id) != -1) {
      final newLiked = List<MasterModel>.from(_liked);
      newLiked.removeWhere((l) => l.id == id);
      _liked = newLiked;
      return newLiked;
    }

    final index = _masters.indexWhere((m) => m.id == id);
    if (index == -1) {
      return _liked;
    }
    final newLiked = List<MasterModel>.from(_liked);
    newLiked.add(_masters[index]);
    _liked = newLiked;
    return newLiked;
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

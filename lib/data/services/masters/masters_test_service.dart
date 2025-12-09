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
    id: 101,
    firstName: 'Александра',
    lastName: 'Кузнецова',
    description:
        'Преподаватель английского языка с 9-летним опытом подготовки к международным экзаменам '
        'и школьным аттестациям. Специализируюсь на FCE, IELTS и работе с подростками. '
        'Учу говорить уверенно, писать грамотно и понимать логику экзаменаторов. '
        'Веду индивидуальные и групповые занятия, создаю авторские методички и короткие видеолекции. '
        'Помогаю студентам выйти на стабильный результат и полностью убрать страх перед экзаменом.',
    url: 'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg',
    videoUrl: 'https://samplelib.com/lib/preview/mp4/sample-5s.mp4',
    isOnline: true,
    rating: 4.95,
    reviewsCount: 184,
    articlesCount: 26,
    timing: 60,
    topics: [
      'Английский язык',
      'Подготовка к FCE',
      'IELTS',
      'ОГЭ',
      'ЕГЭ',
      'Разговорный английский',
    ],
  );

  Future<MasterProfile> fetchMaster({required int id}) async {
    await Future<void>.delayed(_delay);
    return _masterProfile.copyWith(id: id);
  }

  final _comments = <MasterComment>[
    MasterComment(
      name: 'Марина Л.',
      dateTime: DateTime(2025, 1, 12),
      star: 5,
      topics: ['Подготовка к FCE', 'Английский язык'],
      descrption:
          'Занимались 4 месяца перед FCE. Сдала на уровень выше, чем ожидала! Александра идеально объясняет структуру экзамена и учит думать, а не зубрить.',
    ),
    MasterComment(
      name: 'Илья П.',
      dateTime: DateTime(2025, 1, 3),
      star: 5,
      topics: ['IELTS'],
      descrption:
          'Отличный преподаватель. Очень хорошо подтянули speaking. Раньше боялся говорить, а сейчас спокойно прохожу mock-тесты.',
    ),
    MasterComment(
      name: 'Дарья К.',
      dateTime: DateTime(2024, 12, 22),
      star: 4,
      topics: ['Разговорный английский'],
      descrption:
          'Уроки проходят легко и интересно. Единственное — хотелось бы чуть больше домашних заданий.',
    ),
    MasterComment(
      name: 'Сергей А.',
      dateTime: DateTime(2024, 12, 18),
      star: 5,
      topics: ['ЕГЭ', 'Английский язык'],
      descrption:
          'Готовились к ЕГЭ с нуля. Дочь подняла балл с 56 до 84. Очень благодарны! Отличный подход, всё по делу.',
    ),
    MasterComment(
      name: 'Анна Р.',
      dateTime: DateTime(2024, 12, 10),
      star: 5,
      topics: ['Подготовка к FCE'],
      descrption:
          'Чёткая структура занятий + приятная атмосфера. Понравилось, что много практики по Use of English.',
    ),
    MasterComment(
      name: 'Владимир Н.',
      dateTime: DateTime(2024, 12, 5),
      star: 4,
      topics: ['IELTS'],
      descrption:
          'Улучшил writing с 5.5 до 6.5 за два месяца. Очень сильный преподаватель, но занятия иногда проходят чуть плотновато.',
    ),
    MasterComment(
      name: 'Олеся Г.',
      dateTime: DateTime(2024, 11, 30),
      star: 5,
      topics: ['Разговорный английский'],
      descrption:
          'Учитель с прекрасной энергетикой! На каждом уроке чувствуется прогресс. Особенно нравится работа с лексикой.',
    ),
    MasterComment(
      name: 'Екатерина Ж.',
      dateTime: DateTime(2024, 11, 18),
      star: 5,
      topics: ['Подготовка к FCE'],
      descrption:
          'Сдала FCE с первого раза! Отдельное спасибо за тренировки по Reading & Use of English.',
    ),
    MasterComment(
      name: 'Тимур Ф.',
      dateTime: DateTime(2024, 11, 12),
      star: 5,
      topics: ['Английский язык'],
      descrption:
          'Потрясающий преподаватель! Системно, понятно, с отличной обратной связью. Продолжаю заниматься.',
    ),
    MasterComment(
      name: 'Полина Б.',
      dateTime: DateTime(2024, 11, 1),
      star: 4,
      topics: ['ОГЭ', 'Английский язык'],
      descrption:
          'Готовились к ОГЭ. Ребёнку нравится, стал увереннее говорить. Чуть дороговато, но результат стоит того.',
    ),
    MasterComment(
      name: 'Георгий С.',
      dateTime: DateTime(2024, 10, 28),
      star: 5,
      topics: ['IELTS'],
      descrption:
          'Очень гибкий подход к обучению. Учтены мои слабые стороны по listening и writing. Прогресс ощутим.',
    ),
    MasterComment(
      name: 'Надежда М.',
      dateTime: DateTime(2024, 10, 21),
      star: 5,
      topics: ['Подготовка к FCE'],
      descrption:
          'С преподавателем легко и приятно работать. Темп занятий идеальный. Всё чётко и профессионально.',
    ),
    MasterComment(
      name: 'Игорь Т.',
      dateTime: DateTime(2024, 10, 15),
      star: 5,
      topics: ['Английский язык'],
      descrption:
          'За полгода поднялся с A2 до уверенного B1. Спасибо за индивидуальный подход и много практики.',
    ),
    MasterComment(
      name: 'Светлана В.',
      dateTime: DateTime(2024, 10, 7),
      star: 5,
      topics: ['Разговорный английский'],
      descrption:
          'Разговорная практика отличная! Много ситуаций из реальной жизни, роль игры, обсуждения. Очень нравится.',
    ),
    MasterComment(
      name: 'Артём Л.',
      dateTime: DateTime(2024, 10, 1),
      star: 4,
      topics: ['ЕГЭ'],
      descrption:
          'Хорошие материалы и разбор заданий. В целом всё супер, но иногда было слишком много теории.',
    ),
  ];

  Future<List<MasterComment>> fetchComments({required int masterId}) async {
    await Future<void>.delayed(_delay);
    return _comments;
  }

  final _topics = const <Topic>[
    Topic(
      id: 1,
      title: 'Как успешно пройти Speaking Part 1',
      description:
          'Разбираем ключевые вопросы, типичные ошибки студентов и даю шаблоны для уверенных ответов.',
    ),
    Topic(
      id: 2,
      title: 'Секреты логичной структуры в эссе FCE',
      description:
          'Показываю, как правильно строить аргументацию и избегать типовых логических ошибок.',
    ),
    Topic(
      id: 3,
      title: 'Топ-30 фраз для уверенного Speaking Part 3',
      description:
          'Подборка полезных выражений, которые повышают связность и уровень речи.',
    ),
    Topic(
      id: 4,
      title: 'Как тренировать аудирование перед FCE',
      description: 'Рабочие техники, материалы и план подготовки на 14 дней.',
    ),
    Topic(
      id: 5,
      title: 'Writing: как не потерять баллы на формальностях',
      description: 'Объясняю правила формата e-mail, эссе, обзора и статьи.',
    ),
    Topic(
      id: 6,
      title: 'Используем linking words правильно',
      description:
          'Список связующих слов с примерами — что повышает оценку, а что наоборот снижает.',
    ),
    Topic(
      id: 7,
      title: 'Чтение: как быстро находить ключевую информацию',
      description: 'Стратегии прохождения Parts 1–7 без потери времени.',
    ),
    Topic(
      id: 8,
      title: 'Топ-50 слов и выражений уровня B2, которые нужно знать',
      description:
          'Слова, которые часто встречаются в экзамене и помогают звучать более убедительно.',
    ),
    Topic(
      id: 9,
      title: 'Как работать со временными формами в Speaking',
      description:
          'Объясняю, какие времена использовать чаще и как избегать типичных ошибок.',
    ),
    Topic(
      id: 10,
      title: 'Подготовка к Use of English: практические советы',
      description:
          'Методика запоминания словосочетаний и коллокаций, которые встречаются на экзамене.',
    ),
    Topic(
      id: 11,
      title: 'Как развивать беглость речи без заучивания текстов',
      description:
          'Эффективные упражнения для тренировки speaking дома и с партнёром.',
    ),
    Topic(
      id: 12,
      title: 'Ошибки, из-за которых студенты теряют баллы в Writing',
      description:
          'Анализ реальных примеров работ и рекомендации по улучшению.',
    ),
    Topic(
      id: 13,
      title: 'Подготовка к FCE за 30 дней: готовый план',
      description:
          'Подробный чек-лист на каждый день, основанный на реальной практике.',
    ),
    Topic(
      id: 14,
      title: 'Как повысить словарный запас до уровня B2',
      description:
          'Метод интервалов, семейства слов и эффективная работа с контекстом.',
    ),
    Topic(
      id: 15,
      title: 'Мотивация перед экзаменом: как сохранить стабильность',
      description:
          'Психологические техники, чтобы снизить стресс и выйти на экзамен уверенным.',
    ),
  ];

  Future<List<Topic>> fetchArticles({required int masterId}) async {
    await Future<void>.delayed(_delay);
    return _topics;
  }
}

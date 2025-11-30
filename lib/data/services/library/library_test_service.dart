import '../../../domain/models/articles/article/article.dart';
import '../../../domain/models/articles/comment/comment.dart';
import '../../../domain/models/articles/knowledge/knowledge.dart';
import '../../../domain/models/articles/topic/topic.dart';

class LibraryTestService {
  LibraryTestService();

  final _delay = const Duration(seconds: 5);

  final List<Knowledge> knowledges = const <Knowledge>[
    Knowledge(
      id: 1,
      title: 'Математика',
      topics: [
        Topic(
          id: 101,
          title: 'Алгебра: основы',
          description:
              'Линейные выражения, степени, корни и базовые преобразования.',
        ),
        Topic(
          id: 102,
          title: 'Геометрия: фигуры и доказательства',
          description: 'Анализ геометрических форм и построение доказательств.',
        ),
        Topic(
          id: 103,
          title: 'Тригонометрия базового уровня',
          description: 'Основные функции, формулы приведения и применение.',
        ),
        Topic(
          id: 104,
          title: 'Дроби и процентные вычисления',
          description: 'Арифметика дробей, проценты, пропорции.',
        ),
        Topic(
          id: 105,
          title: 'Подготовка к олимпиадам',
          description: 'Сложные задачи, логические конструкции, комбинаторика.',
        ),
        Topic(
          id: 106,
          title: 'Подготовка к ЕГЭ по математике',
          description: 'Полный набор навыков для успешной сдачи экзамена.',
        ),
        Topic(
          id: 107,
          title: 'Планиметрия углублённая',
          description: 'Методы решения задач повышенной сложности.',
        ),
        Topic(
          id: 108,
          title: 'Математический анализ для начинающих',
          description: 'Пределы, производные и их практические применения.',
        ),
        Topic(
          id: 109,
          title: 'Логика и теория множеств',
          description: 'Базовые логические операции и множества.',
        ),
        Topic(
          id: 110,
          title: 'Статистика и вероятность',
          description: 'Основные вероятностные модели, дисперсия, среднее.',
        ),
      ],
    ),

    Knowledge(
      id: 2,
      title: 'Физика',
      topics: [
        Topic(
          id: 201,
          title: 'Механика: основы движения',
          description: 'Законы Ньютона, типы движения, силы.',
        ),
        Topic(
          id: 202,
          title: 'Термодинамика',
          description: 'Температура, давление, законы газов.',
        ),
        Topic(
          id: 203,
          title: 'Оптика',
          description: 'Свет, линзы, отражение и преломление.',
        ),
        Topic(
          id: 204,
          title: 'Электричество и магнетизм',
          description: 'Токи, цепи, поля и их характеристики.',
        ),
        Topic(
          id: 205,
          title: 'Астрофизика для начинающих',
          description: 'Строение Вселенной и физика космоса.',
        ),
        Topic(
          id: 206,
          title: 'Квантовая физика',
          description: 'Фундаментальные понятия и эксперименты.',
        ),
        Topic(
          id: 207,
          title: 'Физика для ЕГЭ',
          description: 'Практические задачи, теория и подготовка.',
        ),
        Topic(
          id: 208,
          title: 'Звук и волны',
          description: 'Природа волн, формулы, экспериментальные задачи.',
        ),
        Topic(
          id: 209,
          title: 'Ядерная физика',
          description: 'Радиоактивность, ядерные реакции.',
        ),
        Topic(
          id: 210,
          title: 'Физические модели и вычисления',
          description: 'Приближения, расчёты, моделирование.',
        ),
      ],
    ),

    Knowledge(
      id: 3,
      title: 'Иностранные языки',
      topics: [
        Topic(
          id: 301,
          title: 'Подготовка к IELTS',
          description: 'Стратегии, структура экзамена, тренировка разделов.',
        ),
        Topic(
          id: 302,
          title: 'Подготовка к TOEFL',
          description: 'Академический английский и типовые задания.',
        ),
        Topic(
          id: 303,
          title: 'Английский A1–B2',
          description: 'Грамматика, разговорная практика, чтение.',
        ),
        Topic(
          id: 304,
          title: 'Произношение и фонетика',
          description: 'Правила произношения, интонация, акценты.',
        ),
        Topic(
          id: 305,
          title: 'Немецкий базовый курс',
          description: 'Начальная грамматика, словарный запас.',
        ),
        Topic(
          id: 306,
          title: 'Французский для начинающих',
          description: 'Основы языка и бытовые ситуации.',
        ),
        Topic(
          id: 307,
          title: 'Испанский разговорный',
          description: 'Практика разговорных диалогов.',
        ),
        Topic(
          id: 308,
          title: 'Английский для работы',
          description: 'Деловой стиль, переписка, переговоры.',
        ),
        Topic(
          id: 309,
          title: 'Подготовка к FCE',
          description: 'Европейский экзамен по английскому.',
        ),
        Topic(
          id: 310,
          title: 'Грамматика английского C1',
          description: 'Углублённые правила, структуры, конструкции.',
        ),
      ],
    ),

    Knowledge(
      id: 4,
      title: 'Информатика и IT',
      topics: [
        Topic(
          id: 401,
          title: 'Основы программирования',
          description: 'Переменные, условия, циклы.',
        ),
        Topic(
          id: 402,
          title: 'Алгоритмы и структуры данных',
          description: 'Списки, деревья, графы, сортировки.',
        ),
        Topic(
          id: 403,
          title: 'Frontend-разработка',
          description: 'HTML, CSS, JavaScript, адаптивность.',
        ),
        Topic(
          id: 404,
          title: 'Backend-разработка',
          description: 'API, базы данных, серверная логика.',
        ),
        Topic(
          id: 405,
          title: 'Python: продвинутый уровень',
          description: 'Практические проекты и паттерны.',
        ),
        Topic(
          id: 406,
          title: 'Подготовка к ОГЭ/ЕГЭ по информатике',
          description: 'Задачи, теория, практика.',
        ),
        Topic(
          id: 407,
          title: 'Кибербезопасность',
          description: 'Угрозы, защита данных, сетевые протоколы.',
        ),
        Topic(
          id: 408,
          title: 'Машинное обучение',
          description: 'Основные алгоритмы и модели.',
        ),
        Topic(
          id: 409,
          title: 'Базы данных',
          description: 'SQL, нормализация, проектирование.',
        ),
        Topic(
          id: 410,
          title: 'Разработка мобильных приложений',
          description: 'iOS, Android, Flutter, архитектуры.',
        ),
      ],
    ),

    Knowledge(
      id: 5,
      title: 'Химия',
      topics: [
        Topic(
          id: 501,
          title: 'Органическая химия',
          description: 'Углеводороды, реакции, изомерия.',
        ),
        Topic(
          id: 502,
          title: 'Неорганическая химия',
          description: 'Элементы, соединения, формулы.',
        ),
        Topic(
          id: 503,
          title: 'Химические реакции',
          description: 'Типы реакций, уравнения, примеры.',
        ),
        Topic(
          id: 504,
          title: 'Стехиометрия',
          description: 'Расчёты количественных показателей.',
        ),
        Topic(
          id: 505,
          title: 'Термохимия',
          description: 'Энергетика реакций и энтальпии.',
        ),
        Topic(
          id: 506,
          title: 'Подготовка к ЕГЭ по химии',
          description: 'Разбор заданий и теория.',
        ),
        Topic(
          id: 507,
          title: 'Химия растворов',
          description: 'Концентрации, растворимость, pH.',
        ),
        Topic(
          id: 508,
          title: 'Коллоидные системы',
          description: 'Свойства и применение.',
        ),
        Topic(
          id: 509,
          title: 'Катализ и реакции',
          description: 'Катализаторы и механизмы.',
        ),
        Topic(
          id: 510,
          title: 'Химия биологических систем',
          description: 'Белки, липиды, углеводы.',
        ),
      ],
    ),

    Knowledge(
      id: 6,
      title: 'Биология',
      topics: [
        Topic(
          id: 601,
          title: 'Клеточная биология',
          description: 'Органоиды, деление, функции.',
        ),
        Topic(
          id: 602,
          title: 'Генетика',
          description: 'Гены, наследование, мутации.',
        ),
        Topic(
          id: 603,
          title: 'Анатомия человека',
          description: 'Системы органов и их функции.',
        ),
        Topic(
          id: 604,
          title: 'Экология',
          description: 'Экосистемы, пищевые цепи, круговороты.',
        ),
        Topic(
          id: 605,
          title: 'Ботаника',
          description: 'Растительные клетки, строение, виды.',
        ),
        Topic(
          id: 606,
          title: 'Зоология',
          description: 'Классы животных, характеристики.',
        ),
        Topic(
          id: 607,
          title: 'Эволюция',
          description: 'Процессы развития организмов.',
        ),
        Topic(
          id: 608,
          title: 'Биология для ЕГЭ',
          description: 'Экзаменационные задания и теория.',
        ),
        Topic(
          id: 609,
          title: 'Микробиология',
          description: 'Вирусы, бактерии, взаимодействия.',
        ),
        Topic(
          id: 610,
          title: 'Физиология',
          description: 'Процессы жизнедеятельности.',
        ),
      ],
    ),

    Knowledge(
      id: 7,
      title: 'История и обществознание',
      topics: [
        Topic(
          id: 701,
          title: 'История России',
          description: 'Хронология, личности, события.',
        ),
        Topic(
          id: 702,
          title: 'Всеобщая история',
          description: 'Древний мир, средневековье, современность.',
        ),
        Topic(
          id: 703,
          title: 'Обществознание для ЕГЭ',
          description: 'Право, экономика, политика.',
        ),
        Topic(
          id: 704,
          title: 'Политические системы',
          description: 'Институты власти и взаимодействия.',
        ),
        Topic(
          id: 705,
          title: 'Право и законодательство',
          description: 'Гражданское и уголовное право.',
        ),
        Topic(
          id: 706,
          title: 'Экономические процессы',
          description: 'Рынок, инфляция, циклы.',
        ),
        Topic(
          id: 707,
          title: 'Философские школы',
          description: 'Античность, модерн, современность.',
        ),
        Topic(
          id: 708,
          title: 'Культура и искусство',
          description: 'Эпохи, стили, направления.',
        ),
        Topic(
          id: 709,
          title: 'Мировые религии',
          description: 'История, особенности, традиции.',
        ),
        Topic(
          id: 710,
          title: 'Геополитика',
          description: 'Мировая система, влияние, интересы.',
        ),
      ],
    ),

    Knowledge(
      id: 8,
      title: 'Экономика и финансы',
      topics: [
        Topic(
          id: 801,
          title: 'Финансовая грамотность',
          description: 'Доходы, расходы, инвестиции.',
        ),
        Topic(
          id: 802,
          title: 'Микроэкономика',
          description: 'Спрос, предложение, конкуренция.',
        ),
        Topic(
          id: 803,
          title: 'Макроэкономика',
          description: 'ВВП, инфляция, мировой рынок.',
        ),
        Topic(
          id: 804,
          title: 'Инвестиции',
          description: 'Активы, стратегии, риски.',
        ),
        Topic(
          id: 805,
          title: 'Бухгалтерский учёт',
          description: 'Финансовые отчёты, проводки.',
        ),
        Topic(
          id: 806,
          title: 'Предпринимательство',
          description: 'Бизнес-модели, управление.',
        ),
        Topic(
          id: 807,
          title: 'Маркетинг',
          description: 'Рынки, стратегия, продвижение.',
        ),
        Topic(
          id: 808,
          title: 'Экономика для ЕГЭ',
          description: 'Разбор типовых заданий.',
        ),
        Topic(
          id: 809,
          title: 'Анализ данных',
          description: 'Методы обработки и визуализации.',
        ),
        Topic(
          id: 810,
          title: 'Мировая экономика',
          description: 'Торговля, интеграция, валюты.',
        ),
      ],
    ),
  ];

  /// Запрос на получение базы знаний.
  Future<List<Knowledge>> fetchLibrary() async {
    await Future<void>.delayed(_delay);

    return knowledges;
  }

  final List<Topic> fceArticles = const <Topic>[
    Topic(
      id: 1,
      title: 'Структура экзамена FCE: полный разбор всех частей',
      description:
          'Подробный обзор Reading & Use of English, Writing, Listening и Speaking. '
          'Понимание структуры экзамена помогает ученикам распределять силы и планировать подготовку.',
    ),
    Topic(
      id: 2,
      title: 'Use of English: ключевые грамматические конструкции',
      description:
          'Анализ частотных грамматических структур — phrasal verbs, word formation, '
          'multiple choice cloze. Практические советы по выполнению заданий.',
    ),
    Topic(
      id: 3,
      title: 'Reading: стратегии быстрого чтения и поиска информации',
      description:
          'Методы сканирования текста, работа с контекстом, выделение ключевых идей. '
          'Подходит для всех типов чтения: long text, multiple matching, gapped text.',
    ),
    Topic(
      id: 4,
      title: 'Writing: как писать эссе уровня B2 без ошибок',
      description:
          'Структура эссе, типичные клише, полезные вводные слова, логика аргументации. '
          'Пошаговые шаблоны и рекомендации.',
    ),
    Topic(
      id: 5,
      title: 'Writing: письмо-отзыв, статья, письмо другу — форматы и примеры',
      description:
          'Разбор всех типов письменных работ: их стиль, структура, обязательные элементы. '
          'Подборка практических шаблонов для каждого формата.',
    ),
    Topic(
      id: 6,
      title: 'Listening: техники активного восприятия речи',
      description:
          'Развитие навыков понимания на слух, работа с акцентами, segmented listening, '
          'советы по выполнению multiple choice и matching.',
    ),
    Topic(
      id: 7,
      title: 'Speaking: как уверенно пройти интервью и диалог с партнёром',
      description:
          'Типовые вопросы, шаблоны ответов, фразы для взаимодействия с партнёром, '
          'а также практики повышения уверенности.',
    ),
    Topic(
      id: 8,
      title: 'Lexical Resource: расширяем словарный запас для уровня B2',
      description:
          'Самые востребованные темы словаря: education, environment, technology, travel. '
          'Методики активного запоминания и использования.',
    ),
    Topic(
      id: 9,
      title: 'Typical mistakes: типичные ошибки на FCE и как их избежать',
      description:
          'Разбор реальных ошибок студентов: грамматика, слова-паразиты, неправильные структуры. '
          'Тренировка исправления ошибок.',
    ),
    Topic(
      id: 10,
      title: 'Полный учебный план подготовки к FCE на 8 недель',
      description:
          'Готовый roadmap подготовки: распределение тем по неделям, список источников, '
          'рекомендации по домашним заданиям и практике.',
    ),
  ];

  List<Topic> _liked = const <Topic>[
    Topic(
      id: 101,
      title: 'Алгебра: основы',
      description:
          'Линейные выражения, степени, корни и базовые преобразования.',
    ),
    Topic(
      id: 102,
      title: 'Геометрия: фигуры и доказательства',
      description: 'Анализ геометрических форм и построение доказательств.',
    ),
    Topic(
      id: 103,
      title: 'Тригонометрия базового уровня',
      description: 'Основные функции, формулы приведения и применение.',
    ),
    Topic(
      id: 204,
      title: 'Электричество и магнетизм',
      description: 'Токи, цепи, поля и их характеристики.',
    ),
    Topic(
      id: 205,
      title: 'Астрофизика для начинающих',
      description: 'Строение Вселенной и физика космоса.',
    ),
  ];

  Future<List<Topic>> fetchArticles({required int topicId}) async {
    await Future<void>.delayed(_delay);

    return fceArticles;
  }

  Future<List<Topic>> fetchFavouiteArticles() async {
    await Future<void>.delayed(_delay);
    return _liked;
  }

  Future<List<Topic>> toggleLikeArticle({required int id}) async {
    if (_liked.indexWhere((l) => l.id == id) != -1) {
      final newLiked = List<Topic>.from(_liked);
      newLiked.removeWhere((l) => l.id == id);
      _liked = newLiked;
      return newLiked;
    }

    final index = fceArticles.indexWhere((m) => m.id == id);
    if (index == -1) {
      return _liked;
    }
    final newLiked = List<Topic>.from(_liked);
    newLiked.add(fceArticles[index]);
    _liked = newLiked;
    return newLiked;
  }

  Future<List<Topic>> fetchSameArticles({required int articleId}) async {
    await Future<void>.delayed(_delay);

    return fceArticles;
  }

  final _backupArticle = Article(
    id: 1,
    title: 'Структура экзамена FCE: полный разбор всех частей',
    content:
        'Экзамен FCE (B2 First) состоит из четырёх частей: Reading & Use of English, '
        'Writing, Listening и Speaking. Каждая часть проверяет разные языковые компетенции. '
        'Reading включает умение понимать основную идею текста и детали, тогда как Use of English '
        'оценивает знание грамматики и словарного запаса.\n\n'
        'Writing состоит из двух письменных заданий: обязательного эссе и одного задания на выбор. '
        'Listening проверяет способность воспринимать речь в естественных ситуациях, а Speaking — '
        'умение общаться с экзаменатором и партнером. Понимание структуры помогает ученику правильно '
        'распределить силы и подготовку.',
    publisherName: 'Cambridge Prep Academy',
    publishDate: DateTime(2025, 1, 10),
    commentsCount: 12,
  );

  final Map<int, Article> _fceArticles = {
    1: Article(
      id: 1,
      title: 'Структура экзамена FCE: полный разбор всех частей',
      content:
          'Экзамен FCE (B2 First) состоит из четырёх частей: Reading & Use of English, '
          'Writing, Listening и Speaking. Каждая часть проверяет разные языковые компетенции. '
          'Reading включает умение понимать основную идею текста и детали, тогда как Use of English '
          'оценивает знание грамматики и словарного запаса.\n\n'
          'Writing состоит из двух письменных заданий: обязательного эссе и одного задания на выбор. '
          'Listening проверяет способность воспринимать речь в естественных ситуациях, а Speaking — '
          'умение общаться с экзаменатором и партнером. Понимание структуры помогает ученику правильно '
          'распределить силы и подготовку.',
      publisherName: 'Cambridge Prep Academy',
      publishDate: DateTime(2025, 1, 10),
      commentsCount: 12,
    ),

    2: Article(
      id: 2,
      title: 'Use of English: ключевые грамматические конструкции',
      content:
          'Раздел Use of English включает несколько типов заданий: word formation, '
          'multiple choice cloze, open cloze и key word transformations. Чтобы успешно пройти его, '
          'важно хорошо владеть фразовыми глаголами, коллокациями, идиомами и словопроизводством.\n\n'
          'Отличный способ тренироваться — вести собственный словарь слов, которые часто встречаются '
          'в FCE, и регулярно выполнять задания формата open cloze.',
      publisherName: 'English Boost',
      publishDate: DateTime(2025, 1, 12),
      commentsCount: 8,
    ),

    3: Article(
      id: 3,
      title: 'Reading: стратегии быстрого чтения и поиска информации',
      content:
          'Reading проверяет способность быстро понимать большие тексты. Ключевые техники — '
          'сканирование (rapid scanning), чтение по диагонали (skimming) и внимательный анализ '
          'контекстных подсказок. Важно уметь быстро определять структуру текста и находить нужную информацию.\n\n'
          'Типы заданий включают matching, multiple choice и gapped text, где очень важно владеть навыками '
          'семантических связок.',
      publisherName: 'Lingua Expert',
      publishDate: DateTime(2025, 1, 15),
      commentsCount: 15,
    ),

    4: Article(
      id: 4,
      title: 'Writing: как писать эссе уровня B2 без ошибок',
      content:
          'Эссе — обязательная часть Writing. Оно должно содержать введение, два абзаца с аргументами '
          'и логичный вывод. Самое важное — умение выражать своё мнение, приводить аргументы и связывать '
          'абзацы через linking words: moreover, however, on the other hand.\n\n'
          'Ученикам рекомендуется учить клише для вступления и выводов, а также практиковать '
          'планирование текста перед началом написания.',
      publisherName: 'FCE Writing Lab',
      publishDate: DateTime(2025, 1, 18),
      commentsCount: 19,
    ),

    5: Article(
      id: 5,
      title: 'Writing: письмо-отзыв, статья, письмо другу — форматы и примеры',
      content:
          'Вторая часть Writing позволяет выбрать формат: письмо, статья, отзыв или отчёт. '
          'Каждый из них требует соблюдения стиля. Например, письмо другу может быть более '
          'неформальным, в то время как отзыв должен быть структурирован и содержать рекомендации.\n\n'
          'Отличной практикой является ведение тетради-шаблонов: каждая структура описана и дополнена '
          'примерами выражений.',
      publisherName: 'WriteBetter School',
      publishDate: DateTime(2025, 1, 20),
      commentsCount: 7,
    ),

    6: Article(
      id: 6,
      title: 'Listening: техники активного восприятия речи',
      content:
          'Listening включает четыре части с разными типами аудиоматериалов: интервью, монологи, диалоги. '
          'Лучший способ подготовиться — слушать материалы разных акцентов: британский, австралийский, '
          'канадский.\n\n'
          'Также важно научиться слышать ключевые слова и предугадывать ответы по контексту. Техника '
          'segmented listening помогает сфокусироваться на частях аудио и развивать внимательность.',
      publisherName: 'Listening Academy',
      publishDate: DateTime(2025, 1, 22),
      commentsCount: 11,
    ),

    7: Article(
      id: 7,
      title: 'Speaking: как уверенно пройти интервью и диалог с партнёром',
      content:
          'Speaking состоит из четырёх частей: интервью, монологической части, диалога и обсуждения. '
          'Важно владеть фразами для взаимодействия с партнёром: “What do you think?”, '
          '“Shall we move on to the next point?”.\n\n'
          'Тренировать Speaking можно по видеообразцам экзамена, обращая внимание на интонацию и структуру ответов.',
      publisherName: 'SpeakUp Club',
      publishDate: DateTime(2025, 1, 25),
      commentsCount: 14,
    ),

    8: Article(
      id: 8,
      title: 'Lexical Resource: расширяем словарный запас для уровня B2',
      content:
          'Для успешного прохождения FCE требуется активный словарь на темы: здоровье, технологии, путешествия, '
          'обучение, окружающая среда. Одним из лучших способов тренировки является использование карточек '
          'и составление примеров предложений.\n\n'
          'Коллокации и фразовые глаголы особенно важны, так как они часто встречаются в Use of English.',
      publisherName: 'LexisPro',
      publishDate: DateTime(2025, 1, 26),
      commentsCount: 5,
    ),

    9: Article(
      id: 9,
      title: 'Typical mistakes: типичные ошибки на FCE и как их избежать',
      content:
          'Типичные ошибки включают неверное использование времён, неправильные предлоги, банальные фразы, '
          'неумение перефразировать предложения (key word transformations). Часто ученики теряют баллы на '
          'невнимательности и отсутствии логики в письме.\n\n'
          'Лучший способ — анализировать свои ошибки и регулярно тренироваться на реальных заданиях.',
      publisherName: 'Cambridge ErrorCheck',
      publishDate: DateTime(2025, 1, 27),
      commentsCount: 18,
    ),

    10: Article(
      id: 10,
      title: 'Полный учебный план подготовки к FCE на 8 недель',
      content:
          'Этот учебный план помогает распределить подготовку: каждую неделю ученик работает над одной '
          'частью экзамена, сочетая теорию и практику. План включает ссылки на материалы, рекомендуемые '
          'задания и список навыков, которые нужно освоить.\n\n'
          'Такой подход позволяет избежать перегрузки и систематизировать процесс обучения.',
      publisherName: 'ExamMastery',
      publishDate: DateTime(2025, 1, 29),
      commentsCount: 9,
    ),
  };

  Future<Article> fetchArticle({required int articleId}) async {
    await Future<void>.delayed(_delay);

    return _fceArticles[articleId] ?? _backupArticle;
  }

  Future<Article> likeArticle({required int articleId}) async {
    await Future<void>.delayed(_delay);
    return _backupArticle;
  }

  final backupComments = [
    Comment(
      id: 101,
      sender: 'Анна Р.',
      dateTime: DateTime(2025, 1, 12, 14, 30),
      content:
          'Очень помогли советы по тайм-менеджменту! Стала решать задания гораздо быстрее.',
      subcomments: [
        Comment(
          id: 102,
          sender: 'Автор',
          dateTime: DateTime(2025, 1, 13, 10, 12),
          content: 'Спасибо! Рад, что материал оказался полезным.',
        ),
      ],
    ),
    Comment(
      id: 103,
      sender: 'Максим П.',
      dateTime: DateTime(2025, 1, 14, 9, 05),
      content:
          'Всегда путался, как распределять время в Writing. Теперь стало понятнее.',
    ),
    Comment(
      id: 104,
      sender: 'Елена К.',
      dateTime: DateTime(2025, 1, 16, 18, 45),
      content: 'Замечательно структурированный материал!',
    ),
    Comment(
      id: 105,
      sender: 'Дмитрий',
      dateTime: DateTime(2025, 1, 17, 11, 22),
      content:
          'Немного не согласен с подходом к планированию, но в целом статья отличная.',
    ),
    Comment(
      id: 106,
      sender: 'Катя',
      dateTime: DateTime(2025, 1, 17, 15, 10),
      content: 'Отличное объяснение. Использовала чек-лист — очень удобно.',
    ),
  ];

  final Map<int, List<Comment>> _articleComments = {
    1: [
      Comment(
        id: 101,
        sender: 'Анна Р.',
        dateTime: DateTime(2025, 1, 12, 14, 30),
        content:
            'Очень помогли советы по тайм-менеджменту! Стала решать задания гораздо быстрее.',
        subcomments: [
          Comment(
            id: 102,
            sender: 'Автор',
            dateTime: DateTime(2025, 1, 13, 10, 12),
            content: 'Спасибо! Рад, что материал оказался полезным.',
          ),
        ],
      ),
      Comment(
        id: 103,
        sender: 'Максим П.',
        dateTime: DateTime(2025, 1, 14, 9, 05),
        content:
            'Всегда путался, как распределять время в Writing. Теперь стало понятнее.',
      ),
      Comment(
        id: 104,
        sender: 'Елена К.',
        dateTime: DateTime(2025, 1, 16, 18, 45),
        content: 'Замечательно структурированный материал!',
      ),
      Comment(
        id: 105,
        sender: 'Дмитрий',
        dateTime: DateTime(2025, 1, 17, 11, 22),
        content:
            'Немного не согласен с подходом к планированию, но в целом статья отличная.',
      ),
      Comment(
        id: 106,
        sender: 'Катя',
        dateTime: DateTime(2025, 1, 17, 15, 10),
        content: 'Отличное объяснение. Использовала чек-лист — очень удобно.',
      ),
    ],

    2: [
      Comment(
        id: 201,
        sender: 'Василиса',
        dateTime: DateTime(2025, 2, 2, 12, 10),
        content:
            'Всегда боялась Speaking, но правила в статье прям вдохновили.',
      ),
      Comment(
        id: 202,
        sender: 'Игорь',
        dateTime: DateTime(2025, 2, 3, 9, 48),
        content: 'Очень полезные фразы для Part 2!',
      ),
      Comment(
        id: 203,
        sender: 'Мария',
        dateTime: DateTime(2025, 2, 4, 16, 00),
        content:
            'Добавьте, пожалуйста, больше примеров фраз для сравнения картинок.',
      ),
      Comment(
        id: 204,
        sender: 'Автор',
        dateTime: DateTime(2025, 2, 4, 19, 20),
        content: 'Мария, добавлю в следующем обновлении!',
      ),
      Comment(
        id: 205,
        sender: 'Глеб',
        dateTime: DateTime(2025, 2, 6, 13, 37),
        content: 'Читал много материалов, но этот структурирован лучше всего.',
      ),
    ],

    3: [
      Comment(
        id: 301,
        sender: 'Никита',
        dateTime: DateTime(2025, 3, 10, 11, 15),
        content: 'Очень полезный разбор Parts 1 и 2.',
      ),
      Comment(
        id: 302,
        sender: 'Соня',
        dateTime: DateTime(2025, 3, 11, 14, 55),
        content: 'Особенно понравилась техника чтения по ключевым словам.',
      ),
      Comment(
        id: 303,
        sender: 'Кирилл',
        dateTime: DateTime(2025, 3, 12, 10, 18),
        content: 'Хотелось бы примеры для Part 7.',
      ),
      Comment(
        id: 304,
        sender: 'Автор',
        dateTime: DateTime(2025, 3, 12, 12, 05),
        content: 'Кирилл, добавлю! Спасибо за отзыв.',
      ),
      Comment(
        id: 305,
        sender: 'Юля',
        dateTime: DateTime(2025, 3, 14, 08, 30),
        content: 'Использовала технику сканирования — время сократилось!',
      ),
    ],

    4: [
      Comment(
        id: 401,
        sender: 'Ольга',
        dateTime: DateTime(2025, 4, 1, 15, 00),
        content: 'Примеры писем просто супер!',
      ),
      Comment(
        id: 402,
        sender: 'Антон',
        dateTime: DateTime(2025, 4, 2, 11, 45),
        content: 'Наконец-то понял разницу между formal и semi-formal.',
      ),
      Comment(
        id: 403,
        sender: 'Маргарита',
        dateTime: DateTime(2025, 4, 3, 17, 25),
        content: 'Полезная структура, буду применять.',
      ),
      Comment(
        id: 404,
        sender: 'Тимур',
        dateTime: DateTime(2025, 4, 3, 18, 10),
        content: 'Хотелось бы больше примеров неудачных писем.',
      ),
      Comment(
        id: 405,
        sender: 'Автор',
        dateTime: DateTime(2025, 4, 4, 09, 30),
        content: 'Учту в следующей статье!',
      ),
    ],

    5: [
      Comment(
        id: 501,
        sender: 'Егор',
        dateTime: DateTime(2025, 5, 12, 10, 22),
        content: 'Теперь понимаю, почему Wrong Word растёт в моих работах.',
      ),
      Comment(
        id: 502,
        sender: 'Катерина',
        dateTime: DateTime(2025, 5, 13, 14, 33),
        content: 'Хороший список типичных ошибок!',
      ),
      Comment(
        id: 503,
        sender: 'Вика',
        dateTime: DateTime(2025, 5, 14, 16, 00),
        content: 'Было бы круто, если бы добавили упражнения.',
      ),
      Comment(
        id: 504,
        sender: 'Автор',
        dateTime: DateTime(2025, 5, 15, 9, 40),
        content: 'Планирую выпустить тренировочный материал.',
      ),
      Comment(
        id: 505,
        sender: 'Роман',
        dateTime: DateTime(2025, 5, 16, 11, 18),
        content: 'Прочитал дважды. Очень полезно!',
      ),
    ],

    6: [
      Comment(
        id: 601,
        sender: 'Лиза',
        dateTime: DateTime(2025, 6, 4, 12, 20),
        content: 'Поняла, как правильно вести диалог с экзаменатором!',
      ),
      Comment(
        id: 602,
        sender: 'Илья',
        dateTime: DateTime(2025, 6, 5, 15, 32),
        content: 'Советы по интонации — огонь.',
      ),
      Comment(
        id: 603,
        sender: 'Сёмён',
        dateTime: DateTime(2025, 6, 6, 17, 10),
        content: 'Чётко и понятно, спасибо!',
      ),
      Comment(
        id: 604,
        sender: 'Дарья',
        dateTime: DateTime(2025, 6, 7, 19, 44),
        content: 'Добавьте аудиопримеры, пожалуйста.',
      ),
      Comment(
        id: 605,
        sender: 'Автор',
        dateTime: DateTime(2025, 6, 8, 10, 01),
        content: 'Хорошая идея! Обязательно сделаю.',
      ),
    ],

    7: [
      Comment(
        id: 701,
        sender: 'Олеся',
        dateTime: DateTime(2025, 7, 1, 13, 00),
        content: 'Отличные шаблоны ответов для Part 1!',
      ),
      Comment(
        id: 702,
        sender: 'Марат',
        dateTime: DateTime(2025, 7, 2, 09, 20),
        content: 'Теперь гораздо увереннее говорю о хобби.',
      ),
      Comment(
        id: 703,
        sender: 'Ирина',
        dateTime: DateTime(2025, 7, 3, 14, 12),
        content: 'Хочу больше примеров нестандартных вопросов.',
      ),
      Comment(
        id: 704,
        sender: 'Автор',
        dateTime: DateTime(2025, 7, 3, 17, 25),
        content: 'Подготовлю отдельный список!',
      ),
      Comment(
        id: 705,
        sender: 'Стас',
        dateTime: DateTime(2025, 7, 4, 11, 56),
        content: 'Очень понравилась таблица выражений.',
      ),
    ],

    8: [
      Comment(
        id: 801,
        sender: 'Вероника',
        dateTime: DateTime(2025, 8, 10, 11, 11),
        content:
            'Супер! Эти задания — лучший формат тренировки перед экзаменом.',
      ),
      Comment(
        id: 802,
        sender: 'Павел',
        dateTime: DateTime(2025, 8, 11, 12, 00),
        content: 'Некоторые задания показались сложными, но очень полезными.',
      ),
      Comment(
        id: 803,
        sender: 'Таня',
        dateTime: DateTime(2025, 8, 12, 15, 45),
        content: 'Хотелось бы ключи к упражнениям.',
      ),
      Comment(
        id: 804,
        sender: 'Автор',
        dateTime: DateTime(2025, 8, 12, 17, 10),
        content: 'Добавлю ответы в PDF и прикреплю в обновлении.',
      ),
      Comment(
        id: 805,
        sender: 'Женя',
        dateTime: DateTime(2025, 8, 13, 09, 28),
        content: 'Очень удобно, спасибо!',
      ),
    ],

    9: [
      Comment(
        id: 901,
        sender: 'Мелисса',
        dateTime: DateTime(2025, 9, 1, 16, 00),
        content: 'Потрясающие советы по психологической подготовке!',
      ),
      Comment(
        id: 902,
        sender: 'Георгий',
        dateTime: DateTime(2025, 9, 2, 18, 10),
        content: 'Использовал техники дыхания — реально помогло.',
      ),
      Comment(
        id: 903,
        sender: 'Автор',
        dateTime: DateTime(2025, 9, 3, 09, 30),
        content: 'Спасибо за отзыв!',
      ),
      Comment(
        id: 904,
        sender: 'Ангелина',
        dateTime: DateTime(2025, 9, 4, 12, 12),
        content: 'Особенно полезна часть про борьбу с паникой.',
      ),
      Comment(
        id: 905,
        sender: 'Сергей',
        dateTime: DateTime(2025, 9, 4, 18, 50),
        content: 'Добавьте советы для интровертов, будет полезно.',
      ),
    ],

    10: [
      Comment(
        id: 1001,
        sender: 'Тимофей',
        dateTime: DateTime(2025, 10, 10, 11, 22),
        content: 'Отличный список ресурсов!',
      ),
      Comment(
        id: 1002,
        sender: 'Дарина',
        dateTime: DateTime(2025, 10, 11, 13, 35),
        content: 'Использовала два сайта из списка — очень круто!',
      ),
      Comment(
        id: 1003,
        sender: 'Алексей',
        dateTime: DateTime(2025, 10, 12, 15, 40),
        content: 'Добавьте, пожалуйста, приложения для словарного запаса.',
      ),
      Comment(
        id: 1004,
        sender: 'Автор',
        dateTime: DateTime(2025, 10, 12, 18, 05),
        content: 'Добавлю подборку словарных приложений!',
      ),
      Comment(
        id: 1005,
        sender: 'Оля',
        dateTime: DateTime(2025, 10, 13, 09, 55),
        content: 'Классная статья, сохранила в избранное.',
      ),
    ],
  };

  Future<List<Comment>> fetchComments({required int articleId}) async {
    await Future<void>.delayed(_delay);
    return _articleComments[articleId] ?? backupComments;
  }

  Future<List<Comment>> createComment({
    required int articleId,
    required String text,
    int? parentId,
  }) async {
    await Future<void>.delayed(_delay);
    return _articleComments[articleId] ?? backupComments;
  }

  Future<void> deleteComment({
    required int articleId,
    required int commentId,
  }) async {
    await Future<void>.delayed(_delay);
  }
}

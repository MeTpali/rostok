// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AddBalancedPage]
class AddBalancedRoute extends PageRouteInfo<void> {
  const AddBalancedRoute({List<PageRouteInfo>? children})
    : super(AddBalancedRoute.name, initialChildren: children);

  static const String name = 'AddBalancedRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AddBalancedPage();
    },
  );
}

/// generated route for
/// [AppLoadingPage]
class AppLoadingRoute extends PageRouteInfo<void> {
  const AppLoadingRoute({List<PageRouteInfo>? children})
    : super(AppLoadingRoute.name, initialChildren: children);

  static const String name = 'AppLoadingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AppLoadingPage();
    },
  );
}

/// generated route for
/// [ArticlePage]
class ArticleRoute extends PageRouteInfo<ArticleRouteArgs> {
  ArticleRoute({required int id, Key? key, List<PageRouteInfo>? children})
    : super(
        ArticleRoute.name,
        args: ArticleRouteArgs(id: id, key: key),
        initialChildren: children,
      );

  static const String name = 'ArticleRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArticleRouteArgs>();
      return ArticlePage(id: args.id, key: args.key);
    },
  );
}

class ArticleRouteArgs {
  const ArticleRouteArgs({required this.id, this.key});

  final int id;

  final Key? key;

  @override
  String toString() {
    return 'ArticleRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [ArticlesPage]
class ArticlesRoute extends PageRouteInfo<ArticlesRouteArgs> {
  ArticlesRoute({
    required int topicId,
    required String topicTitle,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         ArticlesRoute.name,
         args: ArticlesRouteArgs(
           topicId: topicId,
           topicTitle: topicTitle,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'ArticlesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArticlesRouteArgs>();
      return ArticlesPage(
        topicId: args.topicId,
        topicTitle: args.topicTitle,
        key: args.key,
      );
    },
  );
}

class ArticlesRouteArgs {
  const ArticlesRouteArgs({
    required this.topicId,
    required this.topicTitle,
    this.key,
  });

  final int topicId;

  final String topicTitle;

  final Key? key;

  @override
  String toString() {
    return 'ArticlesRouteArgs{topicId: $topicId, topicTitle: $topicTitle, key: $key}';
  }
}

/// generated route for
/// [ArticlesShellPage]
class ArticlesShellRoute extends PageRouteInfo<void> {
  const ArticlesShellRoute({List<PageRouteInfo>? children})
    : super(ArticlesShellRoute.name, initialChildren: children);

  static const String name = 'ArticlesShellRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ArticlesShellPage();
    },
  );
}

/// generated route for
/// [AuthorizationPage]
class AuthorizationRoute extends PageRouteInfo<void> {
  const AuthorizationRoute({List<PageRouteInfo>? children})
    : super(AuthorizationRoute.name, initialChildren: children);

  static const String name = 'AuthorizationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AuthorizationPage();
    },
  );
}

/// generated route for
/// [BookingPage]
class BookingRoute extends PageRouteInfo<BookingRouteArgs> {
  BookingRoute({
    required int masterId,
    required String name,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         BookingRoute.name,
         args: BookingRouteArgs(masterId: masterId, name: name, key: key),
         initialChildren: children,
       );

  static const String name = 'BookingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BookingRouteArgs>();
      return BookingPage(
        masterId: args.masterId,
        name: args.name,
        key: args.key,
      );
    },
  );
}

class BookingRouteArgs {
  const BookingRouteArgs({
    required this.masterId,
    required this.name,
    this.key,
  });

  final int masterId;

  final String name;

  final Key? key;

  @override
  String toString() {
    return 'BookingRouteArgs{masterId: $masterId, name: $name, key: $key}';
  }
}

/// generated route for
/// [ChatPage]
class ChatRoute extends PageRouteInfo<void> {
  const ChatRoute({List<PageRouteInfo>? children})
    : super(ChatRoute.name, initialChildren: children);

  static const String name = 'ChatRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ChatPage();
    },
  );
}

/// generated route for
/// [ChatShellPage]
class ChatShellRoute extends PageRouteInfo<void> {
  const ChatShellRoute({List<PageRouteInfo>? children})
    : super(ChatShellRoute.name, initialChildren: children);

  static const String name = 'ChatShellRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ChatShellPage();
    },
  );
}

/// generated route for
/// [DayCardPage]
class DayCardRoute extends PageRouteInfo<DayCardRouteArgs> {
  DayCardRoute({
    required String card,
    required String description,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         DayCardRoute.name,
         args: DayCardRouteArgs(card: card, description: description, key: key),
         initialChildren: children,
       );

  static const String name = 'DayCardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DayCardRouteArgs>();
      return DayCardPage(
        card: args.card,
        description: args.description,
        key: args.key,
      );
    },
  );
}

class DayCardRouteArgs {
  const DayCardRouteArgs({
    required this.card,
    required this.description,
    this.key,
  });

  final String card;

  final String description;

  final Key? key;

  @override
  String toString() {
    return 'DayCardRouteArgs{card: $card, description: $description, key: $key}';
  }
}

/// generated route for
/// [FavouriteArticlesPage]
class FavouriteArticlesRoute extends PageRouteInfo<void> {
  const FavouriteArticlesRoute({List<PageRouteInfo>? children})
    : super(FavouriteArticlesRoute.name, initialChildren: children);

  static const String name = 'FavouriteArticlesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavouriteArticlesPage();
    },
  );
}

/// generated route for
/// [FavouriteMastersPage]
class FavouriteMastersRoute extends PageRouteInfo<void> {
  const FavouriteMastersRoute({List<PageRouteInfo>? children})
    : super(FavouriteMastersRoute.name, initialChildren: children);

  static const String name = 'FavouriteMastersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavouriteMastersPage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({Key? key, List<PageRouteInfo>? children})
    : super(
        HomeRoute.name,
        args: HomeRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeRouteArgs>(
        orElse: () => const HomeRouteArgs(),
      );
      return HomePage(key: args.key);
    },
  );
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [LibraryPage]
class LibraryRoute extends PageRouteInfo<void> {
  const LibraryRoute({List<PageRouteInfo>? children})
    : super(LibraryRoute.name, initialChildren: children);

  static const String name = 'LibraryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LibraryPage();
    },
  );
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainPage();
    },
  );
}

/// generated route for
/// [MainShellPage]
class MainShellRoute extends PageRouteInfo<void> {
  const MainShellRoute({List<PageRouteInfo>? children})
    : super(MainShellRoute.name, initialChildren: children);

  static const String name = 'MainShellRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainShellPage();
    },
  );
}

/// generated route for
/// [MasterPage]
class MasterRoute extends PageRouteInfo<MasterRouteArgs> {
  MasterRoute({required int id, List<PageRouteInfo>? children})
    : super(
        MasterRoute.name,
        args: MasterRouteArgs(id: id),
        initialChildren: children,
      );

  static const String name = 'MasterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MasterRouteArgs>();
      return MasterPage(id: args.id);
    },
  );
}

class MasterRouteArgs {
  const MasterRouteArgs({required this.id});

  final int id;

  @override
  String toString() {
    return 'MasterRouteArgs{id: $id}';
  }
}

/// generated route for
/// [MastersPage]
class MastersRoute extends PageRouteInfo<MastersRouteArgs> {
  MastersRoute({String? initialFilter, Key? key, List<PageRouteInfo>? children})
    : super(
        MastersRoute.name,
        args: MastersRouteArgs(initialFilter: initialFilter, key: key),
        initialChildren: children,
      );

  static const String name = 'MastersRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MastersRouteArgs>(
        orElse: () => const MastersRouteArgs(),
      );
      return MastersPage(initialFilter: args.initialFilter, key: args.key);
    },
  );
}

class MastersRouteArgs {
  const MastersRouteArgs({this.initialFilter, this.key});

  final String? initialFilter;

  final Key? key;

  @override
  String toString() {
    return 'MastersRouteArgs{initialFilter: $initialFilter, key: $key}';
  }
}

/// generated route for
/// [MastersShellPage]
class MastersShellRoute extends PageRouteInfo<void> {
  const MastersShellRoute({List<PageRouteInfo>? children})
    : super(MastersShellRoute.name, initialChildren: children);

  static const String name = 'MastersShellRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MastersShellPage();
    },
  );
}

/// generated route for
/// [NotesPage]
class NotesRoute extends PageRouteInfo<void> {
  const NotesRoute({List<PageRouteInfo>? children})
    : super(NotesRoute.name, initialChildren: children);

  static const String name = 'NotesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NotesPage();
    },
  );
}

/// generated route for
/// [NotesShellPage]
class NotesShellRoute extends PageRouteInfo<void> {
  const NotesShellRoute({List<PageRouteInfo>? children})
    : super(NotesShellRoute.name, initialChildren: children);

  static const String name = 'NotesShellRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NotesShellPage();
    },
  );
}

/// generated route for
/// [PaymentMethodPage]
class PaymentMethodRoute extends PageRouteInfo<void> {
  const PaymentMethodRoute({List<PageRouteInfo>? children})
    : super(PaymentMethodRoute.name, initialChildren: children);

  static const String name = 'PaymentMethodRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PaymentMethodPage();
    },
  );
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfilePage();
    },
  );
}

/// generated route for
/// [ProfileSettingsPage]
class ProfileSettingsRoute extends PageRouteInfo<void> {
  const ProfileSettingsRoute({List<PageRouteInfo>? children})
    : super(ProfileSettingsRoute.name, initialChildren: children);

  static const String name = 'ProfileSettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileSettingsPage();
    },
  );
}

/// generated route for
/// [RegistrationPage]
class RegistrationRoute extends PageRouteInfo<void> {
  const RegistrationRoute({List<PageRouteInfo>? children})
    : super(RegistrationRoute.name, initialChildren: children);

  static const String name = 'RegistrationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegistrationPage();
    },
  );
}

/// generated route for
/// [SimpleArticlesPage]
class SimpleArticlesRoute extends PageRouteInfo<SimpleArticlesRouteArgs> {
  SimpleArticlesRoute({
    required String title,
    required List<Topic> topics,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         SimpleArticlesRoute.name,
         args: SimpleArticlesRouteArgs(title: title, topics: topics, key: key),
         initialChildren: children,
       );

  static const String name = 'SimpleArticlesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SimpleArticlesRouteArgs>();
      return SimpleArticlesPage(
        title: args.title,
        topics: args.topics,
        key: args.key,
      );
    },
  );
}

class SimpleArticlesRouteArgs {
  const SimpleArticlesRouteArgs({
    required this.title,
    required this.topics,
    this.key,
  });

  final String title;

  final List<Topic> topics;

  final Key? key;

  @override
  String toString() {
    return 'SimpleArticlesRouteArgs{title: $title, topics: $topics, key: $key}';
  }
}

/// generated route for
/// [UniverseAnswerPage]
class UniverseAnswerRoute extends PageRouteInfo<UniverseAnswerRouteArgs> {
  UniverseAnswerRoute({
    required UniverseAnswer answer,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         UniverseAnswerRoute.name,
         args: UniverseAnswerRouteArgs(answer: answer, key: key),
         initialChildren: children,
       );

  static const String name = 'UniverseAnswerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UniverseAnswerRouteArgs>();
      return UniverseAnswerPage(answer: args.answer, key: args.key);
    },
  );
}

class UniverseAnswerRouteArgs {
  const UniverseAnswerRouteArgs({required this.answer, this.key});

  final UniverseAnswer answer;

  final Key? key;

  @override
  String toString() {
    return 'UniverseAnswerRouteArgs{answer: $answer, key: $key}';
  }
}

/// generated route for
/// [UniversePage]
class UniverseRoute extends PageRouteInfo<void> {
  const UniverseRoute({List<PageRouteInfo>? children})
    : super(UniverseRoute.name, initialChildren: children);

  static const String name = 'UniverseRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UniversePage();
    },
  );
}

/// generated route for
/// [UniverseQuestionSettingsPage]
class UniverseQuestionSettingsRoute extends PageRouteInfo<void> {
  const UniverseQuestionSettingsRoute({List<PageRouteInfo>? children})
    : super(UniverseQuestionSettingsRoute.name, initialChildren: children);

  static const String name = 'UniverseQuestionSettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UniverseQuestionSettingsPage();
    },
  );
}

/// generated route for
/// [UniverseShellPage]
class UniverseShellRoute extends PageRouteInfo<void> {
  const UniverseShellRoute({List<PageRouteInfo>? children})
    : super(UniverseShellRoute.name, initialChildren: children);

  static const String name = 'UniverseShellRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UniverseShellPage();
    },
  );
}

/// generated route for
/// [VideoPage]
class VideoRoute extends PageRouteInfo<VideoRouteArgs> {
  VideoRoute({required String url, Key? key, List<PageRouteInfo>? children})
    : super(
        VideoRoute.name,
        args: VideoRouteArgs(url: url, key: key),
        initialChildren: children,
      );

  static const String name = 'VideoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VideoRouteArgs>();
      return VideoPage(url: args.url, key: args.key);
    },
  );
}

class VideoRouteArgs {
  const VideoRouteArgs({required this.url, this.key});

  final String url;

  final Key? key;

  @override
  String toString() {
    return 'VideoRouteArgs{url: $url, key: $key}';
  }
}

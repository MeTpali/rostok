import 'dart:async';

import 'package:riverpod/riverpod.dart';

import '../../../data/repositories/library/library_repository.dart';
import '../../../di/di.dart';
import '../../../domain/models/articles/comment/comment.dart';
import 'arcticle/article_notifier.dart';
import 'arcticle/article_state.dart';
import 'arcticles/arcticles_notifier.dart';
import 'arcticles/arcticles_state.dart';
import 'comments/comments_notifier.dart';
import 'library/library_notifier.dart';
import 'library/library_state.dart';
import 'same_articles/same_arcticles_notifier.dart';
import 'same_articles/same_arcticles_state.dart';

abstract class ArticlesDi {
  static final libraryProvider =
      StateNotifierProvider<LibraryNotifier, LibraryState>((ref) {
        final libraryNotifier = LibraryNotifier(
          libraryRepository: getIt<LibraryRepository>(),
        );
        unawaited(libraryNotifier.init());
        return libraryNotifier;
      });

  static final arcticlesProvider =
      StateNotifierProvider<ArcticlesNotifier, ArcticlesState>(
        (ref) =>
            ArcticlesNotifier(libraryRepository: getIt<LibraryRepository>()),
      );

  static final arcticleProvider =
      StateNotifierProvider<ArticleNotifier, ArcticleState>(
        (ref) => ArticleNotifier(libraryRepository: getIt<LibraryRepository>()),
      );

  static final sameArcticlesProvider =
      StateNotifierProvider<SameArcticlesNotifier, SameArcticlesState>(
        (ref) => SameArcticlesNotifier(
          libraryRepository: getIt<LibraryRepository>(),
        ),
      );

  static final commentsProvider =
      StateNotifierProvider<CommentsNotifier, List<Comment>>(
        (ref) =>
            CommentsNotifier(libraryRepository: getIt<LibraryRepository>()),
      );
}

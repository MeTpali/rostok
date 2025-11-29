import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/repositories/library/library_repository.dart';
import 'article_state.dart';

class ArticleNotifier extends StateNotifier<ArcticleState> {
  final LibraryRepository _libraryRepository;
  ArticleNotifier({required LibraryRepository libraryRepository})
    : _libraryRepository = libraryRepository,
      super(const ArcticleState.idle());

  Future<void> tryFetchArcticles() async => state.mapOrNull(
    resolved: (article) async => fetchArticle(articleId: article.id),
  );

  Future<void> fetchArticle({required int articleId}) async {
    state = const ArcticleState.loading();
    final result = await _libraryRepository.fetchArticle(articleId: articleId);

    result.when(
      success: (arcticle) => state = ArcticleState.resolved(
        id: arcticle.id,
        title: arcticle.title,
        content: arcticle.content,
        publisherName: arcticle.publisherName,
        publishDate: arcticle.publishDate,
        commentsCount: arcticle.commentsCount,
        isFavourite: arcticle.isFavourite,
      ),
      error: (_) => state = const ArcticleState.idle(),
    );
  }

  Future<void> likeArticle({required int articleId}) async {
    state = const ArcticleState.loading();
    final result = await _libraryRepository.likeArticle(articleId: articleId);

    result.when(
      success: (arcticle) => state = ArcticleState.resolved(
        id: arcticle.id,
        title: arcticle.title,
        content: arcticle.content,
        publisherName: arcticle.publisherName,
        publishDate: arcticle.publishDate,
        commentsCount: arcticle.commentsCount,
        isFavourite: arcticle.isFavourite,
      ),
      error: (_) => state = const ArcticleState.idle(),
    );
  }
}

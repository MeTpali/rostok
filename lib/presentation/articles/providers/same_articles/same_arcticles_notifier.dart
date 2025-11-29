import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/repositories/library/library_repository.dart';
import 'same_arcticles_state.dart';

class SameArcticlesNotifier extends StateNotifier<SameArcticlesState> {
  final LibraryRepository _libraryRepository;
  SameArcticlesNotifier({required LibraryRepository libraryRepository})
    : _libraryRepository = libraryRepository,
      super(const SameArcticlesState.idle());

  Future<void> tryFetchArcticles() async => state.whenOrNull(
    resolved: (articleId, _) async => fetchSameArticles(articleId: articleId),
  );

  Future<void> fetchSameArticles({required int articleId}) async {
    state = const SameArcticlesState.loading();
    final result = await _libraryRepository.fetchSameArticles(
      articleId: articleId,
    );

    result.when(
      success: (arcticles) => state = SameArcticlesState.resolved(
        articleId: articleId,
        arcticles: arcticles,
      ),
      error: (_) => state = const SameArcticlesState.idle(),
    );
  }
}

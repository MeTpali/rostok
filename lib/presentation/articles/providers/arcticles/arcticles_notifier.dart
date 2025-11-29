import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/repositories/library/library_repository.dart';
import 'arcticles_state.dart';

class ArcticlesNotifier extends StateNotifier<ArcticlesState> {
  final LibraryRepository _libraryRepository;
  ArcticlesNotifier({required LibraryRepository libraryRepository})
    : _libraryRepository = libraryRepository,
      super(const ArcticlesState.idle());

  Future<void> tryFetchArcticles() async => state.whenOrNull(
    resolved: (topicId, _) async => fetchArcticles(topicId: topicId),
  );

  Future<void> fetchArcticles({required int topicId}) async {
    state = const ArcticlesState.loading();
    final result = await _libraryRepository.fetchArticles(topicId: topicId);

    result.when(
      success: (arcticles) => state = ArcticlesState.resolved(
        topicId: topicId,
        arcticles: arcticles,
      ),
      error: (_) => state = const ArcticlesState.idle(),
    );
  }
}

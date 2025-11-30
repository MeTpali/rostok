import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/repositories/library/library_repository.dart';
import '../../../../domain/models/articles/topic/topic.dart';
import '../../../profile/providers/profile/profile_notifier.dart';
import '../../../profile/providers/profile/profile_state.dart';

class FavouriteArticlesNotifier extends StateNotifier<List<Topic>> {
  final LibraryRepository _libraryRepository;
  final ProfileNotifier _authNotifier;

  FavouriteArticlesNotifier({
    required LibraryRepository libraryRepository,
    required ProfileNotifier authNotifier,
  }) : _libraryRepository = libraryRepository,
       _authNotifier = authNotifier,
       super([]);

  StreamSubscription<ProfileState>? _authSub;

  Future<void> init() async {
    _authSub ??= _authNotifier.stream.listen(_onAuth);
    await fetchFavorites();
  }

  Future<void> _onAuth(ProfileState authState) async {
    if (!mounted) return;

    await authState.mapOrNull(
      authorized: (_) async => fetchFavorites(),
      unauthorized: (_) async => state = [],
    );
  }

  Future<void> fetchFavorites() async {
    final result = await _libraryRepository.fetchFavouriteArticles();
    result.when(
      success: (favoritesList) => state = favoritesList,
      error: (message) {
        state = [];
      },
    );
  }

  Future<void> toggleFavorite(int id) async {
    final result = await _libraryRepository.toggleLikeArticle(id: id);
    result.when(
      success: (favoritesList) => state = favoritesList,
      error: (message) {
        state = [];
      },
    );
  }

  @override
  void dispose() {
    unawaited(_authSub?.cancel());
    super.dispose();
  }
}

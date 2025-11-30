import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/repositories/masters/masters_repository.dart';
import '../../../../domain/models/masters/master_model/master_model.dart';
import '../../../profile/providers/profile/profile_notifier.dart';
import '../../../profile/providers/profile/profile_state.dart';

class FavouriteMastersNotifier extends StateNotifier<List<MasterModel>> {
  final MastersRepository _mastersRepository;
  final ProfileNotifier _authNotifier;

  FavouriteMastersNotifier({
    required MastersRepository mastersRepository,
    required ProfileNotifier authNotifier,
  }) : _mastersRepository = mastersRepository,
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
    final result = await _mastersRepository.fetchFavouriteMasters();
    result.when(
      success: (favoritesList) => state = favoritesList,
      error: (message) {
        state = [];
      },
    );
  }

  Future<void> toggleFavorite(int id) async {
    final result = await _mastersRepository.toggleLikeMaster(id: id);
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

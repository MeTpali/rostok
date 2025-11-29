import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/repositories/masters/masters_repository.dart';
import 'master_articles_state.dart';

class MasterArticlesNotifier extends StateNotifier<MasterArticlesState> {
  final MastersRepository _mastersRepository;
  MasterArticlesNotifier({required MastersRepository mastersRepository})
    : _mastersRepository = mastersRepository,
      super(const MasterArticlesState.idle());

  Future<void> fetchArticles({required int masterId}) async {
    final backup = state;

    state = const MasterArticlesState.loading();

    final result = await _mastersRepository.fetchArticles(masterId: masterId);

    result.when(
      success: (comments) =>
          state = MasterArticlesState.resolved(articles: comments),
      error: (_) => state = backup,
    );
  }
}

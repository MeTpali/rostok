import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/repositories/masters/masters_repository.dart';
import 'master_comments_state.dart';

class MasterCommentsNotifier extends StateNotifier<MasterCommentsState> {
  final MastersRepository _mastersRepository;
  MasterCommentsNotifier({required MastersRepository mastersRepository})
    : _mastersRepository = mastersRepository,
      super(const MasterCommentsState.idle());

  Future<void> fetchComments({required int masterId}) async {
    final backup = state;

    state = const MasterCommentsState.loading();

    final result = await _mastersRepository.fetchComments(masterId: masterId);

    result.when(
      success: (comments) =>
          state = MasterCommentsState.resolved(comments: comments),
      error: (_) => state = backup,
    );
  }
}

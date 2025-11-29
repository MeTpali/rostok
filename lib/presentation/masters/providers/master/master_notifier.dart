import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/repositories/masters/masters_repository.dart';
import 'master_state.dart';

class MasterNotifier extends StateNotifier<MasterState> {
  final MastersRepository _mastersRepository;
  MasterNotifier({required MastersRepository mastersRepository})
    : _mastersRepository = mastersRepository,
      super(const MasterState.idle());

  Future<bool> fetchMaster({required int id}) async {
    final backup = state;
    state = const MasterState.loading();

    final result = await _mastersRepository.fetchMaster(id: id);

    result.when(
      success: (master) => state = MasterState.resolved(master: master),
      error: (error) => state = backup,
    );
    return true;
  }
}

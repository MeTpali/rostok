import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/repositories/masters/masters_repository.dart';
import '../../../../domain/models/masters/master/master.dart';
import 'preview_masters_state.dart';

class PreviewMastersNotifier extends StateNotifier<PreviewMastersState> {
  final MastersRepository _mastersRepository;
  PreviewMastersNotifier({required MastersRepository mastersRepository})
    : _mastersRepository = mastersRepository,
      super(const PreviewMastersState.idle());

  Future<void> init() => fetchMasters();

  Future<bool> fetchMasters({String? topic, String? practice}) async {
    final backup = state;
    state = const PreviewMastersState.loading();

    final result = await _mastersRepository.fetchMasters(page: 1, limit: 4);

    return result.when(
      success: (value) {
        state = PreviewMastersState.resolved(
          masters: value.masters.map((m) => Master.fromModel(m)).toList(),
        );
        return true;
      },
      error: (message) {
        state = backup;
        return false;
      },
    );
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/repositories/practices/practices_repository.dart';
import 'practices_state.dart';

class PracticesNotifier extends StateNotifier<PracticesState> {
  final PracticesRepository _practicesRepository;
  PracticesNotifier({required PracticesRepository practicesRepository})
    : _practicesRepository = practicesRepository,
      super(const PracticesState.idle());

  Future<void> init() async => fetchPractices();

  Future<void> fetchPractices() async {
    state = const PracticesState.loading();
    final result = await _practicesRepository.fetchPractices();

    result.when(
      success: (practices) =>
          state = PracticesState.resolved(practices: practices),
      error: (_) => state = const PracticesState.idle(),
    );
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/repositories/masters/masters_repository.dart';
import '../../../../domain/models/masters/master/master.dart';
import 'masters_state.dart';

class MastersNotifier extends StateNotifier<MastersState> {
  final MastersRepository _mastersRepository;
  MastersNotifier({required MastersRepository mastersRepository})
    : _mastersRepository = mastersRepository,
      super(const MastersState.idle());
  final _limit = 20;
  int? totalPages;
  bool get hasNextPage => state.maybeMap(
    orElse: () => false,
    resolved: (value) => value.page < (totalPages ?? 1),
  );

  Future<void> init() => fetchMasters();

  Future<bool> fetchMasters({String? topic, String? practice}) async {
    state = const MastersState.loading();

    final masters = await _loadMasters(
      page: 1,
      topic: topic,
      practice: practice,
    );

    if (masters == null) {
      state = const MastersState.idle();
      return false;
    }

    state = MastersState.resolved(
      page: 1,
      masters: masters,
      topic: topic,
      practice: practice,
    );
    return true;
  }

  Future<void> fetchNextPage() async {
    if (!hasNextPage) return;

    final (masters, topic, practice) = state.maybeMap(
      resolved: (value) =>
          (List<Master>.from(value.masters), value.topic, value.practice),
      orElse: () => (<Master>[], null, null),
    );
    final page = state.mapOrNull(resolved: (value) => value.page + 1) ?? 1;

    final newMasters = await _loadMasters(
      page: page,
      topic: topic,
      practice: practice,
    );

    if (newMasters == null) {
      state = const MastersState.idle();
      return;
    }

    masters.addAll(newMasters);

    state = MastersState.resolved(page: page, masters: masters);
  }

  Future<List<Master>?> _loadMasters({
    required int page,
    String? topic,
    String? practice,
  }) async {
    final result = await _mastersRepository.fetchMasters(
      page: page,
      limit: _limit,
      topic: topic,
      practice: practice,
    );

    return result.whenOrNull(
      success: (mastersList) {
        totalPages = mastersList.totalPages;

        return mastersList.masters
            .map((masterModel) => Master.fromModel(masterModel))
            .toList();
      },
    );
  }

  void sortProducts(SortType sortType) {
    final curState = state;
    if (!(curState is ResolvedMastersState)) {
      return;
    }

    final curSort = curState.sortType;
    if (curSort == sortType) {
      return;
    }

    state = curState.copyWith(sortType: sortType);
  }
}

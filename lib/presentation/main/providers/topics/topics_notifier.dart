import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/repositories/topics/topics_repository.dart';
import 'topics_state.dart';

class TopicsNotifier extends StateNotifier<TopicsState> {
  final TopicsRepository _topicsRepository;
  TopicsNotifier({required TopicsRepository topicsRepository})
    : _topicsRepository = topicsRepository,
      super(const TopicsState.idle());

  Future<void> init() async => fetchTopics();

  Future<void> fetchTopics() async {
    state = const TopicsState.loading();
    final result = await _topicsRepository.fetchTopics();

    result.when(
      success: (topics) => state = TopicsState.resolved(topics: topics),
      error: (_) => state = const TopicsState.idle(),
    );
  }
}

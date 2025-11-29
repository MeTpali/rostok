import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/articles/topic/topic.dart';

part 'arcticles_state.freezed.dart';

@freezed
class ArcticlesState with _$ArcticlesState {
  const factory ArcticlesState.loading() = LoadingArcticlesState;

  const factory ArcticlesState.resolved({
    required int topicId,
    required List<Topic> arcticles,
  }) = ResolvedArcticlesState;

  const factory ArcticlesState.idle() = IdleArcticlesState;
}

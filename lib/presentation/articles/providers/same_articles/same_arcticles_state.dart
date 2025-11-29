import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/articles/topic/topic.dart';

part 'same_arcticles_state.freezed.dart';

@freezed
class SameArcticlesState with _$SameArcticlesState {
  const factory SameArcticlesState.loading() = LoadingSameArcticlesState;

  const factory SameArcticlesState.resolved({
    required int articleId,
    required List<Topic> arcticles,
  }) = ResolvedSameArcticlesState;

  const factory SameArcticlesState.idle() = IdleSameArcticlesState;
}

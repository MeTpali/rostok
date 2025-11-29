import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_state.freezed.dart';

@freezed
class ArcticleState with _$ArcticleState {
  const factory ArcticleState.loading() = LoadingArcticleState;

  const factory ArcticleState.resolved({
    required int id,
    required String title,
    required String content,
    required String publisherName,
    required DateTime publishDate,
    required int commentsCount,
    @Default(false) bool isFavourite,
  }) = ResolvedArcticleState;

  const factory ArcticleState.idle() = IdleArcticleState;
}

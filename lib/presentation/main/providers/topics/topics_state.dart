import 'package:freezed_annotation/freezed_annotation.dart';

part 'topics_state.freezed.dart';

@freezed
class TopicsState with _$TopicsState {
  const factory TopicsState.loading() = LoadingTopicsState;

  const factory TopicsState.resolved({required List<String> topics}) =
      ResolvedTopicsState;

  const factory TopicsState.idle() = IdleTopicsState;
}

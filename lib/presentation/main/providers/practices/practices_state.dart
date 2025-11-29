import 'package:freezed_annotation/freezed_annotation.dart';

part 'practices_state.freezed.dart';

@freezed
class PracticesState with _$PracticesState {
  const factory PracticesState.loading() = LoadingPracticesState;

  const factory PracticesState.resolved({required List<String> practices}) =
      ResolvedPracticesState;

  const factory PracticesState.idle() = IdlePracticesState;
}

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/masters/master/master.dart';

part 'preview_masters_state.freezed.dart';

@freezed
class PreviewMastersState with _$PreviewMastersState {
  const factory PreviewMastersState.loading() = LoadingPreviewMastersState;

  const factory PreviewMastersState.resolved({required List<Master> masters}) =
      ResolvedPreviewMastersState;

  const factory PreviewMastersState.idle() = IdlePreviewMastersState;

  const factory PreviewMastersState.error(String message) =
      ErrorPreviewMastersState;
}

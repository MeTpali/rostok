import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/masters/master_comment/master_comment.dart';

part 'master_comments_state.freezed.dart';

@freezed
class MasterCommentsState with _$MasterCommentsState {
  const factory MasterCommentsState.loading() = LoadingMasterCommentsState;

  const factory MasterCommentsState.resolved({
    @Default([]) List<MasterComment> comments,
  }) = ResolvedMasterCommentsState;

  const factory MasterCommentsState.idle() = IdleMasterCommentsState;

  const factory MasterCommentsState.error(String message) =
      ErrorMasterCommentsState;
}

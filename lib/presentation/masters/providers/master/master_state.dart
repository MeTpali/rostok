import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/masters/master_profile/master_profile.dart';

part 'master_state.freezed.dart';

@freezed
class MasterState with _$MasterState {
  const factory MasterState.loading() = LoadingMasterState;

  const factory MasterState.resolved({required MasterProfile master}) =
      ResolvedMasterState;

  const factory MasterState.idle() = IdleMasterState;

  const factory MasterState.error(String message) = ErrorMasterState;
}

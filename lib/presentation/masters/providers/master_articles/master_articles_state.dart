import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/articles/topic/topic.dart';

part 'master_articles_state.freezed.dart';

@freezed
class MasterArticlesState with _$MasterArticlesState {
  const factory MasterArticlesState.loading() = LoadingMasterArticlesState;

  const factory MasterArticlesState.resolved({
    @Default([]) List<Topic> articles,
  }) = ResolvedMasterArticlesState;

  const factory MasterArticlesState.idle() = IdleMasterArticlesState;
}

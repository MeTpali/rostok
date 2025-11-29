import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/articles/knowledge/knowledge.dart';

part 'library_state.freezed.dart';

@freezed
class LibraryState with _$LibraryState {
  const factory LibraryState.loading() = LoadingLibraryState;

  const factory LibraryState.resolved({required List<Knowledge> knowledges}) =
      ResolvedLibraryState;

  const factory LibraryState.idle() = IdleLibraryState;
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/repositories/library/library_repository.dart';
import 'library_state.dart';

class LibraryNotifier extends StateNotifier<LibraryState> {
  final LibraryRepository _libraryRepository;
  LibraryNotifier({required LibraryRepository libraryRepository})
    : _libraryRepository = libraryRepository,
      super(const LibraryState.idle());

  Future<void> init() async => fetchLibrary();

  Future<void> fetchLibrary() async {
    state = const LibraryState.loading();
    final result = await _libraryRepository.fetchLibrary();

    result.when(
      success: (knowledges) =>
          state = LibraryState.resolved(knowledges: knowledges),
      error: (_) => state = const LibraryState.idle(),
    );
  }
}

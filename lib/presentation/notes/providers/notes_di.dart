import 'dart:async';

import 'package:riverpod/riverpod.dart';

import '../../../data/repositories/bookings/bookings_repository.dart';
import '../../../di/di.dart';
import 'notes_notifier.dart';
import 'notes_state.dart';

abstract class NotesDi {
  static final notesProvider =
      StateNotifierProvider.autoDispose<NotesNotifier, NotesState>((ref) {
        final notesNotifier = NotesNotifier(
          bookingsRepository: getIt<BookingsRepository>(),
        );
        unawaited(notesNotifier.init());
        return notesNotifier;
      });
}


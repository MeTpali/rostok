import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/bookings/booking/booking.dart';

part 'notes_state.freezed.dart';

@freezed
class NotesState with _$NotesState {
  const factory NotesState.idle() = IdleNotesState;

  const factory NotesState.loading() = LoadingNotesState;

  const factory NotesState.resolved({
    required List<Booking> bookings,
  }) = ResolvedNotesState;

  const factory NotesState.error(String message) = ErrorNotesState;
}


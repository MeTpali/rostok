import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/repositories/bookings/bookings_repository.dart';
import '../../../domain/models/bookings/booking/booking.dart';
import 'notes_state.dart';

class NotesNotifier extends StateNotifier<NotesState> {
  final BookingsRepository _bookingsRepository;

  NotesNotifier({required BookingsRepository bookingsRepository})
      : _bookingsRepository = bookingsRepository,
        super(const NotesState.idle());

  Future<void> init() async {
    state = const NotesState.loading();

    final result = await _bookingsRepository.getBookings();

    result.when(
      success: (bookings) => state = NotesState.resolved(bookings: bookings),
      error: (_) => state = const NotesState.error('Не удалось загрузить записи'),
    );
  }

  Future<void> refresh() async {
    final result = await _bookingsRepository.getBookings();

    result.when(
      success: (bookings) => state = NotesState.resolved(bookings: bookings),
      error: (_) => state = const NotesState.error('Не удалось загрузить записи'),
    );
  }

  Future<bool> deleteBooking(Booking booking) async {
    final result = await _bookingsRepository.deleteBooking(booking);

    return result.when(
      success: (_) {
        // Refresh the list after deletion
        refresh();
        return true;
      },
      error: (_) {
        state = const NotesState.error('Не удалось удалить запись');
        return false;
      },
    );
  }
}


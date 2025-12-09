import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/repositories/bookings/bookings_repository.dart';
import '../../../../data/repositories/masters/masters_repository.dart';
import '../../../../domain/models/bookings/booking/booking.dart';
import '../../../../domain/models/masters/master_profile/master_profile.dart';
import 'booking_state.dart';

class BookingNotifier extends StateNotifier<BookingState> {
  final MastersRepository _mastersRepository;
  final BookingsRepository _bookingsRepository;

  BookingNotifier({
    required MastersRepository mastersRepository,
    required BookingsRepository bookingsRepository,
  })  : _mastersRepository = mastersRepository,
        _bookingsRepository = bookingsRepository,
        super(const BookingState.idle());

  Future<void> init({required int masterId}) async {
    state = const BookingState.loading();

    final result = await _mastersRepository.fetchMaster(id: masterId);

    result.when(
      success: (master) {
        final timeSlots = _generateTimeSlots(master);
        state = BookingState.resolved(
          master: master,
          selectedTopic: null,
          selectedDateTime: null,
          availableTimeSlots: timeSlots,
        );
      },
      error: (_) => state = const BookingState.error('Не удалось загрузить данные мастера'),
    );
  }

  void selectTopic(String topic) {
    state.maybeWhen(
      resolved: (master, selectedTopic, selectedDateTime, availableTimeSlots) {
        // Toggle: if already selected, deselect it
        final newTopic = selectedTopic == topic ? null : topic;
        state = BookingState.resolved(
          master: master,
          selectedTopic: newTopic,
          selectedDateTime: selectedDateTime,
          availableTimeSlots: availableTimeSlots,
        );
      },
      orElse: () {},
    );
  }

  void selectDateTime(DateTime dateTime) {
    state.maybeWhen(
      resolved: (master, selectedTopic, selectedDateTime, availableTimeSlots) {
        // Toggle: if already selected, deselect it
        final isAlreadySelected = selectedDateTime != null &&
            selectedDateTime.year == dateTime.year &&
            selectedDateTime.month == dateTime.month &&
            selectedDateTime.day == dateTime.day &&
            selectedDateTime.hour == dateTime.hour &&
            selectedDateTime.minute == dateTime.minute;
        final newDateTime = isAlreadySelected ? null : dateTime;
        state = BookingState.resolved(
          master: master,
          selectedTopic: selectedTopic,
          selectedDateTime: newDateTime,
          availableTimeSlots: availableTimeSlots,
        );
      },
      orElse: () {},
    );
  }

  Future<bool> submitBooking() async {
    return state.maybeWhen(
      resolved: (master, selectedTopic, selectedDateTime, _) async {
        if (selectedTopic == null || selectedDateTime == null) {
          state = const BookingState.error('Выберите тему и время');
          return false;
        }

        final booking = Booking(
          dateTime: selectedDateTime,
          masterFirstName: master.firstName,
          masterLastName: master.lastName,
          topic: selectedTopic,
          duration: master.timing,
          conferenceLink: 'https://meet.google.com/room-${master.id}-${selectedDateTime.millisecondsSinceEpoch}',
        );

        final result = await _bookingsRepository.addBooking(booking);

        return result.when(
          success: (_) => true,
          error: (_) {
            state = const BookingState.error('Не удалось создать запись');
            return false;
          },
        );
      },
      orElse: () {
        state = const BookingState.error('Неверное состояние');
        return false;
      },
    );
  }

  List<DateTime> _generateTimeSlots(MasterProfile master) {
    final timing = master.timing;
    final now = DateTime.now();
    final slots = <DateTime>[];

    // Generate slots for the next 2 weeks
    for (int dayOffset = 0; dayOffset < 14; dayOffset++) {
      final date = DateTime(now.year, now.month, now.day).add(Duration(days: dayOffset));
      final weekday = date.weekday;

      // Skip weekends (Saturday = 6, Sunday = 7)
      if (weekday == 6 || weekday == 7) continue;

      // Define working hours: 10:00 - 20:00
      final startHour = 10;
      final endHour = 20;

      // Break between slots (15 minutes)
      final breakDuration = 15;
      final slotDuration = timing + breakDuration;

      // Generate time slots for this day
      int currentHour = startHour;
      int currentMinute = 0;

      while (currentHour < endHour) {
        // Skip lunch break (13:00-14:00)
        if (currentHour == 13) {
          currentHour = 14;
          currentMinute = 0;
          continue;
        }

        final slotTime = DateTime(
          date.year,
          date.month,
          date.day,
          currentHour,
          currentMinute,
        );

        // Skip past times for today
        if (dayOffset == 0 && slotTime.isBefore(now.add(Duration(minutes: timing + 30)))) {
          // Move to next slot
          currentMinute += slotDuration;
          if (currentMinute >= 60) {
            currentHour += currentMinute ~/ 60;
            currentMinute = currentMinute % 60;
          }
          continue;
        }

        // Make sure we don't exceed end hour
        final slotEndHour = currentHour + (currentMinute + timing) ~/ 60;
        if (slotEndHour > endHour) break;

        slots.add(slotTime);

        // Move to next slot
        currentMinute += slotDuration;
        if (currentMinute >= 60) {
          currentHour += currentMinute ~/ 60;
          currentMinute = currentMinute % 60;
        }
      }
    }

    return slots;
  }
}


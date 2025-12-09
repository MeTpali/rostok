import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/repositories/masters/masters_repository.dart';
import '../../../../domain/models/masters/master_profile/master_profile.dart';
import 'booking_state.dart';

class BookingNotifier extends StateNotifier<BookingState> {
  final MastersRepository _mastersRepository;

  BookingNotifier({required MastersRepository mastersRepository})
      : _mastersRepository = mastersRepository,
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

  void selectTopic(String? topic) {
    state.maybeWhen(
      resolved: (master, selectedTopic, selectedDateTime, availableTimeSlots) {
        state = BookingState.resolved(
          master: master,
          selectedTopic: topic,
          selectedDateTime: selectedDateTime,
          availableTimeSlots: availableTimeSlots,
        );
      },
      orElse: () {},
    );
  }

  void selectDateTime(DateTime dateTime) {
    state.maybeWhen(
      resolved: (master, selectedTopic, _, availableTimeSlots) {
        state = BookingState.resolved(
          master: master,
          selectedTopic: selectedTopic,
          selectedDateTime: dateTime,
          availableTimeSlots: availableTimeSlots,
        );
      },
      orElse: () {},
    );
  }

  Future<bool> submitBooking() async {
    return state.maybeWhen(
      resolved: (master, selectedTopic, selectedDateTime, _) {
        if (selectedTopic == null || selectedDateTime == null) {
          state = const BookingState.error('Выберите тему и время');
          return false;
        }
        // TODO: Implement actual booking submission
        return true;
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


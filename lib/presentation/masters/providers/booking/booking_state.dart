import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/masters/master_profile/master_profile.dart';

part 'booking_state.freezed.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState.idle() = IdleBookingState;

  const factory BookingState.loading() = LoadingBookingState;

  const factory BookingState.resolved({
    required MasterProfile master,
    required String? selectedTopic,
    required DateTime? selectedDateTime,
    required List<DateTime> availableTimeSlots,
  }) = ResolvedBookingState;

  const factory BookingState.error(String message) = ErrorBookingState;
}


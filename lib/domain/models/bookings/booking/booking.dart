import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking.freezed.dart';

@freezed
class Booking with _$Booking {
  const factory Booking({
    required DateTime dateTime,
    required String masterFirstName,
    required String masterLastName,
    required String topic,
    required int duration, // длительность в минутах
    required String conferenceLink, // ссылка на конференцию
  }) = _Booking;
}


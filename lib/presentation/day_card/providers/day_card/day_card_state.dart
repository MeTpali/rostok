import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_card_state.freezed.dart';

@freezed
class DayCardState with _$DayCardState {
  const factory DayCardState.idle({@Default(false) bool isLoading}) =
      IdleDayCardState;

  const factory DayCardState.card({
    required String title,
    required String description,
    @Default(false) bool isLoading,
  }) = CardDayCardState;
}

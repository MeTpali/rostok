import 'package:freezed_annotation/freezed_annotation.dart';

part 'universe_answer.freezed.dart';

@freezed
class UniverseAnswer with _$UniverseAnswer {
  const factory UniverseAnswer({
    required String sunSign,
    required String moonSign,
    required String ascendent,
    required String answer,
  }) = _UniverseAnswer;
}

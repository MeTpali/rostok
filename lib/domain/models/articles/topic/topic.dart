import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic.freezed.dart';

@freezed
class Topic with _$Topic {
  const factory Topic({
    required int id,
    required String title,
    required String description,
  }) = _Topic;
}

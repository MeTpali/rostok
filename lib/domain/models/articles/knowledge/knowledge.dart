import 'package:freezed_annotation/freezed_annotation.dart';

import '../topic/topic.dart';

part 'knowledge.freezed.dart';

@freezed
class Knowledge with _$Knowledge {
  const factory Knowledge({
    required int id,
    required String title,
    required List<Topic> topics,
  }) = _Knowledge;
}

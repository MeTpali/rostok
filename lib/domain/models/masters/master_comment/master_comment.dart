import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_comment.freezed.dart';

@freezed
class MasterComment with _$MasterComment {
  const factory MasterComment({
    required String name,
    required DateTime dateTime,
    required int star,
    required List<String> topics,
    required String descrption,
  }) = _MasterComment;
}

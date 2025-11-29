import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.freezed.dart';

@freezed
class Comment with _$Comment {
  const factory Comment({
    required int id,
    required String sender,
    required DateTime dateTime,
    required String content,
    String? senderImageUrl,
    @Default([]) List<Comment> subcomments,
  }) = _Comment;
}

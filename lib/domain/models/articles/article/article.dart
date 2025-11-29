import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

@freezed
class Article with _$Article {
  const factory Article({
    required int id,
    required String title,
    required String content,
    required String publisherName,
    required DateTime publishDate,
    required int commentsCount,
    @Default(false) bool isFavourite,
  }) = _Article;
}

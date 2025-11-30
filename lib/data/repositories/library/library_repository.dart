import '../../../core/entities/result/result.dart';
import '../../../domain/models/articles/article/article.dart';
import '../../../domain/models/articles/comment/comment.dart';
import '../../../domain/models/articles/knowledge/knowledge.dart';
import '../../../domain/models/articles/topic/topic.dart';

abstract class LibraryRepository {
  /// Запрос на получение базы знаний.
  Future<Result<List<Knowledge>>> fetchLibrary();

  /// Запрос на получение статей для темы из базы знаний.
  Future<Result<List<Topic>>> fetchArticles({required int topicId});

  /// Запрос на получение статьи.
  Future<Result<Article>> fetchArticle({required int articleId});

  /// Запрос на получение похожих статей.
  Future<Result<List<Topic>>> fetchSameArticles({required int articleId});

  /// Запрос на получение списка статей, написанных мастером.
  Future<Result<List<Topic>>> fetchFavouriteArticles();

  /// Запрос на получение списка статей, написанных мастером.
  Future<Result<List<Topic>>> toggleLikeArticle({required int id});

  /// Запрос на добавление статьи в избранное.
  Future<Result<Article>> likeArticle({required int articleId});

  /// Запрос на получение комментариев к статье.
  Future<Result<List<Comment>>> fetchComments({required int articleId});

  /// Запрос на создание коммментария.
  Future<Result<List<Comment>>> createComment({
    required int articleId,
    required String text,
    int? parentId,
  });

  /// Запрос на создание коммментария.
  Future<Result<void>> deleteComment({
    required int articleId,
    required int commentId,
  });
}

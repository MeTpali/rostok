import '../../../core/entities/result/result.dart';
import '../../../domain/models/articles/article/article.dart';
import '../../../domain/models/articles/comment/comment.dart';
import '../../../domain/models/articles/knowledge/knowledge.dart';
import '../../../domain/models/articles/topic/topic.dart';
import 'library_repository.dart';

class LibraryRemoteRepository implements LibraryRepository {
  const LibraryRemoteRepository();

  @override
  Future<Result<List<Knowledge>>> fetchLibrary() {
    // TODO: implement fetchLibrary
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Topic>>> fetchArticles({required int topicId}) {
    // TODO: implement fetchSubtopics
    throw UnimplementedError();
  }

  @override
  Future<Result<Article>> fetchArticle({required int articleId}) {
    // TODO: implement fetchArticle
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Topic>>> fetchSameArticles({required int articleId}) {
    // TODO: implement fetchSameArticles
    throw UnimplementedError();
  }

  @override
  Future<Result<Article>> likeArticle({required int articleId}) {
    // TODO: implement likeArticle
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Comment>>> createComment({
    required int articleId,
    required String text,
    int? parentId,
  }) {
    // TODO: implement createComment
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> deleteComment({
    required int articleId,
    required int commentId,
  }) {
    // TODO: implement deleteComment
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Comment>>> fetchComments({required int articleId}) {
    // TODO: implement fetchComments
    throw UnimplementedError();
  }
}

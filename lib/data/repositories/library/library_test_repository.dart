import '../../../core/entities/result/result.dart';
import '../../../domain/models/articles/article/article.dart';
import '../../../domain/models/articles/comment/comment.dart';
import '../../../domain/models/articles/knowledge/knowledge.dart';
import '../../../domain/models/articles/topic/topic.dart';
import '../../services/library/library_test_service.dart';
import 'library_repository.dart';

class LibraryTestRepository implements LibraryRepository {
  final LibraryTestService _libraryService;
  const LibraryTestRepository({required LibraryTestService libraryService})
    : _libraryService = libraryService;

  @override
  Future<Result<List<Knowledge>>> fetchLibrary() async {
    final library = await _libraryService.fetchLibrary();
    return Result.success(library);
  }

  @override
  Future<Result<List<Topic>>> fetchArticles({required int topicId}) async {
    final articles = await _libraryService.fetchArticles(topicId: topicId);
    return Result.success(articles);
  }

  @override
  Future<Result<Article>> fetchArticle({required int articleId}) async {
    final article = await _libraryService.fetchArticle(articleId: articleId);
    return Result.success(article);
  }

  @override
  Future<Result<List<Topic>>> fetchSameArticles({
    required int articleId,
  }) async {
    final articles = await _libraryService.fetchSameArticles(
      articleId: articleId,
    );
    return Result.success(articles);
  }

  @override
  Future<Result<Article>> likeArticle({required int articleId}) async {
    final article = await _libraryService.likeArticle(articleId: articleId);
    return Result.success(article);
  }

  @override
  Future<Result<List<Comment>>> fetchComments({required int articleId}) async {
    final comments = await _libraryService.fetchComments(articleId: articleId);
    return Result.success(comments);
  }

  @override
  Future<Result<List<Comment>>> createComment({
    required int articleId,
    required String text,
    int? parentId,
  }) async {
    final comments = await _libraryService.createComment(
      articleId: articleId,
      text: text,
      parentId: parentId,
    );
    return Result.success(comments);
  }

  @override
  Future<Result<void>> deleteComment({
    required int articleId,
    required int commentId,
  }) async {
    await _libraryService.deleteComment(
      articleId: articleId,
      commentId: commentId,
    );
    return const Result.success(null);
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/entities/result/result.dart';
import '../../../../data/repositories/library/library_repository.dart';
import '../../../../domain/models/articles/comment/comment.dart';

class CommentsNotifier extends StateNotifier<List<Comment>> {
  final LibraryRepository _libraryRepository;
  CommentsNotifier({required LibraryRepository libraryRepository})
    : _libraryRepository = libraryRepository,
      super([]);

  Future<void> fetchComments({required int articleId}) async {
    final result = await _libraryRepository.fetchComments(articleId: articleId);

    result.whenOrNull(success: (comments) => state = comments);
  }

  Future<Result<List<Comment>>> createComment({
    required int articleId,
    required String text,
    int? parentId,
  }) async {
    final result = await _libraryRepository.createComment(
      articleId: articleId,
      text: text,
      parentId: parentId,
    );

    result.whenOrNull(success: (comments) => state = comments);
    return result;
  }

  Future<void> deleteComment({
    required int articleId,
    required int commentId,
  }) async {
    final result = await _libraryRepository.deleteComment(
      articleId: articleId,
      commentId: commentId,
    );

    result.whenOrNull(
      success: (comments) {
        final newComments = <Comment>[];
        for (final comment in state) {
          if (comment.id == commentId) {
            continue;
          }

          final newSubcomments = <Comment>[];
          for (final sub in comment.subcomments) {
            if (comment.id == commentId) {
              continue;
            }
            newSubcomments.add(sub);
          }
          newSubcomments.add(comment.copyWith(subcomments: newSubcomments));
        }

        state = newComments;
      },
    );
  }
}

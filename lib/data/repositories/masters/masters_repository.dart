import '../../../core/entities/result/result.dart';
import '../../../domain/models/articles/topic/topic.dart';
import '../../../domain/models/masters/master_comment/master_comment.dart';
import '../../../domain/models/masters/master_model/master_model.dart';
import '../../../domain/models/masters/master_profile/master_profile.dart';
import '../../../domain/models/masters/masters_list_model/masters_list_model.dart';

abstract class MastersRepository {
  /// Запрос на получение списка мастеров.
  Future<Result<MastersListModel>> fetchMasters({
    required int page,
    required int limit,
    String? topic,
    String? practice,
  });

  /// Запрос на получение профиля мастера.
  Future<Result<MasterProfile>> fetchMaster({required int id});

  /// Запрос на получение списка отзывов/комментариев о мастере.
  Future<Result<List<MasterComment>>> fetchComments({required int masterId});

  /// Запрос на получение списка статей, написанных мастером.
  Future<Result<List<Topic>>> fetchArticles({required int masterId});

  /// Запрос на получение списка статей, написанных мастером.
  Future<Result<List<MasterModel>>> fetchFavouriteMasters();

  /// Запрос на получение списка статей, написанных мастером.
  Future<Result<List<MasterModel>>> toggleLikeMaster({required int id});
}

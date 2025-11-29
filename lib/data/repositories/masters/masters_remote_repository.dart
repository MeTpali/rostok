import '../../../core/entities/result/result.dart';
import '../../../domain/models/articles/topic/topic.dart';
import '../../../domain/models/masters/master_comment/master_comment.dart';
import '../../../domain/models/masters/master_profile/master_profile.dart';
import '../../../domain/models/masters/masters_list_model/masters_list_model.dart';
import '../../services/masters/masters_remote_service.dart';
import 'masters_repository.dart';

class MastersRemoteRepository implements MastersRepository {
  final MastersRemoteService _mastersService;
  const MastersRemoteRepository({required MastersRemoteService mastersService})
    : _mastersService = mastersService;

  @override
  Future<Result<MastersListModel>> fetchMasters({
    required int page,
    required int limit,
    String? topic,
    String? practice,
  }) async {
    final response = await _mastersService.fetchMasters(
      page: page,
      limit: limit,
      topic: topic,
      practice: practice,
    );
    return response.when(
      success: (mastersList) => Result.success(mastersList),
      error: (error) => Result.error(error.message),
    );
  }

  @override
  Future<Result<MasterProfile>> fetchMaster({required int id}) {
    // TODO: implement fetchMaster
    throw UnimplementedError();
  }

  @override
  Future<Result<List<MasterComment>>> fetchComments({required int masterId}) {
    // TODO: implement fetchComments
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Topic>>> fetchArticles({required int masterId}) {
    // TODO: implement fetchArticles
    throw UnimplementedError();
  }
}

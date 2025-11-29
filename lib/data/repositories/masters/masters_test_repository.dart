import '../../../core/entities/result/result.dart';
import '../../../domain/models/articles/topic/topic.dart';
import '../../../domain/models/masters/master_comment/master_comment.dart';
import '../../../domain/models/masters/master_profile/master_profile.dart';
import '../../../domain/models/masters/masters_list_model/masters_list_model.dart';
import '../../services/masters/masters_test_service.dart';
import 'masters_repository.dart';

class MastersTestRepository implements MastersRepository {
  final MastersTestService _mastersService;
  MastersTestRepository({required MastersTestService mastersService})
    : _mastersService = mastersService;

  final _delay = const Duration(milliseconds: 500);

  @override
  Future<Result<MastersListModel>> fetchMasters({
    required int page,
    required int limit,
    String? topic,
    String? practice,
  }) async {
    await Future<void>.delayed(_delay);
    final mastersList = await _mastersService.fetchMasters(
      page: page,
      limit: limit,
    );
    return Result.success(mastersList);
  }

  @override
  Future<Result<MasterProfile>> fetchMaster({required int id}) async {
    final master = await _mastersService.fetchMaster(id: id);
    return Result.success(master);
  }

  @override
  Future<Result<List<MasterComment>>> fetchComments({
    required int masterId,
  }) async {
    final comments = await _mastersService.fetchComments(masterId: masterId);
    return Result.success(comments);
  }

  @override
  Future<Result<List<Topic>>> fetchArticles({required int masterId}) async {
    final articles = await _mastersService.fetchArticles(masterId: masterId);
    return Result.success(articles);
  }
}

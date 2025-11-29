import '../../../core/entities/result/result.dart';
import '../../../domain/models/user/avatar_info.dart';
import '../../../domain/models/user/user_model.dart';

abstract class AccountsRepository {
  Future<Result<UserModel>> fetchMe();
  Future<Result<UserModel>> updateMe({required UserModel user});
  Future<Result<AvatarInfo>> uploadAvatar({required String filePath});
  Future<Result<void>> deleteAvatar({required String key});
}

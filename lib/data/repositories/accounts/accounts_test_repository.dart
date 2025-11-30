import '../../../core/entities/result/result.dart';
import '../../../domain/models/user/avatar_info.dart';
import '../../../domain/models/user/user_model.dart';
import 'accounts_repository.dart';

class AccountsTestRepository implements AccountsRepository {
  AccountsTestRepository();
  final _delay = const Duration(milliseconds: 500);

  UserModel me = const UserModel(
    userId: 1,
    userUuid: '7f1d8b02-4c9d-4f1b-9b4e-2a918f83ea45',
    firstName: 'Artem',
    lastName: 'Sokolov',
    phone: '+79991234567',
    email: 'artem.sokolov@example.com',
    about:
        'Учу английский для повышения квалификации и готовлюсь к экзамену FCE.',
    birthDate: '2002-03-14',
    birthTime: '14:32',
    gender: 'male',
    birthCity: 'Saint Petersburg',
    avatarUrl: 'https://i.pravatar.cc/300?img=12',
  );

  @override
  Future<Result<UserModel>> fetchMe() async {
    await Future<void>.delayed(_delay);
    return Result.success(me);
  }

  @override
  Future<Result<UserModel>> updateMe({required UserModel user}) async {
    await Future<void>.delayed(_delay);
    me = user;
    return Result.success(me);
  }

  @override
  Future<Result<AvatarInfo>> uploadAvatar({required String filePath}) async {
    await Future<void>.delayed(_delay);
    return const Result.success(
      AvatarInfo(
        avatarUrl:
            'https://comicvine.gamespot.com/a/uploads/original/11172/111724681/9336474-9116190-d6dc9-16953963622489-1920.jpg',
      ),
    );
  }

  @override
  Future<Result<void>> deleteAvatar({required String key}) async {
    await Future<void>.delayed(_delay);
    me = me.copyWith(avatarUrl: null);
    return const Result.success(null);
  }
}

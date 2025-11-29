import '../../../core/entities/result/result.dart';
import '../../../domain/models/user/avatar_info.dart';
import '../../../domain/models/user/user_model.dart';
import 'accounts_repository.dart';

class AccountsTestRepository implements AccountsRepository {
  AccountsTestRepository();
  final _delay = const Duration(milliseconds: 500);

  UserModel me = const UserModel(
    userId: 1,
    userUuid: '1',
    firstName: 'Годзё',
    lastName: 'Сатору',
    phone: '+7 (977) 777-77-77',
    email: 'gojo@sato.ru',
    about:
        'Гордость Семьи Годзё, первый за четыреста лет человек, унаследовавший и Безграничность, и Шесть Глаз.',
    birthDate: '15-07-1996',
    birthTime: '20:31',
    gender: 'M',
    birthCity: 'Sibuya',
    avatarUrl:
        'https://comicvine.gamespot.com/a/uploads/original/11172/111724681/9336474-9116190-d6dc9-16953963622489-1920.jpg',
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

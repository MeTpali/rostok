import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../data/repositories/accounts/accounts_repository.dart';
import '../../../../domain/models/user/user_model.dart';
import '../auth/auth_notifier.dart';
import '../auth/auth_state.dart';
import 'profile_state.dart';

class ProfileNotifier extends StateNotifier<ProfileState> {
  final AccountsRepository _accountsRepository;
  final AuthNotifier _authNotifier;

  ProfileNotifier({
    required AccountsRepository accountsRepository,
    required AuthNotifier authNotifier,
  }) : _accountsRepository = accountsRepository,
       _authNotifier = authNotifier,
       super(const ProfileState.unauthorized());

  StreamSubscription<AuthState>? _authSub;
  String? _lastAvatarKey;

  ProfileState get profileState => state;

  Future<void> init() async {
    await _maybeAuthorizeFromAuthState(_authNotifier.state);

    _authSub ??= _authNotifier.stream.listen(_onAuthChanged);
  }

  Future<void> _maybeAuthorizeFromAuthState(AuthState auth) async {
    await auth.maybeWhen(
      authorized: (_, __, ___) async => authorize(),
      orElse: () async => logout(),
    );
  }

  Future<void> _onAuthChanged(AuthState auth) async {
    if (!mounted) return;
    await _maybeAuthorizeFromAuthState(auth);
  }

  Future<UserModel?> authorize() async {
    state = const ProfileState.loading();
    final res = await _accountsRepository.fetchMe();
    return res.when(
      success: (user) {
        state = ProfileState.authorized(
          firstName: user.firstName ?? '',
          lastName: user.lastName ?? '',
          phone: user.phone ?? '',
          gender: user.gender ?? '',
          email: user.email,
          about: user.about,
          birthDate: DateTime.tryParse(user.birthDate ?? ''),
          birthTime: user.birthTime,
          birthCity: user.birthCity,
          avatarUrl: user.avatarUrl,
          userId: user.userId,
        );
        return user;
      },
      error: (m) {
        state = ProfileState.error(m);
        return null;
      },
    );
  }

  Future<bool> updatePersonalData({
    String? firstName,
    String? lastName,
    String? about,
    String? birthDate,
    String? birthTime,
    String? gender,
    String? birthCity,
    String? email,
    String? phone,
    String? avatarUrl,
  }) async {
    final prevState = state;

    final cur = state.mapOrNull(authorized: (s) => s);

    final user = UserModel(
      userId: cur?.userId ?? 0,
      userUuid: cur?.userUuid,
      firstName: firstName ?? cur?.firstName ?? '',
      lastName: lastName ?? cur?.lastName ?? '',
      phone: phone ?? cur?.phone ?? '',
      email: email ?? cur?.email,
      about: about ?? cur?.about,
      birthDate:
          birthDate ??
          (cur?.birthDate != null
              ? DateFormat('yyyy-MM-dd', 'ru_RU').format(cur!.birthDate!)
              : null),
      birthTime: birthTime ?? cur?.birthTime,
      gender: gender ?? cur?.gender,
      birthCity: birthCity ?? cur?.birthCity,
      avatarUrl: avatarUrl ?? cur?.avatarUrl,
    );

    state = ProfileState.authorized(
      userId: user.userId,
      firstName: user.firstName ?? '',
      lastName: user.lastName ?? '',
      phone: user.phone ?? '',
      gender: user.gender ?? '',
      email: user.email,
      about: user.about,
      birthDate: DateTime.tryParse(user.birthDate ?? ''),
      birthTime: user.birthTime,
      birthCity: user.birthCity,
      avatarUrl: user.avatarUrl,
    );

    final res = await _accountsRepository.updateMe(user: user);

    return res.when(
      success: (updatedUser) {
        state = ProfileState.authorized(
          userId: user.userId,
          firstName: updatedUser.firstName ?? '',
          lastName: updatedUser.lastName ?? '',
          phone: updatedUser.phone ?? '',
          gender: updatedUser.gender ?? '',
          email: updatedUser.email,
          about: updatedUser.about,
          birthDate: DateTime.tryParse(updatedUser.birthDate ?? ''),
          birthTime: updatedUser.birthTime,
          birthCity: updatedUser.birthCity,
          avatarUrl: updatedUser.avatarUrl,
        );
        return true;
      },
      error: (_) {
        state = prevState;
        return false;
      },
    );
  }

  Future<bool> uploadAvatar(String filePath) async {
    final res = await _accountsRepository.uploadAvatar(filePath: filePath);
    return res.when(
      success: (info) async {
        _lastAvatarKey = info.key;
        await authorize();
        return true;
      },
      error: (_) async => false,
    );
  }

  Future<bool> deleteAvatar() async {
    final key = _lastAvatarKey;
    if (key == null) return false;
    final res = await _accountsRepository.deleteAvatar(key: key);
    return res.when(
      success: (_) async {
        await authorize();
        return true;
      },
      error: (_) async => false,
    );
  }

  void logout() => state = const ProfileState.unauthorized();

  @override
  void dispose() {
    unawaited(_authSub?.cancel());
    _authSub = null;
    super.dispose();
  }
}

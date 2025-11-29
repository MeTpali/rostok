import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.unauthorized() = _Unauthorized;

  const factory ProfileState.loading() = _Loading;

  const factory ProfileState.authorized({
    required int userId,
    required String firstName,
    required String lastName,
    required String phone,
    required String gender,
    String? userUuid,
    String? email,
    String? about,
    DateTime? birthDate,
    String? birthTime,
    String? birthCity,
    String? birthCountry,
    String? avatarUrl,
  }) = _Authorized;

  const factory ProfileState.error(String message) = _Error;
}

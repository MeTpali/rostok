import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'user_uuid') required String? userUuid,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'about') String? about,
    @JsonKey(name: 'birth_date') String? birthDate,
    @JsonKey(name: 'birth_time') String? birthTime,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'birth_city') String? birthCity,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

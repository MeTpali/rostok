import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_model.freezed.dart';
part 'master_model.g.dart';

@freezed
class MasterModel with _$MasterModel {
  const factory MasterModel({
    @JsonKey(name: 'user_id') required int id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'about') String? about,
    @JsonKey(name: 'birth_date') String? birthDate,
    @JsonKey(name: 'birth_time') String? birthTime,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'birth_city') String? birthCity,
  }) = _MasterModel;

  factory MasterModel.fromJson(Map<String, dynamic> json) =>
      _$MasterModelFromJson(json);
}

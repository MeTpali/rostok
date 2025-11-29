import 'package:freezed_annotation/freezed_annotation.dart';

part 'avatar_info.freezed.dart';
part 'avatar_info.g.dart';

@freezed
class AvatarInfo with _$AvatarInfo {
  const factory AvatarInfo({
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    String? key,
  }) = _AvatarInfo;

  factory AvatarInfo.fromJson(Map<String, dynamic> json) =>
      _$AvatarInfoFromJson(json);
}

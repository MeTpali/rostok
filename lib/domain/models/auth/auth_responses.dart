import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_responses.freezed.dart';
part 'auth_responses.g.dart';

@freezed
class SendCodeResponse with _$SendCodeResponse {
  const factory SendCodeResponse({
    required String message,
    required String phone,
    @JsonKey(name: 'expires_in') required int expiresIn,
  }) = _SendCodeResponse;

  factory SendCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$SendCodeResponseFromJson(json);
}

@freezed
class VerifyCodeResponse with _$VerifyCodeResponse {
  const factory VerifyCodeResponse({
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'user_uuid') required String userUuid,
    required String token,
    required String message,
  }) = _VerifyCodeResponse;

  factory VerifyCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyCodeResponseFromJson(json);
}

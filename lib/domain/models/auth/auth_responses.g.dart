// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendCodeResponseImpl _$$SendCodeResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SendCodeResponseImpl(
  message: json['message'] as String,
  phone: json['phone'] as String,
  expiresIn: (json['expires_in'] as num).toInt(),
);

Map<String, dynamic> _$$SendCodeResponseImplToJson(
  _$SendCodeResponseImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'phone': instance.phone,
  'expires_in': instance.expiresIn,
};

_$VerifyCodeResponseImpl _$$VerifyCodeResponseImplFromJson(
  Map<String, dynamic> json,
) => _$VerifyCodeResponseImpl(
  userId: (json['user_id'] as num).toInt(),
  userUuid: json['user_uuid'] as String,
  token: json['token'] as String,
  message: json['message'] as String,
);

Map<String, dynamic> _$$VerifyCodeResponseImplToJson(
  _$VerifyCodeResponseImpl instance,
) => <String, dynamic>{
  'user_id': instance.userId,
  'user_uuid': instance.userUuid,
  'token': instance.token,
  'message': instance.message,
};

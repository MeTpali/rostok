// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      userId: (json['user_id'] as num).toInt(),
      userUuid: json['user_uuid'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      about: json['about'] as String?,
      birthDate: json['birth_date'] as String?,
      birthTime: json['birth_time'] as String?,
      gender: json['gender'] as String?,
      birthCity: json['birth_city'] as String?,
      avatarUrl: json['avatar_url'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_uuid': instance.userUuid,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'email': instance.email,
      'about': instance.about,
      'birth_date': instance.birthDate,
      'birth_time': instance.birthTime,
      'gender': instance.gender,
      'birth_city': instance.birthCity,
      'avatar_url': instance.avatarUrl,
    };

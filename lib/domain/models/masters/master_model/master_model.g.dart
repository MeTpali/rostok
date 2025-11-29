// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MasterModelImpl _$$MasterModelImplFromJson(Map<String, dynamic> json) =>
    _$MasterModelImpl(
      id: (json['user_id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      about: json['about'] as String?,
      birthDate: json['birth_date'] as String?,
      birthTime: json['birth_time'] as String?,
      gender: json['gender'] as String?,
      birthCity: json['birth_city'] as String?,
    );

Map<String, dynamic> _$$MasterModelImplToJson(_$MasterModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'about': instance.about,
      'birth_date': instance.birthDate,
      'birth_time': instance.birthTime,
      'gender': instance.gender,
      'birth_city': instance.birthCity,
    };

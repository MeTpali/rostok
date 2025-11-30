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
      rating: (json['rating'] as num).toDouble(),
      reviewsCount: (json['reviews_count'] as num).toInt(),
      about: json['about'] as String?,
      birthDate: json['birth_date'] as String?,
      birthTime: json['birth_time'] as String?,
      gender: json['gender'] as String?,
      birthCity: json['birth_city'] as String?,
      topics:
          (json['topics'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      timing: (json['timing'] as num?)?.toInt(),
      prana: (json['prana'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MasterModelImplToJson(_$MasterModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'rating': instance.rating,
      'reviews_count': instance.reviewsCount,
      'about': instance.about,
      'birth_date': instance.birthDate,
      'birth_time': instance.birthTime,
      'gender': instance.gender,
      'birth_city': instance.birthCity,
      'topics': instance.topics,
      'timing': instance.timing,
      'prana': instance.prana,
    };

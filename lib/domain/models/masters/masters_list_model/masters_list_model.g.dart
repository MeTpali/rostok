// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'masters_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MastersListModelImpl _$$MastersListModelImplFromJson(
  Map<String, dynamic> json,
) => _$MastersListModelImpl(
  masters: (json['masters'] as List<dynamic>)
      .map((e) => MasterModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
);

Map<String, dynamic> _$$MastersListModelImplToJson(
  _$MastersListModelImpl instance,
) => <String, dynamic>{
  'masters': instance.masters,
  'total': instance.total,
  'page': instance.page,
  'limit': instance.limit,
  'total_pages': instance.totalPages,
};

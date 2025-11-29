import 'package:freezed_annotation/freezed_annotation.dart';

import '../master_model/master_model.dart';

part 'masters_list_model.freezed.dart';
part 'masters_list_model.g.dart';

@freezed
class MastersListModel with _$MastersListModel {
  const factory MastersListModel({
    @JsonKey(name: 'masters') required List<MasterModel> masters,
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'page') required int page,
    @JsonKey(name: 'limit') required int limit,
    @JsonKey(name: 'total_pages') required int totalPages,
  }) = _MastersListModel;

  factory MastersListModel.fromJson(Map<String, dynamic> json) =>
      _$MastersListModelFromJson(json);
}

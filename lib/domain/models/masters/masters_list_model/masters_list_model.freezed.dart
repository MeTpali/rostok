// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'masters_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MastersListModel _$MastersListModelFromJson(Map<String, dynamic> json) {
  return _MastersListModel.fromJson(json);
}

/// @nodoc
mixin _$MastersListModel {
  @JsonKey(name: 'masters')
  List<MasterModel> get masters => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'limit')
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;

  /// Serializes this MastersListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MastersListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MastersListModelCopyWith<MastersListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MastersListModelCopyWith<$Res> {
  factory $MastersListModelCopyWith(
    MastersListModel value,
    $Res Function(MastersListModel) then,
  ) = _$MastersListModelCopyWithImpl<$Res, MastersListModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'masters') List<MasterModel> masters,
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'page') int page,
    @JsonKey(name: 'limit') int limit,
    @JsonKey(name: 'total_pages') int totalPages,
  });
}

/// @nodoc
class _$MastersListModelCopyWithImpl<$Res, $Val extends MastersListModel>
    implements $MastersListModelCopyWith<$Res> {
  _$MastersListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MastersListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masters = null,
    Object? total = null,
    Object? page = null,
    Object? limit = null,
    Object? totalPages = null,
  }) {
    return _then(
      _value.copyWith(
            masters: null == masters
                ? _value.masters
                : masters // ignore: cast_nullable_to_non_nullable
                      as List<MasterModel>,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            limit: null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int,
            totalPages: null == totalPages
                ? _value.totalPages
                : totalPages // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MastersListModelImplCopyWith<$Res>
    implements $MastersListModelCopyWith<$Res> {
  factory _$$MastersListModelImplCopyWith(
    _$MastersListModelImpl value,
    $Res Function(_$MastersListModelImpl) then,
  ) = __$$MastersListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'masters') List<MasterModel> masters,
    @JsonKey(name: 'total') int total,
    @JsonKey(name: 'page') int page,
    @JsonKey(name: 'limit') int limit,
    @JsonKey(name: 'total_pages') int totalPages,
  });
}

/// @nodoc
class __$$MastersListModelImplCopyWithImpl<$Res>
    extends _$MastersListModelCopyWithImpl<$Res, _$MastersListModelImpl>
    implements _$$MastersListModelImplCopyWith<$Res> {
  __$$MastersListModelImplCopyWithImpl(
    _$MastersListModelImpl _value,
    $Res Function(_$MastersListModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MastersListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masters = null,
    Object? total = null,
    Object? page = null,
    Object? limit = null,
    Object? totalPages = null,
  }) {
    return _then(
      _$MastersListModelImpl(
        masters: null == masters
            ? _value._masters
            : masters // ignore: cast_nullable_to_non_nullable
                  as List<MasterModel>,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
        totalPages: null == totalPages
            ? _value.totalPages
            : totalPages // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MastersListModelImpl implements _MastersListModel {
  const _$MastersListModelImpl({
    @JsonKey(name: 'masters') required final List<MasterModel> masters,
    @JsonKey(name: 'total') required this.total,
    @JsonKey(name: 'page') required this.page,
    @JsonKey(name: 'limit') required this.limit,
    @JsonKey(name: 'total_pages') required this.totalPages,
  }) : _masters = masters;

  factory _$MastersListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MastersListModelImplFromJson(json);

  final List<MasterModel> _masters;
  @override
  @JsonKey(name: 'masters')
  List<MasterModel> get masters {
    if (_masters is EqualUnmodifiableListView) return _masters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_masters);
  }

  @override
  @JsonKey(name: 'total')
  final int total;
  @override
  @JsonKey(name: 'page')
  final int page;
  @override
  @JsonKey(name: 'limit')
  final int limit;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;

  @override
  String toString() {
    return 'MastersListModel(masters: $masters, total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MastersListModelImpl &&
            const DeepCollectionEquality().equals(other._masters, _masters) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_masters),
    total,
    page,
    limit,
    totalPages,
  );

  /// Create a copy of MastersListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MastersListModelImplCopyWith<_$MastersListModelImpl> get copyWith =>
      __$$MastersListModelImplCopyWithImpl<_$MastersListModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MastersListModelImplToJson(this);
  }
}

abstract class _MastersListModel implements MastersListModel {
  const factory _MastersListModel({
    @JsonKey(name: 'masters') required final List<MasterModel> masters,
    @JsonKey(name: 'total') required final int total,
    @JsonKey(name: 'page') required final int page,
    @JsonKey(name: 'limit') required final int limit,
    @JsonKey(name: 'total_pages') required final int totalPages,
  }) = _$MastersListModelImpl;

  factory _MastersListModel.fromJson(Map<String, dynamic> json) =
      _$MastersListModelImpl.fromJson;

  @override
  @JsonKey(name: 'masters')
  List<MasterModel> get masters;
  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(name: 'limit')
  int get limit;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;

  /// Create a copy of MastersListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MastersListModelImplCopyWith<_$MastersListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avatar_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AvatarInfo _$AvatarInfoFromJson(Map<String, dynamic> json) {
  return _AvatarInfo.fromJson(json);
}

/// @nodoc
mixin _$AvatarInfo {
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;

  /// Serializes this AvatarInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvatarInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvatarInfoCopyWith<AvatarInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarInfoCopyWith<$Res> {
  factory $AvatarInfoCopyWith(
    AvatarInfo value,
    $Res Function(AvatarInfo) then,
  ) = _$AvatarInfoCopyWithImpl<$Res, AvatarInfo>;
  @useResult
  $Res call({@JsonKey(name: 'avatar_url') String? avatarUrl, String? key});
}

/// @nodoc
class _$AvatarInfoCopyWithImpl<$Res, $Val extends AvatarInfo>
    implements $AvatarInfoCopyWith<$Res> {
  _$AvatarInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvatarInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? avatarUrl = freezed, Object? key = freezed}) {
    return _then(
      _value.copyWith(
            avatarUrl: freezed == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            key: freezed == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AvatarInfoImplCopyWith<$Res>
    implements $AvatarInfoCopyWith<$Res> {
  factory _$$AvatarInfoImplCopyWith(
    _$AvatarInfoImpl value,
    $Res Function(_$AvatarInfoImpl) then,
  ) = __$$AvatarInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'avatar_url') String? avatarUrl, String? key});
}

/// @nodoc
class __$$AvatarInfoImplCopyWithImpl<$Res>
    extends _$AvatarInfoCopyWithImpl<$Res, _$AvatarInfoImpl>
    implements _$$AvatarInfoImplCopyWith<$Res> {
  __$$AvatarInfoImplCopyWithImpl(
    _$AvatarInfoImpl _value,
    $Res Function(_$AvatarInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AvatarInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? avatarUrl = freezed, Object? key = freezed}) {
    return _then(
      _$AvatarInfoImpl(
        avatarUrl: freezed == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        key: freezed == key
            ? _value.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AvatarInfoImpl implements _AvatarInfo {
  const _$AvatarInfoImpl({
    @JsonKey(name: 'avatar_url') this.avatarUrl,
    this.key,
  });

  factory _$AvatarInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvatarInfoImplFromJson(json);

  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  @override
  final String? key;

  @override
  String toString() {
    return 'AvatarInfo(avatarUrl: $avatarUrl, key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarInfoImpl &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, avatarUrl, key);

  /// Create a copy of AvatarInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarInfoImplCopyWith<_$AvatarInfoImpl> get copyWith =>
      __$$AvatarInfoImplCopyWithImpl<_$AvatarInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvatarInfoImplToJson(this);
  }
}

abstract class _AvatarInfo implements AvatarInfo {
  const factory _AvatarInfo({
    @JsonKey(name: 'avatar_url') final String? avatarUrl,
    final String? key,
  }) = _$AvatarInfoImpl;

  factory _AvatarInfo.fromJson(Map<String, dynamic> json) =
      _$AvatarInfoImpl.fromJson;

  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl;
  @override
  String? get key;

  /// Create a copy of AvatarInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvatarInfoImplCopyWith<_$AvatarInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

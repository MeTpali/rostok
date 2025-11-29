// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MasterModel _$MasterModelFromJson(Map<String, dynamic> json) {
  return _MasterModel.fromJson(json);
}

/// @nodoc
mixin _$MasterModel {
  @JsonKey(name: 'user_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'about')
  String? get about => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_date')
  String? get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_time')
  String? get birthTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'birth_city')
  String? get birthCity => throw _privateConstructorUsedError;

  /// Serializes this MasterModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MasterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MasterModelCopyWith<MasterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterModelCopyWith<$Res> {
  factory $MasterModelCopyWith(
    MasterModel value,
    $Res Function(MasterModel) then,
  ) = _$MasterModelCopyWithImpl<$Res, MasterModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'user_id') int id,
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String lastName,
    @JsonKey(name: 'about') String? about,
    @JsonKey(name: 'birth_date') String? birthDate,
    @JsonKey(name: 'birth_time') String? birthTime,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'birth_city') String? birthCity,
  });
}

/// @nodoc
class _$MasterModelCopyWithImpl<$Res, $Val extends MasterModel>
    implements $MasterModelCopyWith<$Res> {
  _$MasterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MasterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? about = freezed,
    Object? birthDate = freezed,
    Object? birthTime = freezed,
    Object? gender = freezed,
    Object? birthCity = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            firstName: null == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                      as String,
            lastName: null == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                      as String,
            about: freezed == about
                ? _value.about
                : about // ignore: cast_nullable_to_non_nullable
                      as String?,
            birthDate: freezed == birthDate
                ? _value.birthDate
                : birthDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            birthTime: freezed == birthTime
                ? _value.birthTime
                : birthTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            gender: freezed == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as String?,
            birthCity: freezed == birthCity
                ? _value.birthCity
                : birthCity // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MasterModelImplCopyWith<$Res>
    implements $MasterModelCopyWith<$Res> {
  factory _$$MasterModelImplCopyWith(
    _$MasterModelImpl value,
    $Res Function(_$MasterModelImpl) then,
  ) = __$$MasterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'user_id') int id,
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String lastName,
    @JsonKey(name: 'about') String? about,
    @JsonKey(name: 'birth_date') String? birthDate,
    @JsonKey(name: 'birth_time') String? birthTime,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'birth_city') String? birthCity,
  });
}

/// @nodoc
class __$$MasterModelImplCopyWithImpl<$Res>
    extends _$MasterModelCopyWithImpl<$Res, _$MasterModelImpl>
    implements _$$MasterModelImplCopyWith<$Res> {
  __$$MasterModelImplCopyWithImpl(
    _$MasterModelImpl _value,
    $Res Function(_$MasterModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MasterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? about = freezed,
    Object? birthDate = freezed,
    Object? birthTime = freezed,
    Object? gender = freezed,
    Object? birthCity = freezed,
  }) {
    return _then(
      _$MasterModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        firstName: null == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String,
        lastName: null == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String,
        about: freezed == about
            ? _value.about
            : about // ignore: cast_nullable_to_non_nullable
                  as String?,
        birthDate: freezed == birthDate
            ? _value.birthDate
            : birthDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        birthTime: freezed == birthTime
            ? _value.birthTime
            : birthTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        gender: freezed == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String?,
        birthCity: freezed == birthCity
            ? _value.birthCity
            : birthCity // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MasterModelImpl implements _MasterModel {
  const _$MasterModelImpl({
    @JsonKey(name: 'user_id') required this.id,
    @JsonKey(name: 'first_name') required this.firstName,
    @JsonKey(name: 'last_name') required this.lastName,
    @JsonKey(name: 'about') this.about,
    @JsonKey(name: 'birth_date') this.birthDate,
    @JsonKey(name: 'birth_time') this.birthTime,
    @JsonKey(name: 'gender') this.gender,
    @JsonKey(name: 'birth_city') this.birthCity,
  });

  factory _$MasterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MasterModelImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int id;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'about')
  final String? about;
  @override
  @JsonKey(name: 'birth_date')
  final String? birthDate;
  @override
  @JsonKey(name: 'birth_time')
  final String? birthTime;
  @override
  @JsonKey(name: 'gender')
  final String? gender;
  @override
  @JsonKey(name: 'birth_city')
  final String? birthCity;

  @override
  String toString() {
    return 'MasterModel(id: $id, firstName: $firstName, lastName: $lastName, about: $about, birthDate: $birthDate, birthTime: $birthTime, gender: $gender, birthCity: $birthCity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MasterModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.birthTime, birthTime) ||
                other.birthTime == birthTime) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthCity, birthCity) ||
                other.birthCity == birthCity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    firstName,
    lastName,
    about,
    birthDate,
    birthTime,
    gender,
    birthCity,
  );

  /// Create a copy of MasterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MasterModelImplCopyWith<_$MasterModelImpl> get copyWith =>
      __$$MasterModelImplCopyWithImpl<_$MasterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MasterModelImplToJson(this);
  }
}

abstract class _MasterModel implements MasterModel {
  const factory _MasterModel({
    @JsonKey(name: 'user_id') required final int id,
    @JsonKey(name: 'first_name') required final String firstName,
    @JsonKey(name: 'last_name') required final String lastName,
    @JsonKey(name: 'about') final String? about,
    @JsonKey(name: 'birth_date') final String? birthDate,
    @JsonKey(name: 'birth_time') final String? birthTime,
    @JsonKey(name: 'gender') final String? gender,
    @JsonKey(name: 'birth_city') final String? birthCity,
  }) = _$MasterModelImpl;

  factory _MasterModel.fromJson(Map<String, dynamic> json) =
      _$MasterModelImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int get id;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'about')
  String? get about;
  @override
  @JsonKey(name: 'birth_date')
  String? get birthDate;
  @override
  @JsonKey(name: 'birth_time')
  String? get birthTime;
  @override
  @JsonKey(name: 'gender')
  String? get gender;
  @override
  @JsonKey(name: 'birth_city')
  String? get birthCity;

  /// Create a copy of MasterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MasterModelImplCopyWith<_$MasterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

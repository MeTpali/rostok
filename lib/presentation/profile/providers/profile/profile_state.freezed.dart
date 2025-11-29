// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function() loading,
    required TResult Function(
      int userId,
      String firstName,
      String lastName,
      String phone,
      String gender,
      String? userUuid,
      String? email,
      String? about,
      DateTime? birthDate,
      String? birthTime,
      String? birthCity,
      String? birthCountry,
      String? avatarUrl,
    )
    authorized,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function()? loading,
    TResult? Function(
      int userId,
      String firstName,
      String lastName,
      String phone,
      String gender,
      String? userUuid,
      String? email,
      String? about,
      DateTime? birthDate,
      String? birthTime,
      String? birthCity,
      String? birthCountry,
      String? avatarUrl,
    )?
    authorized,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function()? loading,
    TResult Function(
      int userId,
      String firstName,
      String lastName,
      String phone,
      String gender,
      String? userUuid,
      String? email,
      String? about,
      DateTime? birthDate,
      String? birthTime,
      String? birthCity,
      String? birthCountry,
      String? avatarUrl,
    )?
    authorized,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
    ProfileState value,
    $Res Function(ProfileState) then,
  ) = _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
    _$UnauthorizedImpl value,
    $Res Function(_$UnauthorizedImpl) then,
  ) = __$$UnauthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
    _$UnauthorizedImpl _value,
    $Res Function(_$UnauthorizedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthorizedImpl implements _Unauthorized {
  const _$UnauthorizedImpl();

  @override
  String toString() {
    return 'ProfileState.unauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function() loading,
    required TResult Function(
      int userId,
      String firstName,
      String lastName,
      String phone,
      String gender,
      String? userUuid,
      String? email,
      String? about,
      DateTime? birthDate,
      String? birthTime,
      String? birthCity,
      String? birthCountry,
      String? avatarUrl,
    )
    authorized,
    required TResult Function(String message) error,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function()? loading,
    TResult? Function(
      int userId,
      String firstName,
      String lastName,
      String phone,
      String gender,
      String? userUuid,
      String? email,
      String? about,
      DateTime? birthDate,
      String? birthTime,
      String? birthCity,
      String? birthCountry,
      String? avatarUrl,
    )?
    authorized,
    TResult? Function(String message)? error,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function()? loading,
    TResult Function(
      int userId,
      String firstName,
      String lastName,
      String phone,
      String gender,
      String? userUuid,
      String? email,
      String? about,
      DateTime? birthDate,
      String? birthTime,
      String? birthCity,
      String? birthCountry,
      String? avatarUrl,
    )?
    authorized,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Error value) error,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Error value)? error,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements ProfileState {
  const factory _Unauthorized() = _$UnauthorizedImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function() loading,
    required TResult Function(
      int userId,
      String firstName,
      String lastName,
      String phone,
      String gender,
      String? userUuid,
      String? email,
      String? about,
      DateTime? birthDate,
      String? birthTime,
      String? birthCity,
      String? birthCountry,
      String? avatarUrl,
    )
    authorized,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function()? loading,
    TResult? Function(
      int userId,
      String firstName,
      String lastName,
      String phone,
      String gender,
      String? userUuid,
      String? email,
      String? about,
      DateTime? birthDate,
      String? birthTime,
      String? birthCity,
      String? birthCountry,
      String? avatarUrl,
    )?
    authorized,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function()? loading,
    TResult Function(
      int userId,
      String firstName,
      String lastName,
      String phone,
      String gender,
      String? userUuid,
      String? email,
      String? about,
      DateTime? birthDate,
      String? birthTime,
      String? birthCity,
      String? birthCountry,
      String? avatarUrl,
    )?
    authorized,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProfileState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AuthorizedImplCopyWith<$Res> {
  factory _$$AuthorizedImplCopyWith(
    _$AuthorizedImpl value,
    $Res Function(_$AuthorizedImpl) then,
  ) = __$$AuthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    int userId,
    String firstName,
    String lastName,
    String phone,
    String gender,
    String? userUuid,
    String? email,
    String? about,
    DateTime? birthDate,
    String? birthTime,
    String? birthCity,
    String? birthCountry,
    String? avatarUrl,
  });
}

/// @nodoc
class __$$AuthorizedImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$AuthorizedImpl>
    implements _$$AuthorizedImplCopyWith<$Res> {
  __$$AuthorizedImplCopyWithImpl(
    _$AuthorizedImpl _value,
    $Res Function(_$AuthorizedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? gender = null,
    Object? userUuid = freezed,
    Object? email = freezed,
    Object? about = freezed,
    Object? birthDate = freezed,
    Object? birthTime = freezed,
    Object? birthCity = freezed,
    Object? birthCountry = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(
      _$AuthorizedImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        firstName: null == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String,
        lastName: null == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
        gender: null == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String,
        userUuid: freezed == userUuid
            ? _value.userUuid
            : userUuid // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        about: freezed == about
            ? _value.about
            : about // ignore: cast_nullable_to_non_nullable
                  as String?,
        birthDate: freezed == birthDate
            ? _value.birthDate
            : birthDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        birthTime: freezed == birthTime
            ? _value.birthTime
            : birthTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        birthCity: freezed == birthCity
            ? _value.birthCity
            : birthCity // ignore: cast_nullable_to_non_nullable
                  as String?,
        birthCountry: freezed == birthCountry
            ? _value.birthCountry
            : birthCountry // ignore: cast_nullable_to_non_nullable
                  as String?,
        avatarUrl: freezed == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$AuthorizedImpl implements _Authorized {
  const _$AuthorizedImpl({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.gender,
    this.userUuid,
    this.email,
    this.about,
    this.birthDate,
    this.birthTime,
    this.birthCity,
    this.birthCountry,
    this.avatarUrl,
  });

  @override
  final int userId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String phone;
  @override
  final String gender;
  @override
  final String? userUuid;
  @override
  final String? email;
  @override
  final String? about;
  @override
  final DateTime? birthDate;
  @override
  final String? birthTime;
  @override
  final String? birthCity;
  @override
  final String? birthCountry;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'ProfileState.authorized(userId: $userId, firstName: $firstName, lastName: $lastName, phone: $phone, gender: $gender, userUuid: $userUuid, email: $email, about: $about, birthDate: $birthDate, birthTime: $birthTime, birthCity: $birthCity, birthCountry: $birthCountry, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizedImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.userUuid, userUuid) ||
                other.userUuid == userUuid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.birthTime, birthTime) ||
                other.birthTime == birthTime) &&
            (identical(other.birthCity, birthCity) ||
                other.birthCity == birthCity) &&
            (identical(other.birthCountry, birthCountry) ||
                other.birthCountry == birthCountry) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    firstName,
    lastName,
    phone,
    gender,
    userUuid,
    email,
    about,
    birthDate,
    birthTime,
    birthCity,
    birthCountry,
    avatarUrl,
  );

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizedImplCopyWith<_$AuthorizedImpl> get copyWith =>
      __$$AuthorizedImplCopyWithImpl<_$AuthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function() loading,
    required TResult Function(
      int userId,
      String firstName,
      String lastName,
      String phone,
      String gender,
      String? userUuid,
      String? email,
      String? about,
      DateTime? birthDate,
      String? birthTime,
      String? birthCity,
      String? birthCountry,
      String? avatarUrl,
    )
    authorized,
    required TResult Function(String message) error,
  }) {
    return authorized(
      userId,
      firstName,
      lastName,
      phone,
      gender,
      userUuid,
      email,
      about,
      birthDate,
      birthTime,
      birthCity,
      birthCountry,
      avatarUrl,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function()? loading,
    TResult? Function(
      int userId,
      String firstName,
      String lastName,
      String phone,
      String gender,
      String? userUuid,
      String? email,
      String? about,
      DateTime? birthDate,
      String? birthTime,
      String? birthCity,
      String? birthCountry,
      String? avatarUrl,
    )?
    authorized,
    TResult? Function(String message)? error,
  }) {
    return authorized?.call(
      userId,
      firstName,
      lastName,
      phone,
      gender,
      userUuid,
      email,
      about,
      birthDate,
      birthTime,
      birthCity,
      birthCountry,
      avatarUrl,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function()? loading,
    TResult Function(
      int userId,
      String firstName,
      String lastName,
      String phone,
      String gender,
      String? userUuid,
      String? email,
      String? about,
      DateTime? birthDate,
      String? birthTime,
      String? birthCity,
      String? birthCountry,
      String? avatarUrl,
    )?
    authorized,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(
        userId,
        firstName,
        lastName,
        phone,
        gender,
        userUuid,
        email,
        about,
        birthDate,
        birthTime,
        birthCity,
        birthCountry,
        avatarUrl,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Error value) error,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Error value)? error,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _Authorized implements ProfileState {
  const factory _Authorized({
    required final int userId,
    required final String firstName,
    required final String lastName,
    required final String phone,
    required final String gender,
    final String? userUuid,
    final String? email,
    final String? about,
    final DateTime? birthDate,
    final String? birthTime,
    final String? birthCity,
    final String? birthCountry,
    final String? avatarUrl,
  }) = _$AuthorizedImpl;

  int get userId;
  String get firstName;
  String get lastName;
  String get phone;
  String get gender;
  String? get userUuid;
  String? get email;
  String? get about;
  DateTime? get birthDate;
  String? get birthTime;
  String? get birthCity;
  String? get birthCountry;
  String? get avatarUrl;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorizedImplCopyWith<_$AuthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function() loading,
    required TResult Function(
      int userId,
      String firstName,
      String lastName,
      String phone,
      String gender,
      String? userUuid,
      String? email,
      String? about,
      DateTime? birthDate,
      String? birthTime,
      String? birthCity,
      String? birthCountry,
      String? avatarUrl,
    )
    authorized,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function()? loading,
    TResult? Function(
      int userId,
      String firstName,
      String lastName,
      String phone,
      String gender,
      String? userUuid,
      String? email,
      String? about,
      DateTime? birthDate,
      String? birthTime,
      String? birthCity,
      String? birthCountry,
      String? avatarUrl,
    )?
    authorized,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function()? loading,
    TResult Function(
      int userId,
      String firstName,
      String lastName,
      String phone,
      String gender,
      String? userUuid,
      String? email,
      String? about,
      DateTime? birthDate,
      String? birthTime,
      String? birthCity,
      String? birthCountry,
      String? avatarUrl,
    )?
    authorized,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ProfileState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

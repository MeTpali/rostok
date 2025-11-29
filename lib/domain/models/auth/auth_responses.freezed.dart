// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_responses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SendCodeResponse _$SendCodeResponseFromJson(Map<String, dynamic> json) {
  return _SendCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$SendCodeResponse {
  String get message => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_in')
  int get expiresIn => throw _privateConstructorUsedError;

  /// Serializes this SendCodeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendCodeResponseCopyWith<SendCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendCodeResponseCopyWith<$Res> {
  factory $SendCodeResponseCopyWith(
    SendCodeResponse value,
    $Res Function(SendCodeResponse) then,
  ) = _$SendCodeResponseCopyWithImpl<$Res, SendCodeResponse>;
  @useResult
  $Res call({
    String message,
    String phone,
    @JsonKey(name: 'expires_in') int expiresIn,
  });
}

/// @nodoc
class _$SendCodeResponseCopyWithImpl<$Res, $Val extends SendCodeResponse>
    implements $SendCodeResponseCopyWith<$Res> {
  _$SendCodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? phone = null,
    Object? expiresIn = null,
  }) {
    return _then(
      _value.copyWith(
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
            phone: null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String,
            expiresIn: null == expiresIn
                ? _value.expiresIn
                : expiresIn // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SendCodeResponseImplCopyWith<$Res>
    implements $SendCodeResponseCopyWith<$Res> {
  factory _$$SendCodeResponseImplCopyWith(
    _$SendCodeResponseImpl value,
    $Res Function(_$SendCodeResponseImpl) then,
  ) = __$$SendCodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String message,
    String phone,
    @JsonKey(name: 'expires_in') int expiresIn,
  });
}

/// @nodoc
class __$$SendCodeResponseImplCopyWithImpl<$Res>
    extends _$SendCodeResponseCopyWithImpl<$Res, _$SendCodeResponseImpl>
    implements _$$SendCodeResponseImplCopyWith<$Res> {
  __$$SendCodeResponseImplCopyWithImpl(
    _$SendCodeResponseImpl _value,
    $Res Function(_$SendCodeResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? phone = null,
    Object? expiresIn = null,
  }) {
    return _then(
      _$SendCodeResponseImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
        expiresIn: null == expiresIn
            ? _value.expiresIn
            : expiresIn // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SendCodeResponseImpl implements _SendCodeResponse {
  const _$SendCodeResponseImpl({
    required this.message,
    required this.phone,
    @JsonKey(name: 'expires_in') required this.expiresIn,
  });

  factory _$SendCodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendCodeResponseImplFromJson(json);

  @override
  final String message;
  @override
  final String phone;
  @override
  @JsonKey(name: 'expires_in')
  final int expiresIn;

  @override
  String toString() {
    return 'SendCodeResponse(message: $message, phone: $phone, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCodeResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, phone, expiresIn);

  /// Create a copy of SendCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendCodeResponseImplCopyWith<_$SendCodeResponseImpl> get copyWith =>
      __$$SendCodeResponseImplCopyWithImpl<_$SendCodeResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SendCodeResponseImplToJson(this);
  }
}

abstract class _SendCodeResponse implements SendCodeResponse {
  const factory _SendCodeResponse({
    required final String message,
    required final String phone,
    @JsonKey(name: 'expires_in') required final int expiresIn,
  }) = _$SendCodeResponseImpl;

  factory _SendCodeResponse.fromJson(Map<String, dynamic> json) =
      _$SendCodeResponseImpl.fromJson;

  @override
  String get message;
  @override
  String get phone;
  @override
  @JsonKey(name: 'expires_in')
  int get expiresIn;

  /// Create a copy of SendCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendCodeResponseImplCopyWith<_$SendCodeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VerifyCodeResponse _$VerifyCodeResponseFromJson(Map<String, dynamic> json) {
  return _VerifyCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$VerifyCodeResponse {
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_uuid')
  String get userUuid => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this VerifyCodeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerifyCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyCodeResponseCopyWith<VerifyCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyCodeResponseCopyWith<$Res> {
  factory $VerifyCodeResponseCopyWith(
    VerifyCodeResponse value,
    $Res Function(VerifyCodeResponse) then,
  ) = _$VerifyCodeResponseCopyWithImpl<$Res, VerifyCodeResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'user_id') int userId,
    @JsonKey(name: 'user_uuid') String userUuid,
    String token,
    String message,
  });
}

/// @nodoc
class _$VerifyCodeResponseCopyWithImpl<$Res, $Val extends VerifyCodeResponse>
    implements $VerifyCodeResponseCopyWith<$Res> {
  _$VerifyCodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userUuid = null,
    Object? token = null,
    Object? message = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int,
            userUuid: null == userUuid
                ? _value.userUuid
                : userUuid // ignore: cast_nullable_to_non_nullable
                      as String,
            token: null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VerifyCodeResponseImplCopyWith<$Res>
    implements $VerifyCodeResponseCopyWith<$Res> {
  factory _$$VerifyCodeResponseImplCopyWith(
    _$VerifyCodeResponseImpl value,
    $Res Function(_$VerifyCodeResponseImpl) then,
  ) = __$$VerifyCodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'user_id') int userId,
    @JsonKey(name: 'user_uuid') String userUuid,
    String token,
    String message,
  });
}

/// @nodoc
class __$$VerifyCodeResponseImplCopyWithImpl<$Res>
    extends _$VerifyCodeResponseCopyWithImpl<$Res, _$VerifyCodeResponseImpl>
    implements _$$VerifyCodeResponseImplCopyWith<$Res> {
  __$$VerifyCodeResponseImplCopyWithImpl(
    _$VerifyCodeResponseImpl _value,
    $Res Function(_$VerifyCodeResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VerifyCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userUuid = null,
    Object? token = null,
    Object? message = null,
  }) {
    return _then(
      _$VerifyCodeResponseImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        userUuid: null == userUuid
            ? _value.userUuid
            : userUuid // ignore: cast_nullable_to_non_nullable
                  as String,
        token: null == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyCodeResponseImpl implements _VerifyCodeResponse {
  const _$VerifyCodeResponseImpl({
    @JsonKey(name: 'user_id') required this.userId,
    @JsonKey(name: 'user_uuid') required this.userUuid,
    required this.token,
    required this.message,
  });

  factory _$VerifyCodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyCodeResponseImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'user_uuid')
  final String userUuid;
  @override
  final String token;
  @override
  final String message;

  @override
  String toString() {
    return 'VerifyCodeResponse(userId: $userId, userUuid: $userUuid, token: $token, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyCodeResponseImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userUuid, userUuid) ||
                other.userUuid == userUuid) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, userUuid, token, message);

  /// Create a copy of VerifyCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyCodeResponseImplCopyWith<_$VerifyCodeResponseImpl> get copyWith =>
      __$$VerifyCodeResponseImplCopyWithImpl<_$VerifyCodeResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyCodeResponseImplToJson(this);
  }
}

abstract class _VerifyCodeResponse implements VerifyCodeResponse {
  const factory _VerifyCodeResponse({
    @JsonKey(name: 'user_id') required final int userId,
    @JsonKey(name: 'user_uuid') required final String userUuid,
    required final String token,
    required final String message,
  }) = _$VerifyCodeResponseImpl;

  factory _VerifyCodeResponse.fromJson(Map<String, dynamic> json) =
      _$VerifyCodeResponseImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'user_uuid')
  String get userUuid;
  @override
  String get token;
  @override
  String get message;

  /// Create a copy of VerifyCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyCodeResponseImplCopyWith<_$VerifyCodeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String phone) sendingCode,
    required TResult Function(String phone, int expiresIn) codeSent,
    required TResult Function(String phone) verifyingCode,
    required TResult Function(String token, int? userId, String? userUuid)
    authorized,
    required TResult Function(String message, String? phone) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String phone)? sendingCode,
    TResult? Function(String phone, int expiresIn)? codeSent,
    TResult? Function(String phone)? verifyingCode,
    TResult? Function(String token, int? userId, String? userUuid)? authorized,
    TResult? Function(String message, String? phone)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String phone)? sendingCode,
    TResult Function(String phone, int expiresIn)? codeSent,
    TResult Function(String phone)? verifyingCode,
    TResult Function(String token, int? userId, String? userUuid)? authorized,
    TResult Function(String message, String? phone)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_SendingCode value) sendingCode,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_VerifyingCode value) verifyingCode,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_SendingCode value)? sendingCode,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_VerifyingCode value)? verifyingCode,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_SendingCode value)? sendingCode,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_VerifyingCode value)? verifyingCode,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IdleImplCopyWith<$Res> {
  factory _$$IdleImplCopyWith(
    _$IdleImpl value,
    $Res Function(_$IdleImpl) then,
  ) = __$$IdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
    : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleImpl implements _Idle {
  const _$IdleImpl();

  @override
  String toString() {
    return 'AuthState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String phone) sendingCode,
    required TResult Function(String phone, int expiresIn) codeSent,
    required TResult Function(String phone) verifyingCode,
    required TResult Function(String token, int? userId, String? userUuid)
    authorized,
    required TResult Function(String message, String? phone) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String phone)? sendingCode,
    TResult? Function(String phone, int expiresIn)? codeSent,
    TResult? Function(String phone)? verifyingCode,
    TResult? Function(String token, int? userId, String? userUuid)? authorized,
    TResult? Function(String message, String? phone)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String phone)? sendingCode,
    TResult Function(String phone, int expiresIn)? codeSent,
    TResult Function(String phone)? verifyingCode,
    TResult Function(String token, int? userId, String? userUuid)? authorized,
    TResult Function(String message, String? phone)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_SendingCode value) sendingCode,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_VerifyingCode value) verifyingCode,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_SendingCode value)? sendingCode,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_VerifyingCode value)? verifyingCode,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_SendingCode value)? sendingCode,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_VerifyingCode value)? verifyingCode,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements AuthState {
  const factory _Idle() = _$IdleImpl;
}

/// @nodoc
abstract class _$$SendingCodeImplCopyWith<$Res> {
  factory _$$SendingCodeImplCopyWith(
    _$SendingCodeImpl value,
    $Res Function(_$SendingCodeImpl) then,
  ) = __$$SendingCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$SendingCodeImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SendingCodeImpl>
    implements _$$SendingCodeImplCopyWith<$Res> {
  __$$SendingCodeImplCopyWithImpl(
    _$SendingCodeImpl _value,
    $Res Function(_$SendingCodeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? phone = null}) {
    return _then(
      _$SendingCodeImpl(
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SendingCodeImpl implements _SendingCode {
  const _$SendingCodeImpl({required this.phone});

  @override
  final String phone;

  @override
  String toString() {
    return 'AuthState.sendingCode(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendingCodeImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendingCodeImplCopyWith<_$SendingCodeImpl> get copyWith =>
      __$$SendingCodeImplCopyWithImpl<_$SendingCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String phone) sendingCode,
    required TResult Function(String phone, int expiresIn) codeSent,
    required TResult Function(String phone) verifyingCode,
    required TResult Function(String token, int? userId, String? userUuid)
    authorized,
    required TResult Function(String message, String? phone) error,
  }) {
    return sendingCode(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String phone)? sendingCode,
    TResult? Function(String phone, int expiresIn)? codeSent,
    TResult? Function(String phone)? verifyingCode,
    TResult? Function(String token, int? userId, String? userUuid)? authorized,
    TResult? Function(String message, String? phone)? error,
  }) {
    return sendingCode?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String phone)? sendingCode,
    TResult Function(String phone, int expiresIn)? codeSent,
    TResult Function(String phone)? verifyingCode,
    TResult Function(String token, int? userId, String? userUuid)? authorized,
    TResult Function(String message, String? phone)? error,
    required TResult orElse(),
  }) {
    if (sendingCode != null) {
      return sendingCode(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_SendingCode value) sendingCode,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_VerifyingCode value) verifyingCode,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Error value) error,
  }) {
    return sendingCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_SendingCode value)? sendingCode,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_VerifyingCode value)? verifyingCode,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Error value)? error,
  }) {
    return sendingCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_SendingCode value)? sendingCode,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_VerifyingCode value)? verifyingCode,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (sendingCode != null) {
      return sendingCode(this);
    }
    return orElse();
  }
}

abstract class _SendingCode implements AuthState {
  const factory _SendingCode({required final String phone}) = _$SendingCodeImpl;

  String get phone;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendingCodeImplCopyWith<_$SendingCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CodeSentImplCopyWith<$Res> {
  factory _$$CodeSentImplCopyWith(
    _$CodeSentImpl value,
    $Res Function(_$CodeSentImpl) then,
  ) = __$$CodeSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone, int expiresIn});
}

/// @nodoc
class __$$CodeSentImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$CodeSentImpl>
    implements _$$CodeSentImplCopyWith<$Res> {
  __$$CodeSentImplCopyWithImpl(
    _$CodeSentImpl _value,
    $Res Function(_$CodeSentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? phone = null, Object? expiresIn = null}) {
    return _then(
      _$CodeSentImpl(
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

class _$CodeSentImpl implements _CodeSent {
  const _$CodeSentImpl({required this.phone, required this.expiresIn});

  @override
  final String phone;
  @override
  final int expiresIn;

  @override
  String toString() {
    return 'AuthState.codeSent(phone: $phone, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeSentImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, expiresIn);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeSentImplCopyWith<_$CodeSentImpl> get copyWith =>
      __$$CodeSentImplCopyWithImpl<_$CodeSentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String phone) sendingCode,
    required TResult Function(String phone, int expiresIn) codeSent,
    required TResult Function(String phone) verifyingCode,
    required TResult Function(String token, int? userId, String? userUuid)
    authorized,
    required TResult Function(String message, String? phone) error,
  }) {
    return codeSent(phone, expiresIn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String phone)? sendingCode,
    TResult? Function(String phone, int expiresIn)? codeSent,
    TResult? Function(String phone)? verifyingCode,
    TResult? Function(String token, int? userId, String? userUuid)? authorized,
    TResult? Function(String message, String? phone)? error,
  }) {
    return codeSent?.call(phone, expiresIn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String phone)? sendingCode,
    TResult Function(String phone, int expiresIn)? codeSent,
    TResult Function(String phone)? verifyingCode,
    TResult Function(String token, int? userId, String? userUuid)? authorized,
    TResult Function(String message, String? phone)? error,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(phone, expiresIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_SendingCode value) sendingCode,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_VerifyingCode value) verifyingCode,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Error value) error,
  }) {
    return codeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_SendingCode value)? sendingCode,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_VerifyingCode value)? verifyingCode,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Error value)? error,
  }) {
    return codeSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_SendingCode value)? sendingCode,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_VerifyingCode value)? verifyingCode,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(this);
    }
    return orElse();
  }
}

abstract class _CodeSent implements AuthState {
  const factory _CodeSent({
    required final String phone,
    required final int expiresIn,
  }) = _$CodeSentImpl;

  String get phone;
  int get expiresIn;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CodeSentImplCopyWith<_$CodeSentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyingCodeImplCopyWith<$Res> {
  factory _$$VerifyingCodeImplCopyWith(
    _$VerifyingCodeImpl value,
    $Res Function(_$VerifyingCodeImpl) then,
  ) = __$$VerifyingCodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$VerifyingCodeImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$VerifyingCodeImpl>
    implements _$$VerifyingCodeImplCopyWith<$Res> {
  __$$VerifyingCodeImplCopyWithImpl(
    _$VerifyingCodeImpl _value,
    $Res Function(_$VerifyingCodeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? phone = null}) {
    return _then(
      _$VerifyingCodeImpl(
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$VerifyingCodeImpl implements _VerifyingCode {
  const _$VerifyingCodeImpl({required this.phone});

  @override
  final String phone;

  @override
  String toString() {
    return 'AuthState.verifyingCode(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyingCodeImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyingCodeImplCopyWith<_$VerifyingCodeImpl> get copyWith =>
      __$$VerifyingCodeImplCopyWithImpl<_$VerifyingCodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String phone) sendingCode,
    required TResult Function(String phone, int expiresIn) codeSent,
    required TResult Function(String phone) verifyingCode,
    required TResult Function(String token, int? userId, String? userUuid)
    authorized,
    required TResult Function(String message, String? phone) error,
  }) {
    return verifyingCode(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String phone)? sendingCode,
    TResult? Function(String phone, int expiresIn)? codeSent,
    TResult? Function(String phone)? verifyingCode,
    TResult? Function(String token, int? userId, String? userUuid)? authorized,
    TResult? Function(String message, String? phone)? error,
  }) {
    return verifyingCode?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String phone)? sendingCode,
    TResult Function(String phone, int expiresIn)? codeSent,
    TResult Function(String phone)? verifyingCode,
    TResult Function(String token, int? userId, String? userUuid)? authorized,
    TResult Function(String message, String? phone)? error,
    required TResult orElse(),
  }) {
    if (verifyingCode != null) {
      return verifyingCode(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_SendingCode value) sendingCode,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_VerifyingCode value) verifyingCode,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Error value) error,
  }) {
    return verifyingCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_SendingCode value)? sendingCode,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_VerifyingCode value)? verifyingCode,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Error value)? error,
  }) {
    return verifyingCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_SendingCode value)? sendingCode,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_VerifyingCode value)? verifyingCode,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (verifyingCode != null) {
      return verifyingCode(this);
    }
    return orElse();
  }
}

abstract class _VerifyingCode implements AuthState {
  const factory _VerifyingCode({required final String phone}) =
      _$VerifyingCodeImpl;

  String get phone;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyingCodeImplCopyWith<_$VerifyingCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthorizedImplCopyWith<$Res> {
  factory _$$AuthorizedImplCopyWith(
    _$AuthorizedImpl value,
    $Res Function(_$AuthorizedImpl) then,
  ) = __$$AuthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token, int? userId, String? userUuid});
}

/// @nodoc
class __$$AuthorizedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthorizedImpl>
    implements _$$AuthorizedImplCopyWith<$Res> {
  __$$AuthorizedImplCopyWithImpl(
    _$AuthorizedImpl _value,
    $Res Function(_$AuthorizedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? userId = freezed,
    Object? userUuid = freezed,
  }) {
    return _then(
      _$AuthorizedImpl(
        token: null == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
        userUuid: freezed == userUuid
            ? _value.userUuid
            : userUuid // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$AuthorizedImpl implements _Authorized {
  const _$AuthorizedImpl({required this.token, this.userId, this.userUuid});

  @override
  final String token;
  @override
  final int? userId;
  @override
  final String? userUuid;

  @override
  String toString() {
    return 'AuthState.authorized(token: $token, userId: $userId, userUuid: $userUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizedImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userUuid, userUuid) ||
                other.userUuid == userUuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, userId, userUuid);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizedImplCopyWith<_$AuthorizedImpl> get copyWith =>
      __$$AuthorizedImplCopyWithImpl<_$AuthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String phone) sendingCode,
    required TResult Function(String phone, int expiresIn) codeSent,
    required TResult Function(String phone) verifyingCode,
    required TResult Function(String token, int? userId, String? userUuid)
    authorized,
    required TResult Function(String message, String? phone) error,
  }) {
    return authorized(token, userId, userUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String phone)? sendingCode,
    TResult? Function(String phone, int expiresIn)? codeSent,
    TResult? Function(String phone)? verifyingCode,
    TResult? Function(String token, int? userId, String? userUuid)? authorized,
    TResult? Function(String message, String? phone)? error,
  }) {
    return authorized?.call(token, userId, userUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String phone)? sendingCode,
    TResult Function(String phone, int expiresIn)? codeSent,
    TResult Function(String phone)? verifyingCode,
    TResult Function(String token, int? userId, String? userUuid)? authorized,
    TResult Function(String message, String? phone)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(token, userId, userUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_SendingCode value) sendingCode,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_VerifyingCode value) verifyingCode,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Error value) error,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_SendingCode value)? sendingCode,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_VerifyingCode value)? verifyingCode,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Error value)? error,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_SendingCode value)? sendingCode,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_VerifyingCode value)? verifyingCode,
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

abstract class _Authorized implements AuthState {
  const factory _Authorized({
    required final String token,
    final int? userId,
    final String? userUuid,
  }) = _$AuthorizedImpl;

  String get token;
  int? get userId;
  String? get userUuid;

  /// Create a copy of AuthState
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
  $Res call({String message, String? phone});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? phone = freezed}) {
    return _then(
      _$ErrorImpl(
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl({required this.message, this.phone});

  @override
  final String message;
  @override
  final String? phone;

  @override
  String toString() {
    return 'AuthState.error(message: $message, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, phone);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String phone) sendingCode,
    required TResult Function(String phone, int expiresIn) codeSent,
    required TResult Function(String phone) verifyingCode,
    required TResult Function(String token, int? userId, String? userUuid)
    authorized,
    required TResult Function(String message, String? phone) error,
  }) {
    return error(message, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String phone)? sendingCode,
    TResult? Function(String phone, int expiresIn)? codeSent,
    TResult? Function(String phone)? verifyingCode,
    TResult? Function(String token, int? userId, String? userUuid)? authorized,
    TResult? Function(String message, String? phone)? error,
  }) {
    return error?.call(message, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String phone)? sendingCode,
    TResult Function(String phone, int expiresIn)? codeSent,
    TResult Function(String phone)? verifyingCode,
    TResult Function(String token, int? userId, String? userUuid)? authorized,
    TResult Function(String message, String? phone)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_SendingCode value) sendingCode,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_VerifyingCode value) verifyingCode,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_SendingCode value)? sendingCode,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_VerifyingCode value)? verifyingCode,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_SendingCode value)? sendingCode,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_VerifyingCode value)? verifyingCode,
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

abstract class _Error implements AuthState {
  const factory _Error({required final String message, final String? phone}) =
      _$ErrorImpl;

  String get message;
  String? get phone;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

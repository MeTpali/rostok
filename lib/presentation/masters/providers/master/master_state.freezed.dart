// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MasterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MasterProfile master) resolved,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MasterProfile master)? resolved,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MasterProfile master)? resolved,
    TResult Function()? idle,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMasterState value) loading,
    required TResult Function(ResolvedMasterState value) resolved,
    required TResult Function(IdleMasterState value) idle,
    required TResult Function(ErrorMasterState value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMasterState value)? loading,
    TResult? Function(ResolvedMasterState value)? resolved,
    TResult? Function(IdleMasterState value)? idle,
    TResult? Function(ErrorMasterState value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMasterState value)? loading,
    TResult Function(ResolvedMasterState value)? resolved,
    TResult Function(IdleMasterState value)? idle,
    TResult Function(ErrorMasterState value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterStateCopyWith<$Res> {
  factory $MasterStateCopyWith(
    MasterState value,
    $Res Function(MasterState) then,
  ) = _$MasterStateCopyWithImpl<$Res, MasterState>;
}

/// @nodoc
class _$MasterStateCopyWithImpl<$Res, $Val extends MasterState>
    implements $MasterStateCopyWith<$Res> {
  _$MasterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MasterState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingMasterStateImplCopyWith<$Res> {
  factory _$$LoadingMasterStateImplCopyWith(
    _$LoadingMasterStateImpl value,
    $Res Function(_$LoadingMasterStateImpl) then,
  ) = __$$LoadingMasterStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMasterStateImplCopyWithImpl<$Res>
    extends _$MasterStateCopyWithImpl<$Res, _$LoadingMasterStateImpl>
    implements _$$LoadingMasterStateImplCopyWith<$Res> {
  __$$LoadingMasterStateImplCopyWithImpl(
    _$LoadingMasterStateImpl _value,
    $Res Function(_$LoadingMasterStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MasterState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingMasterStateImpl implements LoadingMasterState {
  const _$LoadingMasterStateImpl();

  @override
  String toString() {
    return 'MasterState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingMasterStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MasterProfile master) resolved,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MasterProfile master)? resolved,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MasterProfile master)? resolved,
    TResult Function()? idle,
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
    required TResult Function(LoadingMasterState value) loading,
    required TResult Function(ResolvedMasterState value) resolved,
    required TResult Function(IdleMasterState value) idle,
    required TResult Function(ErrorMasterState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMasterState value)? loading,
    TResult? Function(ResolvedMasterState value)? resolved,
    TResult? Function(IdleMasterState value)? idle,
    TResult? Function(ErrorMasterState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMasterState value)? loading,
    TResult Function(ResolvedMasterState value)? resolved,
    TResult Function(IdleMasterState value)? idle,
    TResult Function(ErrorMasterState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingMasterState implements MasterState {
  const factory LoadingMasterState() = _$LoadingMasterStateImpl;
}

/// @nodoc
abstract class _$$ResolvedMasterStateImplCopyWith<$Res> {
  factory _$$ResolvedMasterStateImplCopyWith(
    _$ResolvedMasterStateImpl value,
    $Res Function(_$ResolvedMasterStateImpl) then,
  ) = __$$ResolvedMasterStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MasterProfile master});

  $MasterProfileCopyWith<$Res> get master;
}

/// @nodoc
class __$$ResolvedMasterStateImplCopyWithImpl<$Res>
    extends _$MasterStateCopyWithImpl<$Res, _$ResolvedMasterStateImpl>
    implements _$$ResolvedMasterStateImplCopyWith<$Res> {
  __$$ResolvedMasterStateImplCopyWithImpl(
    _$ResolvedMasterStateImpl _value,
    $Res Function(_$ResolvedMasterStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MasterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? master = null}) {
    return _then(
      _$ResolvedMasterStateImpl(
        master: null == master
            ? _value.master
            : master // ignore: cast_nullable_to_non_nullable
                  as MasterProfile,
      ),
    );
  }

  /// Create a copy of MasterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MasterProfileCopyWith<$Res> get master {
    return $MasterProfileCopyWith<$Res>(_value.master, (value) {
      return _then(_value.copyWith(master: value));
    });
  }
}

/// @nodoc

class _$ResolvedMasterStateImpl implements ResolvedMasterState {
  const _$ResolvedMasterStateImpl({required this.master});

  @override
  final MasterProfile master;

  @override
  String toString() {
    return 'MasterState.resolved(master: $master)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResolvedMasterStateImpl &&
            (identical(other.master, master) || other.master == master));
  }

  @override
  int get hashCode => Object.hash(runtimeType, master);

  /// Create a copy of MasterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResolvedMasterStateImplCopyWith<_$ResolvedMasterStateImpl> get copyWith =>
      __$$ResolvedMasterStateImplCopyWithImpl<_$ResolvedMasterStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MasterProfile master) resolved,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return resolved(master);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MasterProfile master)? resolved,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return resolved?.call(master);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MasterProfile master)? resolved,
    TResult Function()? idle,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(master);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMasterState value) loading,
    required TResult Function(ResolvedMasterState value) resolved,
    required TResult Function(IdleMasterState value) idle,
    required TResult Function(ErrorMasterState value) error,
  }) {
    return resolved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMasterState value)? loading,
    TResult? Function(ResolvedMasterState value)? resolved,
    TResult? Function(IdleMasterState value)? idle,
    TResult? Function(ErrorMasterState value)? error,
  }) {
    return resolved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMasterState value)? loading,
    TResult Function(ResolvedMasterState value)? resolved,
    TResult Function(IdleMasterState value)? idle,
    TResult Function(ErrorMasterState value)? error,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(this);
    }
    return orElse();
  }
}

abstract class ResolvedMasterState implements MasterState {
  const factory ResolvedMasterState({required final MasterProfile master}) =
      _$ResolvedMasterStateImpl;

  MasterProfile get master;

  /// Create a copy of MasterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResolvedMasterStateImplCopyWith<_$ResolvedMasterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdleMasterStateImplCopyWith<$Res> {
  factory _$$IdleMasterStateImplCopyWith(
    _$IdleMasterStateImpl value,
    $Res Function(_$IdleMasterStateImpl) then,
  ) = __$$IdleMasterStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleMasterStateImplCopyWithImpl<$Res>
    extends _$MasterStateCopyWithImpl<$Res, _$IdleMasterStateImpl>
    implements _$$IdleMasterStateImplCopyWith<$Res> {
  __$$IdleMasterStateImplCopyWithImpl(
    _$IdleMasterStateImpl _value,
    $Res Function(_$IdleMasterStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MasterState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleMasterStateImpl implements IdleMasterState {
  const _$IdleMasterStateImpl();

  @override
  String toString() {
    return 'MasterState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleMasterStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MasterProfile master) resolved,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MasterProfile master)? resolved,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MasterProfile master)? resolved,
    TResult Function()? idle,
    TResult Function(String message)? error,
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
    required TResult Function(LoadingMasterState value) loading,
    required TResult Function(ResolvedMasterState value) resolved,
    required TResult Function(IdleMasterState value) idle,
    required TResult Function(ErrorMasterState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMasterState value)? loading,
    TResult? Function(ResolvedMasterState value)? resolved,
    TResult? Function(IdleMasterState value)? idle,
    TResult? Function(ErrorMasterState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMasterState value)? loading,
    TResult Function(ResolvedMasterState value)? resolved,
    TResult Function(IdleMasterState value)? idle,
    TResult Function(ErrorMasterState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleMasterState implements MasterState {
  const factory IdleMasterState() = _$IdleMasterStateImpl;
}

/// @nodoc
abstract class _$$ErrorMasterStateImplCopyWith<$Res> {
  factory _$$ErrorMasterStateImplCopyWith(
    _$ErrorMasterStateImpl value,
    $Res Function(_$ErrorMasterStateImpl) then,
  ) = __$$ErrorMasterStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorMasterStateImplCopyWithImpl<$Res>
    extends _$MasterStateCopyWithImpl<$Res, _$ErrorMasterStateImpl>
    implements _$$ErrorMasterStateImplCopyWith<$Res> {
  __$$ErrorMasterStateImplCopyWithImpl(
    _$ErrorMasterStateImpl _value,
    $Res Function(_$ErrorMasterStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MasterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorMasterStateImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorMasterStateImpl implements ErrorMasterState {
  const _$ErrorMasterStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MasterState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMasterStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MasterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMasterStateImplCopyWith<_$ErrorMasterStateImpl> get copyWith =>
      __$$ErrorMasterStateImplCopyWithImpl<_$ErrorMasterStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MasterProfile master) resolved,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MasterProfile master)? resolved,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MasterProfile master)? resolved,
    TResult Function()? idle,
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
    required TResult Function(LoadingMasterState value) loading,
    required TResult Function(ResolvedMasterState value) resolved,
    required TResult Function(IdleMasterState value) idle,
    required TResult Function(ErrorMasterState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMasterState value)? loading,
    TResult? Function(ResolvedMasterState value)? resolved,
    TResult? Function(IdleMasterState value)? idle,
    TResult? Function(ErrorMasterState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMasterState value)? loading,
    TResult Function(ResolvedMasterState value)? resolved,
    TResult Function(IdleMasterState value)? idle,
    TResult Function(ErrorMasterState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorMasterState implements MasterState {
  const factory ErrorMasterState(final String message) = _$ErrorMasterStateImpl;

  String get message;

  /// Create a copy of MasterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorMasterStateImplCopyWith<_$ErrorMasterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

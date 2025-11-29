// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_comments_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MasterCommentsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MasterComment> comments) resolved,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<MasterComment> comments)? resolved,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MasterComment> comments)? resolved,
    TResult Function()? idle,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMasterCommentsState value) loading,
    required TResult Function(ResolvedMasterCommentsState value) resolved,
    required TResult Function(IdleMasterCommentsState value) idle,
    required TResult Function(ErrorMasterCommentsState value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMasterCommentsState value)? loading,
    TResult? Function(ResolvedMasterCommentsState value)? resolved,
    TResult? Function(IdleMasterCommentsState value)? idle,
    TResult? Function(ErrorMasterCommentsState value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMasterCommentsState value)? loading,
    TResult Function(ResolvedMasterCommentsState value)? resolved,
    TResult Function(IdleMasterCommentsState value)? idle,
    TResult Function(ErrorMasterCommentsState value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterCommentsStateCopyWith<$Res> {
  factory $MasterCommentsStateCopyWith(
    MasterCommentsState value,
    $Res Function(MasterCommentsState) then,
  ) = _$MasterCommentsStateCopyWithImpl<$Res, MasterCommentsState>;
}

/// @nodoc
class _$MasterCommentsStateCopyWithImpl<$Res, $Val extends MasterCommentsState>
    implements $MasterCommentsStateCopyWith<$Res> {
  _$MasterCommentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MasterCommentsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingMasterCommentsStateImplCopyWith<$Res> {
  factory _$$LoadingMasterCommentsStateImplCopyWith(
    _$LoadingMasterCommentsStateImpl value,
    $Res Function(_$LoadingMasterCommentsStateImpl) then,
  ) = __$$LoadingMasterCommentsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMasterCommentsStateImplCopyWithImpl<$Res>
    extends
        _$MasterCommentsStateCopyWithImpl<
          $Res,
          _$LoadingMasterCommentsStateImpl
        >
    implements _$$LoadingMasterCommentsStateImplCopyWith<$Res> {
  __$$LoadingMasterCommentsStateImplCopyWithImpl(
    _$LoadingMasterCommentsStateImpl _value,
    $Res Function(_$LoadingMasterCommentsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MasterCommentsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingMasterCommentsStateImpl implements LoadingMasterCommentsState {
  const _$LoadingMasterCommentsStateImpl();

  @override
  String toString() {
    return 'MasterCommentsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingMasterCommentsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MasterComment> comments) resolved,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<MasterComment> comments)? resolved,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MasterComment> comments)? resolved,
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
    required TResult Function(LoadingMasterCommentsState value) loading,
    required TResult Function(ResolvedMasterCommentsState value) resolved,
    required TResult Function(IdleMasterCommentsState value) idle,
    required TResult Function(ErrorMasterCommentsState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMasterCommentsState value)? loading,
    TResult? Function(ResolvedMasterCommentsState value)? resolved,
    TResult? Function(IdleMasterCommentsState value)? idle,
    TResult? Function(ErrorMasterCommentsState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMasterCommentsState value)? loading,
    TResult Function(ResolvedMasterCommentsState value)? resolved,
    TResult Function(IdleMasterCommentsState value)? idle,
    TResult Function(ErrorMasterCommentsState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingMasterCommentsState implements MasterCommentsState {
  const factory LoadingMasterCommentsState() = _$LoadingMasterCommentsStateImpl;
}

/// @nodoc
abstract class _$$ResolvedMasterCommentsStateImplCopyWith<$Res> {
  factory _$$ResolvedMasterCommentsStateImplCopyWith(
    _$ResolvedMasterCommentsStateImpl value,
    $Res Function(_$ResolvedMasterCommentsStateImpl) then,
  ) = __$$ResolvedMasterCommentsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MasterComment> comments});
}

/// @nodoc
class __$$ResolvedMasterCommentsStateImplCopyWithImpl<$Res>
    extends
        _$MasterCommentsStateCopyWithImpl<
          $Res,
          _$ResolvedMasterCommentsStateImpl
        >
    implements _$$ResolvedMasterCommentsStateImplCopyWith<$Res> {
  __$$ResolvedMasterCommentsStateImplCopyWithImpl(
    _$ResolvedMasterCommentsStateImpl _value,
    $Res Function(_$ResolvedMasterCommentsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MasterCommentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? comments = null}) {
    return _then(
      _$ResolvedMasterCommentsStateImpl(
        comments: null == comments
            ? _value._comments
            : comments // ignore: cast_nullable_to_non_nullable
                  as List<MasterComment>,
      ),
    );
  }
}

/// @nodoc

class _$ResolvedMasterCommentsStateImpl implements ResolvedMasterCommentsState {
  const _$ResolvedMasterCommentsStateImpl({
    final List<MasterComment> comments = const [],
  }) : _comments = comments;

  final List<MasterComment> _comments;
  @override
  @JsonKey()
  List<MasterComment> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'MasterCommentsState.resolved(comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResolvedMasterCommentsStateImpl &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  /// Create a copy of MasterCommentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResolvedMasterCommentsStateImplCopyWith<_$ResolvedMasterCommentsStateImpl>
  get copyWith =>
      __$$ResolvedMasterCommentsStateImplCopyWithImpl<
        _$ResolvedMasterCommentsStateImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MasterComment> comments) resolved,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return resolved(comments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<MasterComment> comments)? resolved,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return resolved?.call(comments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MasterComment> comments)? resolved,
    TResult Function()? idle,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(comments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMasterCommentsState value) loading,
    required TResult Function(ResolvedMasterCommentsState value) resolved,
    required TResult Function(IdleMasterCommentsState value) idle,
    required TResult Function(ErrorMasterCommentsState value) error,
  }) {
    return resolved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMasterCommentsState value)? loading,
    TResult? Function(ResolvedMasterCommentsState value)? resolved,
    TResult? Function(IdleMasterCommentsState value)? idle,
    TResult? Function(ErrorMasterCommentsState value)? error,
  }) {
    return resolved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMasterCommentsState value)? loading,
    TResult Function(ResolvedMasterCommentsState value)? resolved,
    TResult Function(IdleMasterCommentsState value)? idle,
    TResult Function(ErrorMasterCommentsState value)? error,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(this);
    }
    return orElse();
  }
}

abstract class ResolvedMasterCommentsState implements MasterCommentsState {
  const factory ResolvedMasterCommentsState({
    final List<MasterComment> comments,
  }) = _$ResolvedMasterCommentsStateImpl;

  List<MasterComment> get comments;

  /// Create a copy of MasterCommentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResolvedMasterCommentsStateImplCopyWith<_$ResolvedMasterCommentsStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdleMasterCommentsStateImplCopyWith<$Res> {
  factory _$$IdleMasterCommentsStateImplCopyWith(
    _$IdleMasterCommentsStateImpl value,
    $Res Function(_$IdleMasterCommentsStateImpl) then,
  ) = __$$IdleMasterCommentsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleMasterCommentsStateImplCopyWithImpl<$Res>
    extends
        _$MasterCommentsStateCopyWithImpl<$Res, _$IdleMasterCommentsStateImpl>
    implements _$$IdleMasterCommentsStateImplCopyWith<$Res> {
  __$$IdleMasterCommentsStateImplCopyWithImpl(
    _$IdleMasterCommentsStateImpl _value,
    $Res Function(_$IdleMasterCommentsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MasterCommentsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleMasterCommentsStateImpl implements IdleMasterCommentsState {
  const _$IdleMasterCommentsStateImpl();

  @override
  String toString() {
    return 'MasterCommentsState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleMasterCommentsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MasterComment> comments) resolved,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<MasterComment> comments)? resolved,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MasterComment> comments)? resolved,
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
    required TResult Function(LoadingMasterCommentsState value) loading,
    required TResult Function(ResolvedMasterCommentsState value) resolved,
    required TResult Function(IdleMasterCommentsState value) idle,
    required TResult Function(ErrorMasterCommentsState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMasterCommentsState value)? loading,
    TResult? Function(ResolvedMasterCommentsState value)? resolved,
    TResult? Function(IdleMasterCommentsState value)? idle,
    TResult? Function(ErrorMasterCommentsState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMasterCommentsState value)? loading,
    TResult Function(ResolvedMasterCommentsState value)? resolved,
    TResult Function(IdleMasterCommentsState value)? idle,
    TResult Function(ErrorMasterCommentsState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleMasterCommentsState implements MasterCommentsState {
  const factory IdleMasterCommentsState() = _$IdleMasterCommentsStateImpl;
}

/// @nodoc
abstract class _$$ErrorMasterCommentsStateImplCopyWith<$Res> {
  factory _$$ErrorMasterCommentsStateImplCopyWith(
    _$ErrorMasterCommentsStateImpl value,
    $Res Function(_$ErrorMasterCommentsStateImpl) then,
  ) = __$$ErrorMasterCommentsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorMasterCommentsStateImplCopyWithImpl<$Res>
    extends
        _$MasterCommentsStateCopyWithImpl<$Res, _$ErrorMasterCommentsStateImpl>
    implements _$$ErrorMasterCommentsStateImplCopyWith<$Res> {
  __$$ErrorMasterCommentsStateImplCopyWithImpl(
    _$ErrorMasterCommentsStateImpl _value,
    $Res Function(_$ErrorMasterCommentsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MasterCommentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorMasterCommentsStateImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorMasterCommentsStateImpl implements ErrorMasterCommentsState {
  const _$ErrorMasterCommentsStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MasterCommentsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMasterCommentsStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MasterCommentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMasterCommentsStateImplCopyWith<_$ErrorMasterCommentsStateImpl>
  get copyWith =>
      __$$ErrorMasterCommentsStateImplCopyWithImpl<
        _$ErrorMasterCommentsStateImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<MasterComment> comments) resolved,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<MasterComment> comments)? resolved,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<MasterComment> comments)? resolved,
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
    required TResult Function(LoadingMasterCommentsState value) loading,
    required TResult Function(ResolvedMasterCommentsState value) resolved,
    required TResult Function(IdleMasterCommentsState value) idle,
    required TResult Function(ErrorMasterCommentsState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMasterCommentsState value)? loading,
    TResult? Function(ResolvedMasterCommentsState value)? resolved,
    TResult? Function(IdleMasterCommentsState value)? idle,
    TResult? Function(ErrorMasterCommentsState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMasterCommentsState value)? loading,
    TResult Function(ResolvedMasterCommentsState value)? resolved,
    TResult Function(IdleMasterCommentsState value)? idle,
    TResult Function(ErrorMasterCommentsState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorMasterCommentsState implements MasterCommentsState {
  const factory ErrorMasterCommentsState(final String message) =
      _$ErrorMasterCommentsStateImpl;

  String get message;

  /// Create a copy of MasterCommentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorMasterCommentsStateImplCopyWith<_$ErrorMasterCommentsStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

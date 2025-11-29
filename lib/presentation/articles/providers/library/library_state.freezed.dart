// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'library_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LibraryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Knowledge> knowledges) resolved,
    required TResult Function() idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Knowledge> knowledges)? resolved,
    TResult? Function()? idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Knowledge> knowledges)? resolved,
    TResult Function()? idle,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingLibraryState value) loading,
    required TResult Function(ResolvedLibraryState value) resolved,
    required TResult Function(IdleLibraryState value) idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingLibraryState value)? loading,
    TResult? Function(ResolvedLibraryState value)? resolved,
    TResult? Function(IdleLibraryState value)? idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingLibraryState value)? loading,
    TResult Function(ResolvedLibraryState value)? resolved,
    TResult Function(IdleLibraryState value)? idle,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryStateCopyWith<$Res> {
  factory $LibraryStateCopyWith(
    LibraryState value,
    $Res Function(LibraryState) then,
  ) = _$LibraryStateCopyWithImpl<$Res, LibraryState>;
}

/// @nodoc
class _$LibraryStateCopyWithImpl<$Res, $Val extends LibraryState>
    implements $LibraryStateCopyWith<$Res> {
  _$LibraryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LibraryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingLibraryStateImplCopyWith<$Res> {
  factory _$$LoadingLibraryStateImplCopyWith(
    _$LoadingLibraryStateImpl value,
    $Res Function(_$LoadingLibraryStateImpl) then,
  ) = __$$LoadingLibraryStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingLibraryStateImplCopyWithImpl<$Res>
    extends _$LibraryStateCopyWithImpl<$Res, _$LoadingLibraryStateImpl>
    implements _$$LoadingLibraryStateImplCopyWith<$Res> {
  __$$LoadingLibraryStateImplCopyWithImpl(
    _$LoadingLibraryStateImpl _value,
    $Res Function(_$LoadingLibraryStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LibraryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingLibraryStateImpl implements LoadingLibraryState {
  const _$LoadingLibraryStateImpl();

  @override
  String toString() {
    return 'LibraryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingLibraryStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Knowledge> knowledges) resolved,
    required TResult Function() idle,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Knowledge> knowledges)? resolved,
    TResult? Function()? idle,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Knowledge> knowledges)? resolved,
    TResult Function()? idle,
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
    required TResult Function(LoadingLibraryState value) loading,
    required TResult Function(ResolvedLibraryState value) resolved,
    required TResult Function(IdleLibraryState value) idle,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingLibraryState value)? loading,
    TResult? Function(ResolvedLibraryState value)? resolved,
    TResult? Function(IdleLibraryState value)? idle,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingLibraryState value)? loading,
    TResult Function(ResolvedLibraryState value)? resolved,
    TResult Function(IdleLibraryState value)? idle,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingLibraryState implements LibraryState {
  const factory LoadingLibraryState() = _$LoadingLibraryStateImpl;
}

/// @nodoc
abstract class _$$ResolvedLibraryStateImplCopyWith<$Res> {
  factory _$$ResolvedLibraryStateImplCopyWith(
    _$ResolvedLibraryStateImpl value,
    $Res Function(_$ResolvedLibraryStateImpl) then,
  ) = __$$ResolvedLibraryStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Knowledge> knowledges});
}

/// @nodoc
class __$$ResolvedLibraryStateImplCopyWithImpl<$Res>
    extends _$LibraryStateCopyWithImpl<$Res, _$ResolvedLibraryStateImpl>
    implements _$$ResolvedLibraryStateImplCopyWith<$Res> {
  __$$ResolvedLibraryStateImplCopyWithImpl(
    _$ResolvedLibraryStateImpl _value,
    $Res Function(_$ResolvedLibraryStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LibraryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? knowledges = null}) {
    return _then(
      _$ResolvedLibraryStateImpl(
        knowledges: null == knowledges
            ? _value._knowledges
            : knowledges // ignore: cast_nullable_to_non_nullable
                  as List<Knowledge>,
      ),
    );
  }
}

/// @nodoc

class _$ResolvedLibraryStateImpl implements ResolvedLibraryState {
  const _$ResolvedLibraryStateImpl({required final List<Knowledge> knowledges})
    : _knowledges = knowledges;

  final List<Knowledge> _knowledges;
  @override
  List<Knowledge> get knowledges {
    if (_knowledges is EqualUnmodifiableListView) return _knowledges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_knowledges);
  }

  @override
  String toString() {
    return 'LibraryState.resolved(knowledges: $knowledges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResolvedLibraryStateImpl &&
            const DeepCollectionEquality().equals(
              other._knowledges,
              _knowledges,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_knowledges),
  );

  /// Create a copy of LibraryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResolvedLibraryStateImplCopyWith<_$ResolvedLibraryStateImpl>
  get copyWith =>
      __$$ResolvedLibraryStateImplCopyWithImpl<_$ResolvedLibraryStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Knowledge> knowledges) resolved,
    required TResult Function() idle,
  }) {
    return resolved(knowledges);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Knowledge> knowledges)? resolved,
    TResult? Function()? idle,
  }) {
    return resolved?.call(knowledges);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Knowledge> knowledges)? resolved,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(knowledges);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingLibraryState value) loading,
    required TResult Function(ResolvedLibraryState value) resolved,
    required TResult Function(IdleLibraryState value) idle,
  }) {
    return resolved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingLibraryState value)? loading,
    TResult? Function(ResolvedLibraryState value)? resolved,
    TResult? Function(IdleLibraryState value)? idle,
  }) {
    return resolved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingLibraryState value)? loading,
    TResult Function(ResolvedLibraryState value)? resolved,
    TResult Function(IdleLibraryState value)? idle,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(this);
    }
    return orElse();
  }
}

abstract class ResolvedLibraryState implements LibraryState {
  const factory ResolvedLibraryState({
    required final List<Knowledge> knowledges,
  }) = _$ResolvedLibraryStateImpl;

  List<Knowledge> get knowledges;

  /// Create a copy of LibraryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResolvedLibraryStateImplCopyWith<_$ResolvedLibraryStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdleLibraryStateImplCopyWith<$Res> {
  factory _$$IdleLibraryStateImplCopyWith(
    _$IdleLibraryStateImpl value,
    $Res Function(_$IdleLibraryStateImpl) then,
  ) = __$$IdleLibraryStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleLibraryStateImplCopyWithImpl<$Res>
    extends _$LibraryStateCopyWithImpl<$Res, _$IdleLibraryStateImpl>
    implements _$$IdleLibraryStateImplCopyWith<$Res> {
  __$$IdleLibraryStateImplCopyWithImpl(
    _$IdleLibraryStateImpl _value,
    $Res Function(_$IdleLibraryStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LibraryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleLibraryStateImpl implements IdleLibraryState {
  const _$IdleLibraryStateImpl();

  @override
  String toString() {
    return 'LibraryState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleLibraryStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Knowledge> knowledges) resolved,
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Knowledge> knowledges)? resolved,
    TResult? Function()? idle,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Knowledge> knowledges)? resolved,
    TResult Function()? idle,
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
    required TResult Function(LoadingLibraryState value) loading,
    required TResult Function(ResolvedLibraryState value) resolved,
    required TResult Function(IdleLibraryState value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingLibraryState value)? loading,
    TResult? Function(ResolvedLibraryState value)? resolved,
    TResult? Function(IdleLibraryState value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingLibraryState value)? loading,
    TResult Function(ResolvedLibraryState value)? resolved,
    TResult Function(IdleLibraryState value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleLibraryState implements LibraryState {
  const factory IdleLibraryState() = _$IdleLibraryStateImpl;
}

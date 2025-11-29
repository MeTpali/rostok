// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practices_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PracticesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<String> practices) resolved,
    required TResult Function() idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<String> practices)? resolved,
    TResult? Function()? idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<String> practices)? resolved,
    TResult Function()? idle,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingPracticesState value) loading,
    required TResult Function(ResolvedPracticesState value) resolved,
    required TResult Function(IdlePracticesState value) idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingPracticesState value)? loading,
    TResult? Function(ResolvedPracticesState value)? resolved,
    TResult? Function(IdlePracticesState value)? idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingPracticesState value)? loading,
    TResult Function(ResolvedPracticesState value)? resolved,
    TResult Function(IdlePracticesState value)? idle,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticesStateCopyWith<$Res> {
  factory $PracticesStateCopyWith(
    PracticesState value,
    $Res Function(PracticesState) then,
  ) = _$PracticesStateCopyWithImpl<$Res, PracticesState>;
}

/// @nodoc
class _$PracticesStateCopyWithImpl<$Res, $Val extends PracticesState>
    implements $PracticesStateCopyWith<$Res> {
  _$PracticesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PracticesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingPracticesStateImplCopyWith<$Res> {
  factory _$$LoadingPracticesStateImplCopyWith(
    _$LoadingPracticesStateImpl value,
    $Res Function(_$LoadingPracticesStateImpl) then,
  ) = __$$LoadingPracticesStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingPracticesStateImplCopyWithImpl<$Res>
    extends _$PracticesStateCopyWithImpl<$Res, _$LoadingPracticesStateImpl>
    implements _$$LoadingPracticesStateImplCopyWith<$Res> {
  __$$LoadingPracticesStateImplCopyWithImpl(
    _$LoadingPracticesStateImpl _value,
    $Res Function(_$LoadingPracticesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PracticesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingPracticesStateImpl implements LoadingPracticesState {
  const _$LoadingPracticesStateImpl();

  @override
  String toString() {
    return 'PracticesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingPracticesStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<String> practices) resolved,
    required TResult Function() idle,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<String> practices)? resolved,
    TResult? Function()? idle,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<String> practices)? resolved,
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
    required TResult Function(LoadingPracticesState value) loading,
    required TResult Function(ResolvedPracticesState value) resolved,
    required TResult Function(IdlePracticesState value) idle,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingPracticesState value)? loading,
    TResult? Function(ResolvedPracticesState value)? resolved,
    TResult? Function(IdlePracticesState value)? idle,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingPracticesState value)? loading,
    TResult Function(ResolvedPracticesState value)? resolved,
    TResult Function(IdlePracticesState value)? idle,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingPracticesState implements PracticesState {
  const factory LoadingPracticesState() = _$LoadingPracticesStateImpl;
}

/// @nodoc
abstract class _$$ResolvedPracticesStateImplCopyWith<$Res> {
  factory _$$ResolvedPracticesStateImplCopyWith(
    _$ResolvedPracticesStateImpl value,
    $Res Function(_$ResolvedPracticesStateImpl) then,
  ) = __$$ResolvedPracticesStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> practices});
}

/// @nodoc
class __$$ResolvedPracticesStateImplCopyWithImpl<$Res>
    extends _$PracticesStateCopyWithImpl<$Res, _$ResolvedPracticesStateImpl>
    implements _$$ResolvedPracticesStateImplCopyWith<$Res> {
  __$$ResolvedPracticesStateImplCopyWithImpl(
    _$ResolvedPracticesStateImpl _value,
    $Res Function(_$ResolvedPracticesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PracticesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? practices = null}) {
    return _then(
      _$ResolvedPracticesStateImpl(
        practices: null == practices
            ? _value._practices
            : practices // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$ResolvedPracticesStateImpl implements ResolvedPracticesState {
  const _$ResolvedPracticesStateImpl({required final List<String> practices})
    : _practices = practices;

  final List<String> _practices;
  @override
  List<String> get practices {
    if (_practices is EqualUnmodifiableListView) return _practices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_practices);
  }

  @override
  String toString() {
    return 'PracticesState.resolved(practices: $practices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResolvedPracticesStateImpl &&
            const DeepCollectionEquality().equals(
              other._practices,
              _practices,
            ));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_practices));

  /// Create a copy of PracticesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResolvedPracticesStateImplCopyWith<_$ResolvedPracticesStateImpl>
  get copyWith =>
      __$$ResolvedPracticesStateImplCopyWithImpl<_$ResolvedPracticesStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<String> practices) resolved,
    required TResult Function() idle,
  }) {
    return resolved(practices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<String> practices)? resolved,
    TResult? Function()? idle,
  }) {
    return resolved?.call(practices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<String> practices)? resolved,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(practices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingPracticesState value) loading,
    required TResult Function(ResolvedPracticesState value) resolved,
    required TResult Function(IdlePracticesState value) idle,
  }) {
    return resolved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingPracticesState value)? loading,
    TResult? Function(ResolvedPracticesState value)? resolved,
    TResult? Function(IdlePracticesState value)? idle,
  }) {
    return resolved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingPracticesState value)? loading,
    TResult Function(ResolvedPracticesState value)? resolved,
    TResult Function(IdlePracticesState value)? idle,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(this);
    }
    return orElse();
  }
}

abstract class ResolvedPracticesState implements PracticesState {
  const factory ResolvedPracticesState({
    required final List<String> practices,
  }) = _$ResolvedPracticesStateImpl;

  List<String> get practices;

  /// Create a copy of PracticesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResolvedPracticesStateImplCopyWith<_$ResolvedPracticesStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdlePracticesStateImplCopyWith<$Res> {
  factory _$$IdlePracticesStateImplCopyWith(
    _$IdlePracticesStateImpl value,
    $Res Function(_$IdlePracticesStateImpl) then,
  ) = __$$IdlePracticesStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdlePracticesStateImplCopyWithImpl<$Res>
    extends _$PracticesStateCopyWithImpl<$Res, _$IdlePracticesStateImpl>
    implements _$$IdlePracticesStateImplCopyWith<$Res> {
  __$$IdlePracticesStateImplCopyWithImpl(
    _$IdlePracticesStateImpl _value,
    $Res Function(_$IdlePracticesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PracticesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdlePracticesStateImpl implements IdlePracticesState {
  const _$IdlePracticesStateImpl();

  @override
  String toString() {
    return 'PracticesState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdlePracticesStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<String> practices) resolved,
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<String> practices)? resolved,
    TResult? Function()? idle,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<String> practices)? resolved,
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
    required TResult Function(LoadingPracticesState value) loading,
    required TResult Function(ResolvedPracticesState value) resolved,
    required TResult Function(IdlePracticesState value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingPracticesState value)? loading,
    TResult? Function(ResolvedPracticesState value)? resolved,
    TResult? Function(IdlePracticesState value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingPracticesState value)? loading,
    TResult Function(ResolvedPracticesState value)? resolved,
    TResult Function(IdlePracticesState value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdlePracticesState implements PracticesState {
  const factory IdlePracticesState() = _$IdlePracticesStateImpl;
}

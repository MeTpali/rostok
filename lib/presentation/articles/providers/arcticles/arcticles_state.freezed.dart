// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arcticles_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ArcticlesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int topicId, List<Topic> arcticles) resolved,
    required TResult Function() idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int topicId, List<Topic> arcticles)? resolved,
    TResult? Function()? idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int topicId, List<Topic> arcticles)? resolved,
    TResult Function()? idle,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingArcticlesState value) loading,
    required TResult Function(ResolvedArcticlesState value) resolved,
    required TResult Function(IdleArcticlesState value) idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingArcticlesState value)? loading,
    TResult? Function(ResolvedArcticlesState value)? resolved,
    TResult? Function(IdleArcticlesState value)? idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingArcticlesState value)? loading,
    TResult Function(ResolvedArcticlesState value)? resolved,
    TResult Function(IdleArcticlesState value)? idle,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArcticlesStateCopyWith<$Res> {
  factory $ArcticlesStateCopyWith(
    ArcticlesState value,
    $Res Function(ArcticlesState) then,
  ) = _$ArcticlesStateCopyWithImpl<$Res, ArcticlesState>;
}

/// @nodoc
class _$ArcticlesStateCopyWithImpl<$Res, $Val extends ArcticlesState>
    implements $ArcticlesStateCopyWith<$Res> {
  _$ArcticlesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArcticlesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingArcticlesStateImplCopyWith<$Res> {
  factory _$$LoadingArcticlesStateImplCopyWith(
    _$LoadingArcticlesStateImpl value,
    $Res Function(_$LoadingArcticlesStateImpl) then,
  ) = __$$LoadingArcticlesStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingArcticlesStateImplCopyWithImpl<$Res>
    extends _$ArcticlesStateCopyWithImpl<$Res, _$LoadingArcticlesStateImpl>
    implements _$$LoadingArcticlesStateImplCopyWith<$Res> {
  __$$LoadingArcticlesStateImplCopyWithImpl(
    _$LoadingArcticlesStateImpl _value,
    $Res Function(_$LoadingArcticlesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArcticlesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingArcticlesStateImpl implements LoadingArcticlesState {
  const _$LoadingArcticlesStateImpl();

  @override
  String toString() {
    return 'ArcticlesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingArcticlesStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int topicId, List<Topic> arcticles) resolved,
    required TResult Function() idle,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int topicId, List<Topic> arcticles)? resolved,
    TResult? Function()? idle,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int topicId, List<Topic> arcticles)? resolved,
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
    required TResult Function(LoadingArcticlesState value) loading,
    required TResult Function(ResolvedArcticlesState value) resolved,
    required TResult Function(IdleArcticlesState value) idle,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingArcticlesState value)? loading,
    TResult? Function(ResolvedArcticlesState value)? resolved,
    TResult? Function(IdleArcticlesState value)? idle,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingArcticlesState value)? loading,
    TResult Function(ResolvedArcticlesState value)? resolved,
    TResult Function(IdleArcticlesState value)? idle,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingArcticlesState implements ArcticlesState {
  const factory LoadingArcticlesState() = _$LoadingArcticlesStateImpl;
}

/// @nodoc
abstract class _$$ResolvedArcticlesStateImplCopyWith<$Res> {
  factory _$$ResolvedArcticlesStateImplCopyWith(
    _$ResolvedArcticlesStateImpl value,
    $Res Function(_$ResolvedArcticlesStateImpl) then,
  ) = __$$ResolvedArcticlesStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int topicId, List<Topic> arcticles});
}

/// @nodoc
class __$$ResolvedArcticlesStateImplCopyWithImpl<$Res>
    extends _$ArcticlesStateCopyWithImpl<$Res, _$ResolvedArcticlesStateImpl>
    implements _$$ResolvedArcticlesStateImplCopyWith<$Res> {
  __$$ResolvedArcticlesStateImplCopyWithImpl(
    _$ResolvedArcticlesStateImpl _value,
    $Res Function(_$ResolvedArcticlesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArcticlesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? topicId = null, Object? arcticles = null}) {
    return _then(
      _$ResolvedArcticlesStateImpl(
        topicId: null == topicId
            ? _value.topicId
            : topicId // ignore: cast_nullable_to_non_nullable
                  as int,
        arcticles: null == arcticles
            ? _value._arcticles
            : arcticles // ignore: cast_nullable_to_non_nullable
                  as List<Topic>,
      ),
    );
  }
}

/// @nodoc

class _$ResolvedArcticlesStateImpl implements ResolvedArcticlesState {
  const _$ResolvedArcticlesStateImpl({
    required this.topicId,
    required final List<Topic> arcticles,
  }) : _arcticles = arcticles;

  @override
  final int topicId;
  final List<Topic> _arcticles;
  @override
  List<Topic> get arcticles {
    if (_arcticles is EqualUnmodifiableListView) return _arcticles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_arcticles);
  }

  @override
  String toString() {
    return 'ArcticlesState.resolved(topicId: $topicId, arcticles: $arcticles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResolvedArcticlesStateImpl &&
            (identical(other.topicId, topicId) || other.topicId == topicId) &&
            const DeepCollectionEquality().equals(
              other._arcticles,
              _arcticles,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    topicId,
    const DeepCollectionEquality().hash(_arcticles),
  );

  /// Create a copy of ArcticlesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResolvedArcticlesStateImplCopyWith<_$ResolvedArcticlesStateImpl>
  get copyWith =>
      __$$ResolvedArcticlesStateImplCopyWithImpl<_$ResolvedArcticlesStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int topicId, List<Topic> arcticles) resolved,
    required TResult Function() idle,
  }) {
    return resolved(topicId, arcticles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int topicId, List<Topic> arcticles)? resolved,
    TResult? Function()? idle,
  }) {
    return resolved?.call(topicId, arcticles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int topicId, List<Topic> arcticles)? resolved,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(topicId, arcticles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingArcticlesState value) loading,
    required TResult Function(ResolvedArcticlesState value) resolved,
    required TResult Function(IdleArcticlesState value) idle,
  }) {
    return resolved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingArcticlesState value)? loading,
    TResult? Function(ResolvedArcticlesState value)? resolved,
    TResult? Function(IdleArcticlesState value)? idle,
  }) {
    return resolved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingArcticlesState value)? loading,
    TResult Function(ResolvedArcticlesState value)? resolved,
    TResult Function(IdleArcticlesState value)? idle,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(this);
    }
    return orElse();
  }
}

abstract class ResolvedArcticlesState implements ArcticlesState {
  const factory ResolvedArcticlesState({
    required final int topicId,
    required final List<Topic> arcticles,
  }) = _$ResolvedArcticlesStateImpl;

  int get topicId;
  List<Topic> get arcticles;

  /// Create a copy of ArcticlesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResolvedArcticlesStateImplCopyWith<_$ResolvedArcticlesStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdleArcticlesStateImplCopyWith<$Res> {
  factory _$$IdleArcticlesStateImplCopyWith(
    _$IdleArcticlesStateImpl value,
    $Res Function(_$IdleArcticlesStateImpl) then,
  ) = __$$IdleArcticlesStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleArcticlesStateImplCopyWithImpl<$Res>
    extends _$ArcticlesStateCopyWithImpl<$Res, _$IdleArcticlesStateImpl>
    implements _$$IdleArcticlesStateImplCopyWith<$Res> {
  __$$IdleArcticlesStateImplCopyWithImpl(
    _$IdleArcticlesStateImpl _value,
    $Res Function(_$IdleArcticlesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArcticlesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleArcticlesStateImpl implements IdleArcticlesState {
  const _$IdleArcticlesStateImpl();

  @override
  String toString() {
    return 'ArcticlesState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleArcticlesStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int topicId, List<Topic> arcticles) resolved,
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int topicId, List<Topic> arcticles)? resolved,
    TResult? Function()? idle,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int topicId, List<Topic> arcticles)? resolved,
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
    required TResult Function(LoadingArcticlesState value) loading,
    required TResult Function(ResolvedArcticlesState value) resolved,
    required TResult Function(IdleArcticlesState value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingArcticlesState value)? loading,
    TResult? Function(ResolvedArcticlesState value)? resolved,
    TResult? Function(IdleArcticlesState value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingArcticlesState value)? loading,
    TResult Function(ResolvedArcticlesState value)? resolved,
    TResult Function(IdleArcticlesState value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleArcticlesState implements ArcticlesState {
  const factory IdleArcticlesState() = _$IdleArcticlesStateImpl;
}

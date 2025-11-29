// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topics_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$TopicsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<String> topics) resolved,
    required TResult Function() idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<String> topics)? resolved,
    TResult? Function()? idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<String> topics)? resolved,
    TResult Function()? idle,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingTopicsState value) loading,
    required TResult Function(ResolvedTopicsState value) resolved,
    required TResult Function(IdleTopicsState value) idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingTopicsState value)? loading,
    TResult? Function(ResolvedTopicsState value)? resolved,
    TResult? Function(IdleTopicsState value)? idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingTopicsState value)? loading,
    TResult Function(ResolvedTopicsState value)? resolved,
    TResult Function(IdleTopicsState value)? idle,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicsStateCopyWith<$Res> {
  factory $TopicsStateCopyWith(
    TopicsState value,
    $Res Function(TopicsState) then,
  ) = _$TopicsStateCopyWithImpl<$Res, TopicsState>;
}

/// @nodoc
class _$TopicsStateCopyWithImpl<$Res, $Val extends TopicsState>
    implements $TopicsStateCopyWith<$Res> {
  _$TopicsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopicsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingTopicsStateImplCopyWith<$Res> {
  factory _$$LoadingTopicsStateImplCopyWith(
    _$LoadingTopicsStateImpl value,
    $Res Function(_$LoadingTopicsStateImpl) then,
  ) = __$$LoadingTopicsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingTopicsStateImplCopyWithImpl<$Res>
    extends _$TopicsStateCopyWithImpl<$Res, _$LoadingTopicsStateImpl>
    implements _$$LoadingTopicsStateImplCopyWith<$Res> {
  __$$LoadingTopicsStateImplCopyWithImpl(
    _$LoadingTopicsStateImpl _value,
    $Res Function(_$LoadingTopicsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopicsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingTopicsStateImpl implements LoadingTopicsState {
  const _$LoadingTopicsStateImpl();

  @override
  String toString() {
    return 'TopicsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingTopicsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<String> topics) resolved,
    required TResult Function() idle,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<String> topics)? resolved,
    TResult? Function()? idle,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<String> topics)? resolved,
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
    required TResult Function(LoadingTopicsState value) loading,
    required TResult Function(ResolvedTopicsState value) resolved,
    required TResult Function(IdleTopicsState value) idle,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingTopicsState value)? loading,
    TResult? Function(ResolvedTopicsState value)? resolved,
    TResult? Function(IdleTopicsState value)? idle,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingTopicsState value)? loading,
    TResult Function(ResolvedTopicsState value)? resolved,
    TResult Function(IdleTopicsState value)? idle,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingTopicsState implements TopicsState {
  const factory LoadingTopicsState() = _$LoadingTopicsStateImpl;
}

/// @nodoc
abstract class _$$ResolvedTopicsStateImplCopyWith<$Res> {
  factory _$$ResolvedTopicsStateImplCopyWith(
    _$ResolvedTopicsStateImpl value,
    $Res Function(_$ResolvedTopicsStateImpl) then,
  ) = __$$ResolvedTopicsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> topics});
}

/// @nodoc
class __$$ResolvedTopicsStateImplCopyWithImpl<$Res>
    extends _$TopicsStateCopyWithImpl<$Res, _$ResolvedTopicsStateImpl>
    implements _$$ResolvedTopicsStateImplCopyWith<$Res> {
  __$$ResolvedTopicsStateImplCopyWithImpl(
    _$ResolvedTopicsStateImpl _value,
    $Res Function(_$ResolvedTopicsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopicsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? topics = null}) {
    return _then(
      _$ResolvedTopicsStateImpl(
        topics: null == topics
            ? _value._topics
            : topics // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$ResolvedTopicsStateImpl implements ResolvedTopicsState {
  const _$ResolvedTopicsStateImpl({required final List<String> topics})
    : _topics = topics;

  final List<String> _topics;
  @override
  List<String> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString() {
    return 'TopicsState.resolved(topics: $topics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResolvedTopicsStateImpl &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_topics));

  /// Create a copy of TopicsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResolvedTopicsStateImplCopyWith<_$ResolvedTopicsStateImpl> get copyWith =>
      __$$ResolvedTopicsStateImplCopyWithImpl<_$ResolvedTopicsStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<String> topics) resolved,
    required TResult Function() idle,
  }) {
    return resolved(topics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<String> topics)? resolved,
    TResult? Function()? idle,
  }) {
    return resolved?.call(topics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<String> topics)? resolved,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(topics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingTopicsState value) loading,
    required TResult Function(ResolvedTopicsState value) resolved,
    required TResult Function(IdleTopicsState value) idle,
  }) {
    return resolved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingTopicsState value)? loading,
    TResult? Function(ResolvedTopicsState value)? resolved,
    TResult? Function(IdleTopicsState value)? idle,
  }) {
    return resolved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingTopicsState value)? loading,
    TResult Function(ResolvedTopicsState value)? resolved,
    TResult Function(IdleTopicsState value)? idle,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(this);
    }
    return orElse();
  }
}

abstract class ResolvedTopicsState implements TopicsState {
  const factory ResolvedTopicsState({required final List<String> topics}) =
      _$ResolvedTopicsStateImpl;

  List<String> get topics;

  /// Create a copy of TopicsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResolvedTopicsStateImplCopyWith<_$ResolvedTopicsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdleTopicsStateImplCopyWith<$Res> {
  factory _$$IdleTopicsStateImplCopyWith(
    _$IdleTopicsStateImpl value,
    $Res Function(_$IdleTopicsStateImpl) then,
  ) = __$$IdleTopicsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleTopicsStateImplCopyWithImpl<$Res>
    extends _$TopicsStateCopyWithImpl<$Res, _$IdleTopicsStateImpl>
    implements _$$IdleTopicsStateImplCopyWith<$Res> {
  __$$IdleTopicsStateImplCopyWithImpl(
    _$IdleTopicsStateImpl _value,
    $Res Function(_$IdleTopicsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TopicsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleTopicsStateImpl implements IdleTopicsState {
  const _$IdleTopicsStateImpl();

  @override
  String toString() {
    return 'TopicsState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleTopicsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<String> topics) resolved,
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<String> topics)? resolved,
    TResult? Function()? idle,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<String> topics)? resolved,
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
    required TResult Function(LoadingTopicsState value) loading,
    required TResult Function(ResolvedTopicsState value) resolved,
    required TResult Function(IdleTopicsState value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingTopicsState value)? loading,
    TResult? Function(ResolvedTopicsState value)? resolved,
    TResult? Function(IdleTopicsState value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingTopicsState value)? loading,
    TResult Function(ResolvedTopicsState value)? resolved,
    TResult Function(IdleTopicsState value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleTopicsState implements TopicsState {
  const factory IdleTopicsState() = _$IdleTopicsStateImpl;
}

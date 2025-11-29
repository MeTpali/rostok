// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_articles_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MasterArticlesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Topic> articles) resolved,
    required TResult Function() idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Topic> articles)? resolved,
    TResult? Function()? idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Topic> articles)? resolved,
    TResult Function()? idle,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMasterArticlesState value) loading,
    required TResult Function(ResolvedMasterArticlesState value) resolved,
    required TResult Function(IdleMasterArticlesState value) idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMasterArticlesState value)? loading,
    TResult? Function(ResolvedMasterArticlesState value)? resolved,
    TResult? Function(IdleMasterArticlesState value)? idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMasterArticlesState value)? loading,
    TResult Function(ResolvedMasterArticlesState value)? resolved,
    TResult Function(IdleMasterArticlesState value)? idle,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterArticlesStateCopyWith<$Res> {
  factory $MasterArticlesStateCopyWith(
    MasterArticlesState value,
    $Res Function(MasterArticlesState) then,
  ) = _$MasterArticlesStateCopyWithImpl<$Res, MasterArticlesState>;
}

/// @nodoc
class _$MasterArticlesStateCopyWithImpl<$Res, $Val extends MasterArticlesState>
    implements $MasterArticlesStateCopyWith<$Res> {
  _$MasterArticlesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MasterArticlesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingMasterArticlesStateImplCopyWith<$Res> {
  factory _$$LoadingMasterArticlesStateImplCopyWith(
    _$LoadingMasterArticlesStateImpl value,
    $Res Function(_$LoadingMasterArticlesStateImpl) then,
  ) = __$$LoadingMasterArticlesStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMasterArticlesStateImplCopyWithImpl<$Res>
    extends
        _$MasterArticlesStateCopyWithImpl<
          $Res,
          _$LoadingMasterArticlesStateImpl
        >
    implements _$$LoadingMasterArticlesStateImplCopyWith<$Res> {
  __$$LoadingMasterArticlesStateImplCopyWithImpl(
    _$LoadingMasterArticlesStateImpl _value,
    $Res Function(_$LoadingMasterArticlesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MasterArticlesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingMasterArticlesStateImpl implements LoadingMasterArticlesState {
  const _$LoadingMasterArticlesStateImpl();

  @override
  String toString() {
    return 'MasterArticlesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingMasterArticlesStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Topic> articles) resolved,
    required TResult Function() idle,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Topic> articles)? resolved,
    TResult? Function()? idle,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Topic> articles)? resolved,
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
    required TResult Function(LoadingMasterArticlesState value) loading,
    required TResult Function(ResolvedMasterArticlesState value) resolved,
    required TResult Function(IdleMasterArticlesState value) idle,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMasterArticlesState value)? loading,
    TResult? Function(ResolvedMasterArticlesState value)? resolved,
    TResult? Function(IdleMasterArticlesState value)? idle,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMasterArticlesState value)? loading,
    TResult Function(ResolvedMasterArticlesState value)? resolved,
    TResult Function(IdleMasterArticlesState value)? idle,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingMasterArticlesState implements MasterArticlesState {
  const factory LoadingMasterArticlesState() = _$LoadingMasterArticlesStateImpl;
}

/// @nodoc
abstract class _$$ResolvedMasterArticlesStateImplCopyWith<$Res> {
  factory _$$ResolvedMasterArticlesStateImplCopyWith(
    _$ResolvedMasterArticlesStateImpl value,
    $Res Function(_$ResolvedMasterArticlesStateImpl) then,
  ) = __$$ResolvedMasterArticlesStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Topic> articles});
}

/// @nodoc
class __$$ResolvedMasterArticlesStateImplCopyWithImpl<$Res>
    extends
        _$MasterArticlesStateCopyWithImpl<
          $Res,
          _$ResolvedMasterArticlesStateImpl
        >
    implements _$$ResolvedMasterArticlesStateImplCopyWith<$Res> {
  __$$ResolvedMasterArticlesStateImplCopyWithImpl(
    _$ResolvedMasterArticlesStateImpl _value,
    $Res Function(_$ResolvedMasterArticlesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MasterArticlesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? articles = null}) {
    return _then(
      _$ResolvedMasterArticlesStateImpl(
        articles: null == articles
            ? _value._articles
            : articles // ignore: cast_nullable_to_non_nullable
                  as List<Topic>,
      ),
    );
  }
}

/// @nodoc

class _$ResolvedMasterArticlesStateImpl implements ResolvedMasterArticlesState {
  const _$ResolvedMasterArticlesStateImpl({
    final List<Topic> articles = const [],
  }) : _articles = articles;

  final List<Topic> _articles;
  @override
  @JsonKey()
  List<Topic> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'MasterArticlesState.resolved(articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResolvedMasterArticlesStateImpl &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  /// Create a copy of MasterArticlesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResolvedMasterArticlesStateImplCopyWith<_$ResolvedMasterArticlesStateImpl>
  get copyWith =>
      __$$ResolvedMasterArticlesStateImplCopyWithImpl<
        _$ResolvedMasterArticlesStateImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Topic> articles) resolved,
    required TResult Function() idle,
  }) {
    return resolved(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Topic> articles)? resolved,
    TResult? Function()? idle,
  }) {
    return resolved?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Topic> articles)? resolved,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMasterArticlesState value) loading,
    required TResult Function(ResolvedMasterArticlesState value) resolved,
    required TResult Function(IdleMasterArticlesState value) idle,
  }) {
    return resolved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMasterArticlesState value)? loading,
    TResult? Function(ResolvedMasterArticlesState value)? resolved,
    TResult? Function(IdleMasterArticlesState value)? idle,
  }) {
    return resolved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMasterArticlesState value)? loading,
    TResult Function(ResolvedMasterArticlesState value)? resolved,
    TResult Function(IdleMasterArticlesState value)? idle,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(this);
    }
    return orElse();
  }
}

abstract class ResolvedMasterArticlesState implements MasterArticlesState {
  const factory ResolvedMasterArticlesState({final List<Topic> articles}) =
      _$ResolvedMasterArticlesStateImpl;

  List<Topic> get articles;

  /// Create a copy of MasterArticlesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResolvedMasterArticlesStateImplCopyWith<_$ResolvedMasterArticlesStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdleMasterArticlesStateImplCopyWith<$Res> {
  factory _$$IdleMasterArticlesStateImplCopyWith(
    _$IdleMasterArticlesStateImpl value,
    $Res Function(_$IdleMasterArticlesStateImpl) then,
  ) = __$$IdleMasterArticlesStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleMasterArticlesStateImplCopyWithImpl<$Res>
    extends
        _$MasterArticlesStateCopyWithImpl<$Res, _$IdleMasterArticlesStateImpl>
    implements _$$IdleMasterArticlesStateImplCopyWith<$Res> {
  __$$IdleMasterArticlesStateImplCopyWithImpl(
    _$IdleMasterArticlesStateImpl _value,
    $Res Function(_$IdleMasterArticlesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MasterArticlesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleMasterArticlesStateImpl implements IdleMasterArticlesState {
  const _$IdleMasterArticlesStateImpl();

  @override
  String toString() {
    return 'MasterArticlesState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleMasterArticlesStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Topic> articles) resolved,
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Topic> articles)? resolved,
    TResult? Function()? idle,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Topic> articles)? resolved,
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
    required TResult Function(LoadingMasterArticlesState value) loading,
    required TResult Function(ResolvedMasterArticlesState value) resolved,
    required TResult Function(IdleMasterArticlesState value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMasterArticlesState value)? loading,
    TResult? Function(ResolvedMasterArticlesState value)? resolved,
    TResult? Function(IdleMasterArticlesState value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMasterArticlesState value)? loading,
    TResult Function(ResolvedMasterArticlesState value)? resolved,
    TResult Function(IdleMasterArticlesState value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleMasterArticlesState implements MasterArticlesState {
  const factory IdleMasterArticlesState() = _$IdleMasterArticlesStateImpl;
}

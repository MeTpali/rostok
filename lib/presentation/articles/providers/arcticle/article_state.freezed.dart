// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ArcticleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
      int id,
      String title,
      String content,
      String publisherName,
      DateTime publishDate,
      int commentsCount,
    )
    resolved,
    required TResult Function() idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
      int id,
      String title,
      String content,
      String publisherName,
      DateTime publishDate,
      int commentsCount,
    )?
    resolved,
    TResult? Function()? idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
      int id,
      String title,
      String content,
      String publisherName,
      DateTime publishDate,
      int commentsCount,
    )?
    resolved,
    TResult Function()? idle,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingArcticleState value) loading,
    required TResult Function(ResolvedArcticleState value) resolved,
    required TResult Function(IdleArcticleState value) idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingArcticleState value)? loading,
    TResult? Function(ResolvedArcticleState value)? resolved,
    TResult? Function(IdleArcticleState value)? idle,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingArcticleState value)? loading,
    TResult Function(ResolvedArcticleState value)? resolved,
    TResult Function(IdleArcticleState value)? idle,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArcticleStateCopyWith<$Res> {
  factory $ArcticleStateCopyWith(
    ArcticleState value,
    $Res Function(ArcticleState) then,
  ) = _$ArcticleStateCopyWithImpl<$Res, ArcticleState>;
}

/// @nodoc
class _$ArcticleStateCopyWithImpl<$Res, $Val extends ArcticleState>
    implements $ArcticleStateCopyWith<$Res> {
  _$ArcticleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArcticleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingArcticleStateImplCopyWith<$Res> {
  factory _$$LoadingArcticleStateImplCopyWith(
    _$LoadingArcticleStateImpl value,
    $Res Function(_$LoadingArcticleStateImpl) then,
  ) = __$$LoadingArcticleStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingArcticleStateImplCopyWithImpl<$Res>
    extends _$ArcticleStateCopyWithImpl<$Res, _$LoadingArcticleStateImpl>
    implements _$$LoadingArcticleStateImplCopyWith<$Res> {
  __$$LoadingArcticleStateImplCopyWithImpl(
    _$LoadingArcticleStateImpl _value,
    $Res Function(_$LoadingArcticleStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArcticleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingArcticleStateImpl implements LoadingArcticleState {
  const _$LoadingArcticleStateImpl();

  @override
  String toString() {
    return 'ArcticleState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingArcticleStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
      int id,
      String title,
      String content,
      String publisherName,
      DateTime publishDate,
      int commentsCount,
    )
    resolved,
    required TResult Function() idle,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
      int id,
      String title,
      String content,
      String publisherName,
      DateTime publishDate,
      int commentsCount,
    )?
    resolved,
    TResult? Function()? idle,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
      int id,
      String title,
      String content,
      String publisherName,
      DateTime publishDate,
      int commentsCount,
    )?
    resolved,
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
    required TResult Function(LoadingArcticleState value) loading,
    required TResult Function(ResolvedArcticleState value) resolved,
    required TResult Function(IdleArcticleState value) idle,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingArcticleState value)? loading,
    TResult? Function(ResolvedArcticleState value)? resolved,
    TResult? Function(IdleArcticleState value)? idle,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingArcticleState value)? loading,
    TResult Function(ResolvedArcticleState value)? resolved,
    TResult Function(IdleArcticleState value)? idle,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingArcticleState implements ArcticleState {
  const factory LoadingArcticleState() = _$LoadingArcticleStateImpl;
}

/// @nodoc
abstract class _$$ResolvedArcticleStateImplCopyWith<$Res> {
  factory _$$ResolvedArcticleStateImplCopyWith(
    _$ResolvedArcticleStateImpl value,
    $Res Function(_$ResolvedArcticleStateImpl) then,
  ) = __$$ResolvedArcticleStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    int id,
    String title,
    String content,
    String publisherName,
    DateTime publishDate,
    int commentsCount,
  });
}

/// @nodoc
class __$$ResolvedArcticleStateImplCopyWithImpl<$Res>
    extends _$ArcticleStateCopyWithImpl<$Res, _$ResolvedArcticleStateImpl>
    implements _$$ResolvedArcticleStateImplCopyWith<$Res> {
  __$$ResolvedArcticleStateImplCopyWithImpl(
    _$ResolvedArcticleStateImpl _value,
    $Res Function(_$ResolvedArcticleStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArcticleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? publisherName = null,
    Object? publishDate = null,
    Object? commentsCount = null,
  }) {
    return _then(
      _$ResolvedArcticleStateImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        publisherName: null == publisherName
            ? _value.publisherName
            : publisherName // ignore: cast_nullable_to_non_nullable
                  as String,
        publishDate: null == publishDate
            ? _value.publishDate
            : publishDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        commentsCount: null == commentsCount
            ? _value.commentsCount
            : commentsCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$ResolvedArcticleStateImpl implements ResolvedArcticleState {
  const _$ResolvedArcticleStateImpl({
    required this.id,
    required this.title,
    required this.content,
    required this.publisherName,
    required this.publishDate,
    required this.commentsCount,
  });

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  final String publisherName;
  @override
  final DateTime publishDate;
  @override
  final int commentsCount;

  @override
  String toString() {
    return 'ArcticleState.resolved(id: $id, title: $title, content: $content, publisherName: $publisherName, publishDate: $publishDate, commentsCount: $commentsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResolvedArcticleStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.publisherName, publisherName) ||
                other.publisherName == publisherName) &&
            (identical(other.publishDate, publishDate) ||
                other.publishDate == publishDate) &&
            (identical(other.commentsCount, commentsCount) ||
                other.commentsCount == commentsCount));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    content,
    publisherName,
    publishDate,
    commentsCount,
  );

  /// Create a copy of ArcticleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResolvedArcticleStateImplCopyWith<_$ResolvedArcticleStateImpl>
  get copyWith =>
      __$$ResolvedArcticleStateImplCopyWithImpl<_$ResolvedArcticleStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
      int id,
      String title,
      String content,
      String publisherName,
      DateTime publishDate,
      int commentsCount,
    )
    resolved,
    required TResult Function() idle,
  }) {
    return resolved(
      id,
      title,
      content,
      publisherName,
      publishDate,
      commentsCount,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
      int id,
      String title,
      String content,
      String publisherName,
      DateTime publishDate,
      int commentsCount,
    )?
    resolved,
    TResult? Function()? idle,
  }) {
    return resolved?.call(
      id,
      title,
      content,
      publisherName,
      publishDate,
      commentsCount,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
      int id,
      String title,
      String content,
      String publisherName,
      DateTime publishDate,
      int commentsCount,
    )?
    resolved,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(
        id,
        title,
        content,
        publisherName,
        publishDate,
        commentsCount,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingArcticleState value) loading,
    required TResult Function(ResolvedArcticleState value) resolved,
    required TResult Function(IdleArcticleState value) idle,
  }) {
    return resolved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingArcticleState value)? loading,
    TResult? Function(ResolvedArcticleState value)? resolved,
    TResult? Function(IdleArcticleState value)? idle,
  }) {
    return resolved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingArcticleState value)? loading,
    TResult Function(ResolvedArcticleState value)? resolved,
    TResult Function(IdleArcticleState value)? idle,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(this);
    }
    return orElse();
  }
}

abstract class ResolvedArcticleState implements ArcticleState {
  const factory ResolvedArcticleState({
    required final int id,
    required final String title,
    required final String content,
    required final String publisherName,
    required final DateTime publishDate,
    required final int commentsCount,
  }) = _$ResolvedArcticleStateImpl;

  int get id;
  String get title;
  String get content;
  String get publisherName;
  DateTime get publishDate;
  int get commentsCount;

  /// Create a copy of ArcticleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResolvedArcticleStateImplCopyWith<_$ResolvedArcticleStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdleArcticleStateImplCopyWith<$Res> {
  factory _$$IdleArcticleStateImplCopyWith(
    _$IdleArcticleStateImpl value,
    $Res Function(_$IdleArcticleStateImpl) then,
  ) = __$$IdleArcticleStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleArcticleStateImplCopyWithImpl<$Res>
    extends _$ArcticleStateCopyWithImpl<$Res, _$IdleArcticleStateImpl>
    implements _$$IdleArcticleStateImplCopyWith<$Res> {
  __$$IdleArcticleStateImplCopyWithImpl(
    _$IdleArcticleStateImpl _value,
    $Res Function(_$IdleArcticleStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ArcticleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleArcticleStateImpl implements IdleArcticleState {
  const _$IdleArcticleStateImpl();

  @override
  String toString() {
    return 'ArcticleState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleArcticleStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
      int id,
      String title,
      String content,
      String publisherName,
      DateTime publishDate,
      int commentsCount,
    )
    resolved,
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
      int id,
      String title,
      String content,
      String publisherName,
      DateTime publishDate,
      int commentsCount,
    )?
    resolved,
    TResult? Function()? idle,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
      int id,
      String title,
      String content,
      String publisherName,
      DateTime publishDate,
      int commentsCount,
    )?
    resolved,
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
    required TResult Function(LoadingArcticleState value) loading,
    required TResult Function(ResolvedArcticleState value) resolved,
    required TResult Function(IdleArcticleState value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingArcticleState value)? loading,
    TResult? Function(ResolvedArcticleState value)? resolved,
    TResult? Function(IdleArcticleState value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingArcticleState value)? loading,
    TResult Function(ResolvedArcticleState value)? resolved,
    TResult Function(IdleArcticleState value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleArcticleState implements ArcticleState {
  const factory IdleArcticleState() = _$IdleArcticleStateImpl;
}

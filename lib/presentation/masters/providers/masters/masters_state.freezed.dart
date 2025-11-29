// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'masters_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MastersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
      int page,
      List<Master> masters,
      String? topic,
      String? practice,
      SortType sortType,
    )
    resolved,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
      int page,
      List<Master> masters,
      String? topic,
      String? practice,
      SortType sortType,
    )?
    resolved,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
      int page,
      List<Master> masters,
      String? topic,
      String? practice,
      SortType sortType,
    )?
    resolved,
    TResult Function()? idle,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMastersState value) loading,
    required TResult Function(ResolvedMastersState value) resolved,
    required TResult Function(IdleMastersState value) idle,
    required TResult Function(ErrorMastersState value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMastersState value)? loading,
    TResult? Function(ResolvedMastersState value)? resolved,
    TResult? Function(IdleMastersState value)? idle,
    TResult? Function(ErrorMastersState value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMastersState value)? loading,
    TResult Function(ResolvedMastersState value)? resolved,
    TResult Function(IdleMastersState value)? idle,
    TResult Function(ErrorMastersState value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MastersStateCopyWith<$Res> {
  factory $MastersStateCopyWith(
    MastersState value,
    $Res Function(MastersState) then,
  ) = _$MastersStateCopyWithImpl<$Res, MastersState>;
}

/// @nodoc
class _$MastersStateCopyWithImpl<$Res, $Val extends MastersState>
    implements $MastersStateCopyWith<$Res> {
  _$MastersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MastersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingMastersStateImplCopyWith<$Res> {
  factory _$$LoadingMastersStateImplCopyWith(
    _$LoadingMastersStateImpl value,
    $Res Function(_$LoadingMastersStateImpl) then,
  ) = __$$LoadingMastersStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMastersStateImplCopyWithImpl<$Res>
    extends _$MastersStateCopyWithImpl<$Res, _$LoadingMastersStateImpl>
    implements _$$LoadingMastersStateImplCopyWith<$Res> {
  __$$LoadingMastersStateImplCopyWithImpl(
    _$LoadingMastersStateImpl _value,
    $Res Function(_$LoadingMastersStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MastersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingMastersStateImpl implements LoadingMastersState {
  const _$LoadingMastersStateImpl();

  @override
  String toString() {
    return 'MastersState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingMastersStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
      int page,
      List<Master> masters,
      String? topic,
      String? practice,
      SortType sortType,
    )
    resolved,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
      int page,
      List<Master> masters,
      String? topic,
      String? practice,
      SortType sortType,
    )?
    resolved,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
      int page,
      List<Master> masters,
      String? topic,
      String? practice,
      SortType sortType,
    )?
    resolved,
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
    required TResult Function(LoadingMastersState value) loading,
    required TResult Function(ResolvedMastersState value) resolved,
    required TResult Function(IdleMastersState value) idle,
    required TResult Function(ErrorMastersState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMastersState value)? loading,
    TResult? Function(ResolvedMastersState value)? resolved,
    TResult? Function(IdleMastersState value)? idle,
    TResult? Function(ErrorMastersState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMastersState value)? loading,
    TResult Function(ResolvedMastersState value)? resolved,
    TResult Function(IdleMastersState value)? idle,
    TResult Function(ErrorMastersState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingMastersState implements MastersState {
  const factory LoadingMastersState() = _$LoadingMastersStateImpl;
}

/// @nodoc
abstract class _$$ResolvedMastersStateImplCopyWith<$Res> {
  factory _$$ResolvedMastersStateImplCopyWith(
    _$ResolvedMastersStateImpl value,
    $Res Function(_$ResolvedMastersStateImpl) then,
  ) = __$$ResolvedMastersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    int page,
    List<Master> masters,
    String? topic,
    String? practice,
    SortType sortType,
  });
}

/// @nodoc
class __$$ResolvedMastersStateImplCopyWithImpl<$Res>
    extends _$MastersStateCopyWithImpl<$Res, _$ResolvedMastersStateImpl>
    implements _$$ResolvedMastersStateImplCopyWith<$Res> {
  __$$ResolvedMastersStateImplCopyWithImpl(
    _$ResolvedMastersStateImpl _value,
    $Res Function(_$ResolvedMastersStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MastersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? masters = null,
    Object? topic = freezed,
    Object? practice = freezed,
    Object? sortType = null,
  }) {
    return _then(
      _$ResolvedMastersStateImpl(
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        masters: null == masters
            ? _value._masters
            : masters // ignore: cast_nullable_to_non_nullable
                  as List<Master>,
        topic: freezed == topic
            ? _value.topic
            : topic // ignore: cast_nullable_to_non_nullable
                  as String?,
        practice: freezed == practice
            ? _value.practice
            : practice // ignore: cast_nullable_to_non_nullable
                  as String?,
        sortType: null == sortType
            ? _value.sortType
            : sortType // ignore: cast_nullable_to_non_nullable
                  as SortType,
      ),
    );
  }
}

/// @nodoc

class _$ResolvedMastersStateImpl implements ResolvedMastersState {
  const _$ResolvedMastersStateImpl({
    required this.page,
    required final List<Master> masters,
    this.topic,
    this.practice,
    this.sortType = SortType.online,
  }) : _masters = masters;

  @override
  final int page;
  final List<Master> _masters;
  @override
  List<Master> get masters {
    if (_masters is EqualUnmodifiableListView) return _masters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_masters);
  }

  @override
  final String? topic;
  @override
  final String? practice;
  @override
  @JsonKey()
  final SortType sortType;

  @override
  String toString() {
    return 'MastersState.resolved(page: $page, masters: $masters, topic: $topic, practice: $practice, sortType: $sortType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResolvedMastersStateImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._masters, _masters) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.practice, practice) ||
                other.practice == practice) &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    page,
    const DeepCollectionEquality().hash(_masters),
    topic,
    practice,
    sortType,
  );

  /// Create a copy of MastersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResolvedMastersStateImplCopyWith<_$ResolvedMastersStateImpl>
  get copyWith =>
      __$$ResolvedMastersStateImplCopyWithImpl<_$ResolvedMastersStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
      int page,
      List<Master> masters,
      String? topic,
      String? practice,
      SortType sortType,
    )
    resolved,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return resolved(page, masters, topic, practice, sortType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
      int page,
      List<Master> masters,
      String? topic,
      String? practice,
      SortType sortType,
    )?
    resolved,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return resolved?.call(page, masters, topic, practice, sortType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
      int page,
      List<Master> masters,
      String? topic,
      String? practice,
      SortType sortType,
    )?
    resolved,
    TResult Function()? idle,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(page, masters, topic, practice, sortType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingMastersState value) loading,
    required TResult Function(ResolvedMastersState value) resolved,
    required TResult Function(IdleMastersState value) idle,
    required TResult Function(ErrorMastersState value) error,
  }) {
    return resolved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMastersState value)? loading,
    TResult? Function(ResolvedMastersState value)? resolved,
    TResult? Function(IdleMastersState value)? idle,
    TResult? Function(ErrorMastersState value)? error,
  }) {
    return resolved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMastersState value)? loading,
    TResult Function(ResolvedMastersState value)? resolved,
    TResult Function(IdleMastersState value)? idle,
    TResult Function(ErrorMastersState value)? error,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(this);
    }
    return orElse();
  }
}

abstract class ResolvedMastersState implements MastersState {
  const factory ResolvedMastersState({
    required final int page,
    required final List<Master> masters,
    final String? topic,
    final String? practice,
    final SortType sortType,
  }) = _$ResolvedMastersStateImpl;

  int get page;
  List<Master> get masters;
  String? get topic;
  String? get practice;
  SortType get sortType;

  /// Create a copy of MastersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResolvedMastersStateImplCopyWith<_$ResolvedMastersStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdleMastersStateImplCopyWith<$Res> {
  factory _$$IdleMastersStateImplCopyWith(
    _$IdleMastersStateImpl value,
    $Res Function(_$IdleMastersStateImpl) then,
  ) = __$$IdleMastersStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleMastersStateImplCopyWithImpl<$Res>
    extends _$MastersStateCopyWithImpl<$Res, _$IdleMastersStateImpl>
    implements _$$IdleMastersStateImplCopyWith<$Res> {
  __$$IdleMastersStateImplCopyWithImpl(
    _$IdleMastersStateImpl _value,
    $Res Function(_$IdleMastersStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MastersState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleMastersStateImpl implements IdleMastersState {
  const _$IdleMastersStateImpl();

  @override
  String toString() {
    return 'MastersState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleMastersStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
      int page,
      List<Master> masters,
      String? topic,
      String? practice,
      SortType sortType,
    )
    resolved,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
      int page,
      List<Master> masters,
      String? topic,
      String? practice,
      SortType sortType,
    )?
    resolved,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
      int page,
      List<Master> masters,
      String? topic,
      String? practice,
      SortType sortType,
    )?
    resolved,
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
    required TResult Function(LoadingMastersState value) loading,
    required TResult Function(ResolvedMastersState value) resolved,
    required TResult Function(IdleMastersState value) idle,
    required TResult Function(ErrorMastersState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMastersState value)? loading,
    TResult? Function(ResolvedMastersState value)? resolved,
    TResult? Function(IdleMastersState value)? idle,
    TResult? Function(ErrorMastersState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMastersState value)? loading,
    TResult Function(ResolvedMastersState value)? resolved,
    TResult Function(IdleMastersState value)? idle,
    TResult Function(ErrorMastersState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleMastersState implements MastersState {
  const factory IdleMastersState() = _$IdleMastersStateImpl;
}

/// @nodoc
abstract class _$$ErrorMastersStateImplCopyWith<$Res> {
  factory _$$ErrorMastersStateImplCopyWith(
    _$ErrorMastersStateImpl value,
    $Res Function(_$ErrorMastersStateImpl) then,
  ) = __$$ErrorMastersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorMastersStateImplCopyWithImpl<$Res>
    extends _$MastersStateCopyWithImpl<$Res, _$ErrorMastersStateImpl>
    implements _$$ErrorMastersStateImplCopyWith<$Res> {
  __$$ErrorMastersStateImplCopyWithImpl(
    _$ErrorMastersStateImpl _value,
    $Res Function(_$ErrorMastersStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MastersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorMastersStateImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorMastersStateImpl implements ErrorMastersState {
  const _$ErrorMastersStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MastersState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMastersStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MastersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMastersStateImplCopyWith<_$ErrorMastersStateImpl> get copyWith =>
      __$$ErrorMastersStateImplCopyWithImpl<_$ErrorMastersStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
      int page,
      List<Master> masters,
      String? topic,
      String? practice,
      SortType sortType,
    )
    resolved,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
      int page,
      List<Master> masters,
      String? topic,
      String? practice,
      SortType sortType,
    )?
    resolved,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
      int page,
      List<Master> masters,
      String? topic,
      String? practice,
      SortType sortType,
    )?
    resolved,
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
    required TResult Function(LoadingMastersState value) loading,
    required TResult Function(ResolvedMastersState value) resolved,
    required TResult Function(IdleMastersState value) idle,
    required TResult Function(ErrorMastersState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingMastersState value)? loading,
    TResult? Function(ResolvedMastersState value)? resolved,
    TResult? Function(IdleMastersState value)? idle,
    TResult? Function(ErrorMastersState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingMastersState value)? loading,
    TResult Function(ResolvedMastersState value)? resolved,
    TResult Function(IdleMastersState value)? idle,
    TResult Function(ErrorMastersState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorMastersState implements MastersState {
  const factory ErrorMastersState(final String message) =
      _$ErrorMastersStateImpl;

  String get message;

  /// Create a copy of MastersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorMastersStateImplCopyWith<_$ErrorMastersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

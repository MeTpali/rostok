// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DayCardState {
  bool get isLoading => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) idle,
    required TResult Function(String title, String description, bool isLoading)
    card,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function(String title, String description, bool isLoading)? card,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function(String title, String description, bool isLoading)? card,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleDayCardState value) idle,
    required TResult Function(CardDayCardState value) card,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleDayCardState value)? idle,
    TResult? Function(CardDayCardState value)? card,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleDayCardState value)? idle,
    TResult Function(CardDayCardState value)? card,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of DayCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DayCardStateCopyWith<DayCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayCardStateCopyWith<$Res> {
  factory $DayCardStateCopyWith(
    DayCardState value,
    $Res Function(DayCardState) then,
  ) = _$DayCardStateCopyWithImpl<$Res, DayCardState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$DayCardStateCopyWithImpl<$Res, $Val extends DayCardState>
    implements $DayCardStateCopyWith<$Res> {
  _$DayCardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DayCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isLoading = null}) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IdleDayCardStateImplCopyWith<$Res>
    implements $DayCardStateCopyWith<$Res> {
  factory _$$IdleDayCardStateImplCopyWith(
    _$IdleDayCardStateImpl value,
    $Res Function(_$IdleDayCardStateImpl) then,
  ) = __$$IdleDayCardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$IdleDayCardStateImplCopyWithImpl<$Res>
    extends _$DayCardStateCopyWithImpl<$Res, _$IdleDayCardStateImpl>
    implements _$$IdleDayCardStateImplCopyWith<$Res> {
  __$$IdleDayCardStateImplCopyWithImpl(
    _$IdleDayCardStateImpl _value,
    $Res Function(_$IdleDayCardStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DayCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isLoading = null}) {
    return _then(
      _$IdleDayCardStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$IdleDayCardStateImpl implements IdleDayCardState {
  const _$IdleDayCardStateImpl({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'DayCardState.idle(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleDayCardStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  /// Create a copy of DayCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleDayCardStateImplCopyWith<_$IdleDayCardStateImpl> get copyWith =>
      __$$IdleDayCardStateImplCopyWithImpl<_$IdleDayCardStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) idle,
    required TResult Function(String title, String description, bool isLoading)
    card,
  }) {
    return idle(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function(String title, String description, bool isLoading)? card,
  }) {
    return idle?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function(String title, String description, bool isLoading)? card,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleDayCardState value) idle,
    required TResult Function(CardDayCardState value) card,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleDayCardState value)? idle,
    TResult? Function(CardDayCardState value)? card,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleDayCardState value)? idle,
    TResult Function(CardDayCardState value)? card,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleDayCardState implements DayCardState {
  const factory IdleDayCardState({final bool isLoading}) =
      _$IdleDayCardStateImpl;

  @override
  bool get isLoading;

  /// Create a copy of DayCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdleDayCardStateImplCopyWith<_$IdleDayCardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CardDayCardStateImplCopyWith<$Res>
    implements $DayCardStateCopyWith<$Res> {
  factory _$$CardDayCardStateImplCopyWith(
    _$CardDayCardStateImpl value,
    $Res Function(_$CardDayCardStateImpl) then,
  ) = __$$CardDayCardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, bool isLoading});
}

/// @nodoc
class __$$CardDayCardStateImplCopyWithImpl<$Res>
    extends _$DayCardStateCopyWithImpl<$Res, _$CardDayCardStateImpl>
    implements _$$CardDayCardStateImplCopyWith<$Res> {
  __$$CardDayCardStateImplCopyWithImpl(
    _$CardDayCardStateImpl _value,
    $Res Function(_$CardDayCardStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DayCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? isLoading = null,
  }) {
    return _then(
      _$CardDayCardStateImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$CardDayCardStateImpl implements CardDayCardState {
  const _$CardDayCardStateImpl({
    required this.title,
    required this.description,
    this.isLoading = false,
  });

  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'DayCardState.card(title: $title, description: $description, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardDayCardStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, isLoading);

  /// Create a copy of DayCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardDayCardStateImplCopyWith<_$CardDayCardStateImpl> get copyWith =>
      __$$CardDayCardStateImplCopyWithImpl<_$CardDayCardStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) idle,
    required TResult Function(String title, String description, bool isLoading)
    card,
  }) {
    return card(title, description, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function(String title, String description, bool isLoading)? card,
  }) {
    return card?.call(title, description, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function(String title, String description, bool isLoading)? card,
    required TResult orElse(),
  }) {
    if (card != null) {
      return card(title, description, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleDayCardState value) idle,
    required TResult Function(CardDayCardState value) card,
  }) {
    return card(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleDayCardState value)? idle,
    TResult? Function(CardDayCardState value)? card,
  }) {
    return card?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleDayCardState value)? idle,
    TResult Function(CardDayCardState value)? card,
    required TResult orElse(),
  }) {
    if (card != null) {
      return card(this);
    }
    return orElse();
  }
}

abstract class CardDayCardState implements DayCardState {
  const factory CardDayCardState({
    required final String title,
    required final String description,
    final bool isLoading,
  }) = _$CardDayCardStateImpl;

  String get title;
  String get description;
  @override
  bool get isLoading;

  /// Create a copy of DayCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardDayCardStateImplCopyWith<_$CardDayCardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NotesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<Booking> bookings) resolved,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<Booking> bookings)? resolved,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<Booking> bookings)? resolved,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleNotesState value) idle,
    required TResult Function(LoadingNotesState value) loading,
    required TResult Function(ResolvedNotesState value) resolved,
    required TResult Function(ErrorNotesState value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleNotesState value)? idle,
    TResult? Function(LoadingNotesState value)? loading,
    TResult? Function(ResolvedNotesState value)? resolved,
    TResult? Function(ErrorNotesState value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleNotesState value)? idle,
    TResult Function(LoadingNotesState value)? loading,
    TResult Function(ResolvedNotesState value)? resolved,
    TResult Function(ErrorNotesState value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesStateCopyWith<$Res> {
  factory $NotesStateCopyWith(
    NotesState value,
    $Res Function(NotesState) then,
  ) = _$NotesStateCopyWithImpl<$Res, NotesState>;
}

/// @nodoc
class _$NotesStateCopyWithImpl<$Res, $Val extends NotesState>
    implements $NotesStateCopyWith<$Res> {
  _$NotesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IdleNotesStateImplCopyWith<$Res> {
  factory _$$IdleNotesStateImplCopyWith(
    _$IdleNotesStateImpl value,
    $Res Function(_$IdleNotesStateImpl) then,
  ) = __$$IdleNotesStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleNotesStateImplCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res, _$IdleNotesStateImpl>
    implements _$$IdleNotesStateImplCopyWith<$Res> {
  __$$IdleNotesStateImplCopyWithImpl(
    _$IdleNotesStateImpl _value,
    $Res Function(_$IdleNotesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleNotesStateImpl implements IdleNotesState {
  const _$IdleNotesStateImpl();

  @override
  String toString() {
    return 'NotesState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleNotesStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<Booking> bookings) resolved,
    required TResult Function(String message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<Booking> bookings)? resolved,
    TResult? Function(String message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<Booking> bookings)? resolved,
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
    required TResult Function(IdleNotesState value) idle,
    required TResult Function(LoadingNotesState value) loading,
    required TResult Function(ResolvedNotesState value) resolved,
    required TResult Function(ErrorNotesState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleNotesState value)? idle,
    TResult? Function(LoadingNotesState value)? loading,
    TResult? Function(ResolvedNotesState value)? resolved,
    TResult? Function(ErrorNotesState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleNotesState value)? idle,
    TResult Function(LoadingNotesState value)? loading,
    TResult Function(ResolvedNotesState value)? resolved,
    TResult Function(ErrorNotesState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleNotesState implements NotesState {
  const factory IdleNotesState() = _$IdleNotesStateImpl;
}

/// @nodoc
abstract class _$$LoadingNotesStateImplCopyWith<$Res> {
  factory _$$LoadingNotesStateImplCopyWith(
    _$LoadingNotesStateImpl value,
    $Res Function(_$LoadingNotesStateImpl) then,
  ) = __$$LoadingNotesStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingNotesStateImplCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res, _$LoadingNotesStateImpl>
    implements _$$LoadingNotesStateImplCopyWith<$Res> {
  __$$LoadingNotesStateImplCopyWithImpl(
    _$LoadingNotesStateImpl _value,
    $Res Function(_$LoadingNotesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingNotesStateImpl implements LoadingNotesState {
  const _$LoadingNotesStateImpl();

  @override
  String toString() {
    return 'NotesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingNotesStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<Booking> bookings) resolved,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<Booking> bookings)? resolved,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<Booking> bookings)? resolved,
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
    required TResult Function(IdleNotesState value) idle,
    required TResult Function(LoadingNotesState value) loading,
    required TResult Function(ResolvedNotesState value) resolved,
    required TResult Function(ErrorNotesState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleNotesState value)? idle,
    TResult? Function(LoadingNotesState value)? loading,
    TResult? Function(ResolvedNotesState value)? resolved,
    TResult? Function(ErrorNotesState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleNotesState value)? idle,
    TResult Function(LoadingNotesState value)? loading,
    TResult Function(ResolvedNotesState value)? resolved,
    TResult Function(ErrorNotesState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingNotesState implements NotesState {
  const factory LoadingNotesState() = _$LoadingNotesStateImpl;
}

/// @nodoc
abstract class _$$ResolvedNotesStateImplCopyWith<$Res> {
  factory _$$ResolvedNotesStateImplCopyWith(
    _$ResolvedNotesStateImpl value,
    $Res Function(_$ResolvedNotesStateImpl) then,
  ) = __$$ResolvedNotesStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Booking> bookings});
}

/// @nodoc
class __$$ResolvedNotesStateImplCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res, _$ResolvedNotesStateImpl>
    implements _$$ResolvedNotesStateImplCopyWith<$Res> {
  __$$ResolvedNotesStateImplCopyWithImpl(
    _$ResolvedNotesStateImpl _value,
    $Res Function(_$ResolvedNotesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? bookings = null}) {
    return _then(
      _$ResolvedNotesStateImpl(
        bookings: null == bookings
            ? _value._bookings
            : bookings // ignore: cast_nullable_to_non_nullable
                  as List<Booking>,
      ),
    );
  }
}

/// @nodoc

class _$ResolvedNotesStateImpl implements ResolvedNotesState {
  const _$ResolvedNotesStateImpl({required final List<Booking> bookings})
    : _bookings = bookings;

  final List<Booking> _bookings;
  @override
  List<Booking> get bookings {
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookings);
  }

  @override
  String toString() {
    return 'NotesState.resolved(bookings: $bookings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResolvedNotesStateImpl &&
            const DeepCollectionEquality().equals(other._bookings, _bookings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bookings));

  /// Create a copy of NotesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResolvedNotesStateImplCopyWith<_$ResolvedNotesStateImpl> get copyWith =>
      __$$ResolvedNotesStateImplCopyWithImpl<_$ResolvedNotesStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<Booking> bookings) resolved,
    required TResult Function(String message) error,
  }) {
    return resolved(bookings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<Booking> bookings)? resolved,
    TResult? Function(String message)? error,
  }) {
    return resolved?.call(bookings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<Booking> bookings)? resolved,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(bookings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleNotesState value) idle,
    required TResult Function(LoadingNotesState value) loading,
    required TResult Function(ResolvedNotesState value) resolved,
    required TResult Function(ErrorNotesState value) error,
  }) {
    return resolved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleNotesState value)? idle,
    TResult? Function(LoadingNotesState value)? loading,
    TResult? Function(ResolvedNotesState value)? resolved,
    TResult? Function(ErrorNotesState value)? error,
  }) {
    return resolved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleNotesState value)? idle,
    TResult Function(LoadingNotesState value)? loading,
    TResult Function(ResolvedNotesState value)? resolved,
    TResult Function(ErrorNotesState value)? error,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(this);
    }
    return orElse();
  }
}

abstract class ResolvedNotesState implements NotesState {
  const factory ResolvedNotesState({required final List<Booking> bookings}) =
      _$ResolvedNotesStateImpl;

  List<Booking> get bookings;

  /// Create a copy of NotesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResolvedNotesStateImplCopyWith<_$ResolvedNotesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorNotesStateImplCopyWith<$Res> {
  factory _$$ErrorNotesStateImplCopyWith(
    _$ErrorNotesStateImpl value,
    $Res Function(_$ErrorNotesStateImpl) then,
  ) = __$$ErrorNotesStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorNotesStateImplCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res, _$ErrorNotesStateImpl>
    implements _$$ErrorNotesStateImplCopyWith<$Res> {
  __$$ErrorNotesStateImplCopyWithImpl(
    _$ErrorNotesStateImpl _value,
    $Res Function(_$ErrorNotesStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorNotesStateImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorNotesStateImpl implements ErrorNotesState {
  const _$ErrorNotesStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NotesState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorNotesStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of NotesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorNotesStateImplCopyWith<_$ErrorNotesStateImpl> get copyWith =>
      __$$ErrorNotesStateImplCopyWithImpl<_$ErrorNotesStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<Booking> bookings) resolved,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<Booking> bookings)? resolved,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<Booking> bookings)? resolved,
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
    required TResult Function(IdleNotesState value) idle,
    required TResult Function(LoadingNotesState value) loading,
    required TResult Function(ResolvedNotesState value) resolved,
    required TResult Function(ErrorNotesState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleNotesState value)? idle,
    TResult? Function(LoadingNotesState value)? loading,
    TResult? Function(ResolvedNotesState value)? resolved,
    TResult? Function(ErrorNotesState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleNotesState value)? idle,
    TResult Function(LoadingNotesState value)? loading,
    TResult Function(ResolvedNotesState value)? resolved,
    TResult Function(ErrorNotesState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorNotesState implements NotesState {
  const factory ErrorNotesState(final String message) = _$ErrorNotesStateImpl;

  String get message;

  /// Create a copy of NotesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorNotesStateImplCopyWith<_$ErrorNotesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BookingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
      MasterProfile master,
      String? selectedTopic,
      DateTime? selectedDateTime,
      List<DateTime> availableTimeSlots,
    )
    resolved,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
      MasterProfile master,
      String? selectedTopic,
      DateTime? selectedDateTime,
      List<DateTime> availableTimeSlots,
    )?
    resolved,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
      MasterProfile master,
      String? selectedTopic,
      DateTime? selectedDateTime,
      List<DateTime> availableTimeSlots,
    )?
    resolved,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleBookingState value) idle,
    required TResult Function(LoadingBookingState value) loading,
    required TResult Function(ResolvedBookingState value) resolved,
    required TResult Function(ErrorBookingState value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleBookingState value)? idle,
    TResult? Function(LoadingBookingState value)? loading,
    TResult? Function(ResolvedBookingState value)? resolved,
    TResult? Function(ErrorBookingState value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleBookingState value)? idle,
    TResult Function(LoadingBookingState value)? loading,
    TResult Function(ResolvedBookingState value)? resolved,
    TResult Function(ErrorBookingState value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
    BookingState value,
    $Res Function(BookingState) then,
  ) = _$BookingStateCopyWithImpl<$Res, BookingState>;
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res, $Val extends BookingState>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IdleBookingStateImplCopyWith<$Res> {
  factory _$$IdleBookingStateImplCopyWith(
    _$IdleBookingStateImpl value,
    $Res Function(_$IdleBookingStateImpl) then,
  ) = __$$IdleBookingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleBookingStateImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$IdleBookingStateImpl>
    implements _$$IdleBookingStateImplCopyWith<$Res> {
  __$$IdleBookingStateImplCopyWithImpl(
    _$IdleBookingStateImpl _value,
    $Res Function(_$IdleBookingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleBookingStateImpl implements IdleBookingState {
  const _$IdleBookingStateImpl();

  @override
  String toString() {
    return 'BookingState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleBookingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
      MasterProfile master,
      String? selectedTopic,
      DateTime? selectedDateTime,
      List<DateTime> availableTimeSlots,
    )
    resolved,
    required TResult Function(String message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
      MasterProfile master,
      String? selectedTopic,
      DateTime? selectedDateTime,
      List<DateTime> availableTimeSlots,
    )?
    resolved,
    TResult? Function(String message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
      MasterProfile master,
      String? selectedTopic,
      DateTime? selectedDateTime,
      List<DateTime> availableTimeSlots,
    )?
    resolved,
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
    required TResult Function(IdleBookingState value) idle,
    required TResult Function(LoadingBookingState value) loading,
    required TResult Function(ResolvedBookingState value) resolved,
    required TResult Function(ErrorBookingState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleBookingState value)? idle,
    TResult? Function(LoadingBookingState value)? loading,
    TResult? Function(ResolvedBookingState value)? resolved,
    TResult? Function(ErrorBookingState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleBookingState value)? idle,
    TResult Function(LoadingBookingState value)? loading,
    TResult Function(ResolvedBookingState value)? resolved,
    TResult Function(ErrorBookingState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleBookingState implements BookingState {
  const factory IdleBookingState() = _$IdleBookingStateImpl;
}

/// @nodoc
abstract class _$$LoadingBookingStateImplCopyWith<$Res> {
  factory _$$LoadingBookingStateImplCopyWith(
    _$LoadingBookingStateImpl value,
    $Res Function(_$LoadingBookingStateImpl) then,
  ) = __$$LoadingBookingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingBookingStateImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$LoadingBookingStateImpl>
    implements _$$LoadingBookingStateImplCopyWith<$Res> {
  __$$LoadingBookingStateImplCopyWithImpl(
    _$LoadingBookingStateImpl _value,
    $Res Function(_$LoadingBookingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingBookingStateImpl implements LoadingBookingState {
  const _$LoadingBookingStateImpl();

  @override
  String toString() {
    return 'BookingState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingBookingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
      MasterProfile master,
      String? selectedTopic,
      DateTime? selectedDateTime,
      List<DateTime> availableTimeSlots,
    )
    resolved,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
      MasterProfile master,
      String? selectedTopic,
      DateTime? selectedDateTime,
      List<DateTime> availableTimeSlots,
    )?
    resolved,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
      MasterProfile master,
      String? selectedTopic,
      DateTime? selectedDateTime,
      List<DateTime> availableTimeSlots,
    )?
    resolved,
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
    required TResult Function(IdleBookingState value) idle,
    required TResult Function(LoadingBookingState value) loading,
    required TResult Function(ResolvedBookingState value) resolved,
    required TResult Function(ErrorBookingState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleBookingState value)? idle,
    TResult? Function(LoadingBookingState value)? loading,
    TResult? Function(ResolvedBookingState value)? resolved,
    TResult? Function(ErrorBookingState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleBookingState value)? idle,
    TResult Function(LoadingBookingState value)? loading,
    TResult Function(ResolvedBookingState value)? resolved,
    TResult Function(ErrorBookingState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingBookingState implements BookingState {
  const factory LoadingBookingState() = _$LoadingBookingStateImpl;
}

/// @nodoc
abstract class _$$ResolvedBookingStateImplCopyWith<$Res> {
  factory _$$ResolvedBookingStateImplCopyWith(
    _$ResolvedBookingStateImpl value,
    $Res Function(_$ResolvedBookingStateImpl) then,
  ) = __$$ResolvedBookingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    MasterProfile master,
    String? selectedTopic,
    DateTime? selectedDateTime,
    List<DateTime> availableTimeSlots,
  });

  $MasterProfileCopyWith<$Res> get master;
}

/// @nodoc
class __$$ResolvedBookingStateImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$ResolvedBookingStateImpl>
    implements _$$ResolvedBookingStateImplCopyWith<$Res> {
  __$$ResolvedBookingStateImplCopyWithImpl(
    _$ResolvedBookingStateImpl _value,
    $Res Function(_$ResolvedBookingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? master = null,
    Object? selectedTopic = freezed,
    Object? selectedDateTime = freezed,
    Object? availableTimeSlots = null,
  }) {
    return _then(
      _$ResolvedBookingStateImpl(
        master: null == master
            ? _value.master
            : master // ignore: cast_nullable_to_non_nullable
                  as MasterProfile,
        selectedTopic: freezed == selectedTopic
            ? _value.selectedTopic
            : selectedTopic // ignore: cast_nullable_to_non_nullable
                  as String?,
        selectedDateTime: freezed == selectedDateTime
            ? _value.selectedDateTime
            : selectedDateTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        availableTimeSlots: null == availableTimeSlots
            ? _value._availableTimeSlots
            : availableTimeSlots // ignore: cast_nullable_to_non_nullable
                  as List<DateTime>,
      ),
    );
  }

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MasterProfileCopyWith<$Res> get master {
    return $MasterProfileCopyWith<$Res>(_value.master, (value) {
      return _then(_value.copyWith(master: value));
    });
  }
}

/// @nodoc

class _$ResolvedBookingStateImpl implements ResolvedBookingState {
  const _$ResolvedBookingStateImpl({
    required this.master,
    required this.selectedTopic,
    required this.selectedDateTime,
    required final List<DateTime> availableTimeSlots,
  }) : _availableTimeSlots = availableTimeSlots;

  @override
  final MasterProfile master;
  @override
  final String? selectedTopic;
  @override
  final DateTime? selectedDateTime;
  final List<DateTime> _availableTimeSlots;
  @override
  List<DateTime> get availableTimeSlots {
    if (_availableTimeSlots is EqualUnmodifiableListView)
      return _availableTimeSlots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableTimeSlots);
  }

  @override
  String toString() {
    return 'BookingState.resolved(master: $master, selectedTopic: $selectedTopic, selectedDateTime: $selectedDateTime, availableTimeSlots: $availableTimeSlots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResolvedBookingStateImpl &&
            (identical(other.master, master) || other.master == master) &&
            (identical(other.selectedTopic, selectedTopic) ||
                other.selectedTopic == selectedTopic) &&
            (identical(other.selectedDateTime, selectedDateTime) ||
                other.selectedDateTime == selectedDateTime) &&
            const DeepCollectionEquality().equals(
              other._availableTimeSlots,
              _availableTimeSlots,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    master,
    selectedTopic,
    selectedDateTime,
    const DeepCollectionEquality().hash(_availableTimeSlots),
  );

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResolvedBookingStateImplCopyWith<_$ResolvedBookingStateImpl>
  get copyWith =>
      __$$ResolvedBookingStateImplCopyWithImpl<_$ResolvedBookingStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
      MasterProfile master,
      String? selectedTopic,
      DateTime? selectedDateTime,
      List<DateTime> availableTimeSlots,
    )
    resolved,
    required TResult Function(String message) error,
  }) {
    return resolved(
      master,
      selectedTopic,
      selectedDateTime,
      availableTimeSlots,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
      MasterProfile master,
      String? selectedTopic,
      DateTime? selectedDateTime,
      List<DateTime> availableTimeSlots,
    )?
    resolved,
    TResult? Function(String message)? error,
  }) {
    return resolved?.call(
      master,
      selectedTopic,
      selectedDateTime,
      availableTimeSlots,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
      MasterProfile master,
      String? selectedTopic,
      DateTime? selectedDateTime,
      List<DateTime> availableTimeSlots,
    )?
    resolved,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(
        master,
        selectedTopic,
        selectedDateTime,
        availableTimeSlots,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IdleBookingState value) idle,
    required TResult Function(LoadingBookingState value) loading,
    required TResult Function(ResolvedBookingState value) resolved,
    required TResult Function(ErrorBookingState value) error,
  }) {
    return resolved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleBookingState value)? idle,
    TResult? Function(LoadingBookingState value)? loading,
    TResult? Function(ResolvedBookingState value)? resolved,
    TResult? Function(ErrorBookingState value)? error,
  }) {
    return resolved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleBookingState value)? idle,
    TResult Function(LoadingBookingState value)? loading,
    TResult Function(ResolvedBookingState value)? resolved,
    TResult Function(ErrorBookingState value)? error,
    required TResult orElse(),
  }) {
    if (resolved != null) {
      return resolved(this);
    }
    return orElse();
  }
}

abstract class ResolvedBookingState implements BookingState {
  const factory ResolvedBookingState({
    required final MasterProfile master,
    required final String? selectedTopic,
    required final DateTime? selectedDateTime,
    required final List<DateTime> availableTimeSlots,
  }) = _$ResolvedBookingStateImpl;

  MasterProfile get master;
  String? get selectedTopic;
  DateTime? get selectedDateTime;
  List<DateTime> get availableTimeSlots;

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResolvedBookingStateImplCopyWith<_$ResolvedBookingStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorBookingStateImplCopyWith<$Res> {
  factory _$$ErrorBookingStateImplCopyWith(
    _$ErrorBookingStateImpl value,
    $Res Function(_$ErrorBookingStateImpl) then,
  ) = __$$ErrorBookingStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorBookingStateImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$ErrorBookingStateImpl>
    implements _$$ErrorBookingStateImplCopyWith<$Res> {
  __$$ErrorBookingStateImplCopyWithImpl(
    _$ErrorBookingStateImpl _value,
    $Res Function(_$ErrorBookingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorBookingStateImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorBookingStateImpl implements ErrorBookingState {
  const _$ErrorBookingStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BookingState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorBookingStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorBookingStateImplCopyWith<_$ErrorBookingStateImpl> get copyWith =>
      __$$ErrorBookingStateImplCopyWithImpl<_$ErrorBookingStateImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(
      MasterProfile master,
      String? selectedTopic,
      DateTime? selectedDateTime,
      List<DateTime> availableTimeSlots,
    )
    resolved,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(
      MasterProfile master,
      String? selectedTopic,
      DateTime? selectedDateTime,
      List<DateTime> availableTimeSlots,
    )?
    resolved,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(
      MasterProfile master,
      String? selectedTopic,
      DateTime? selectedDateTime,
      List<DateTime> availableTimeSlots,
    )?
    resolved,
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
    required TResult Function(IdleBookingState value) idle,
    required TResult Function(LoadingBookingState value) loading,
    required TResult Function(ResolvedBookingState value) resolved,
    required TResult Function(ErrorBookingState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IdleBookingState value)? idle,
    TResult? Function(LoadingBookingState value)? loading,
    TResult? Function(ResolvedBookingState value)? resolved,
    TResult? Function(ErrorBookingState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IdleBookingState value)? idle,
    TResult Function(LoadingBookingState value)? loading,
    TResult Function(ResolvedBookingState value)? resolved,
    TResult Function(ErrorBookingState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorBookingState implements BookingState {
  const factory ErrorBookingState(final String message) =
      _$ErrorBookingStateImpl;

  String get message;

  /// Create a copy of BookingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorBookingStateImplCopyWith<_$ErrorBookingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

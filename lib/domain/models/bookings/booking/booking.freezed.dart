// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Booking {
  DateTime get dateTime => throw _privateConstructorUsedError;
  String get masterFirstName => throw _privateConstructorUsedError;
  String get masterLastName => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  int get duration =>
      throw _privateConstructorUsedError; // длительность в минутах
  String get conferenceLink => throw _privateConstructorUsedError;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res, Booking>;
  @useResult
  $Res call({
    DateTime dateTime,
    String masterFirstName,
    String masterLastName,
    String topic,
    int duration,
    String conferenceLink,
  });
}

/// @nodoc
class _$BookingCopyWithImpl<$Res, $Val extends Booking>
    implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? masterFirstName = null,
    Object? masterLastName = null,
    Object? topic = null,
    Object? duration = null,
    Object? conferenceLink = null,
  }) {
    return _then(
      _value.copyWith(
            dateTime: null == dateTime
                ? _value.dateTime
                : dateTime // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            masterFirstName: null == masterFirstName
                ? _value.masterFirstName
                : masterFirstName // ignore: cast_nullable_to_non_nullable
                      as String,
            masterLastName: null == masterLastName
                ? _value.masterLastName
                : masterLastName // ignore: cast_nullable_to_non_nullable
                      as String,
            topic: null == topic
                ? _value.topic
                : topic // ignore: cast_nullable_to_non_nullable
                      as String,
            duration: null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                      as int,
            conferenceLink: null == conferenceLink
                ? _value.conferenceLink
                : conferenceLink // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BookingImplCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$$BookingImplCopyWith(
    _$BookingImpl value,
    $Res Function(_$BookingImpl) then,
  ) = __$$BookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DateTime dateTime,
    String masterFirstName,
    String masterLastName,
    String topic,
    int duration,
    String conferenceLink,
  });
}

/// @nodoc
class __$$BookingImplCopyWithImpl<$Res>
    extends _$BookingCopyWithImpl<$Res, _$BookingImpl>
    implements _$$BookingImplCopyWith<$Res> {
  __$$BookingImplCopyWithImpl(
    _$BookingImpl _value,
    $Res Function(_$BookingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? masterFirstName = null,
    Object? masterLastName = null,
    Object? topic = null,
    Object? duration = null,
    Object? conferenceLink = null,
  }) {
    return _then(
      _$BookingImpl(
        dateTime: null == dateTime
            ? _value.dateTime
            : dateTime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        masterFirstName: null == masterFirstName
            ? _value.masterFirstName
            : masterFirstName // ignore: cast_nullable_to_non_nullable
                  as String,
        masterLastName: null == masterLastName
            ? _value.masterLastName
            : masterLastName // ignore: cast_nullable_to_non_nullable
                  as String,
        topic: null == topic
            ? _value.topic
            : topic // ignore: cast_nullable_to_non_nullable
                  as String,
        duration: null == duration
            ? _value.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as int,
        conferenceLink: null == conferenceLink
            ? _value.conferenceLink
            : conferenceLink // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$BookingImpl implements _Booking {
  const _$BookingImpl({
    required this.dateTime,
    required this.masterFirstName,
    required this.masterLastName,
    required this.topic,
    required this.duration,
    required this.conferenceLink,
  });

  @override
  final DateTime dateTime;
  @override
  final String masterFirstName;
  @override
  final String masterLastName;
  @override
  final String topic;
  @override
  final int duration;
  // длительность в минутах
  @override
  final String conferenceLink;

  @override
  String toString() {
    return 'Booking(dateTime: $dateTime, masterFirstName: $masterFirstName, masterLastName: $masterLastName, topic: $topic, duration: $duration, conferenceLink: $conferenceLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.masterFirstName, masterFirstName) ||
                other.masterFirstName == masterFirstName) &&
            (identical(other.masterLastName, masterLastName) ||
                other.masterLastName == masterLastName) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.conferenceLink, conferenceLink) ||
                other.conferenceLink == conferenceLink));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    dateTime,
    masterFirstName,
    masterLastName,
    topic,
    duration,
    conferenceLink,
  );

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      __$$BookingImplCopyWithImpl<_$BookingImpl>(this, _$identity);
}

abstract class _Booking implements Booking {
  const factory _Booking({
    required final DateTime dateTime,
    required final String masterFirstName,
    required final String masterLastName,
    required final String topic,
    required final int duration,
    required final String conferenceLink,
  }) = _$BookingImpl;

  @override
  DateTime get dateTime;
  @override
  String get masterFirstName;
  @override
  String get masterLastName;
  @override
  String get topic;
  @override
  int get duration; // длительность в минутах
  @override
  String get conferenceLink;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

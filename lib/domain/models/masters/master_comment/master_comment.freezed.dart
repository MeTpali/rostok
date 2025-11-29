// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MasterComment {
  String get name => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  int get star => throw _privateConstructorUsedError;
  List<String> get topics => throw _privateConstructorUsedError;
  String get descrption => throw _privateConstructorUsedError;

  /// Create a copy of MasterComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MasterCommentCopyWith<MasterComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterCommentCopyWith<$Res> {
  factory $MasterCommentCopyWith(
    MasterComment value,
    $Res Function(MasterComment) then,
  ) = _$MasterCommentCopyWithImpl<$Res, MasterComment>;
  @useResult
  $Res call({
    String name,
    DateTime dateTime,
    int star,
    List<String> topics,
    String descrption,
  });
}

/// @nodoc
class _$MasterCommentCopyWithImpl<$Res, $Val extends MasterComment>
    implements $MasterCommentCopyWith<$Res> {
  _$MasterCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MasterComment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dateTime = null,
    Object? star = null,
    Object? topics = null,
    Object? descrption = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            dateTime: null == dateTime
                ? _value.dateTime
                : dateTime // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            star: null == star
                ? _value.star
                : star // ignore: cast_nullable_to_non_nullable
                      as int,
            topics: null == topics
                ? _value.topics
                : topics // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            descrption: null == descrption
                ? _value.descrption
                : descrption // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MasterCommentImplCopyWith<$Res>
    implements $MasterCommentCopyWith<$Res> {
  factory _$$MasterCommentImplCopyWith(
    _$MasterCommentImpl value,
    $Res Function(_$MasterCommentImpl) then,
  ) = __$$MasterCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    DateTime dateTime,
    int star,
    List<String> topics,
    String descrption,
  });
}

/// @nodoc
class __$$MasterCommentImplCopyWithImpl<$Res>
    extends _$MasterCommentCopyWithImpl<$Res, _$MasterCommentImpl>
    implements _$$MasterCommentImplCopyWith<$Res> {
  __$$MasterCommentImplCopyWithImpl(
    _$MasterCommentImpl _value,
    $Res Function(_$MasterCommentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MasterComment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dateTime = null,
    Object? star = null,
    Object? topics = null,
    Object? descrption = null,
  }) {
    return _then(
      _$MasterCommentImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        dateTime: null == dateTime
            ? _value.dateTime
            : dateTime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        star: null == star
            ? _value.star
            : star // ignore: cast_nullable_to_non_nullable
                  as int,
        topics: null == topics
            ? _value._topics
            : topics // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        descrption: null == descrption
            ? _value.descrption
            : descrption // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$MasterCommentImpl implements _MasterComment {
  const _$MasterCommentImpl({
    required this.name,
    required this.dateTime,
    required this.star,
    required final List<String> topics,
    required this.descrption,
  }) : _topics = topics;

  @override
  final String name;
  @override
  final DateTime dateTime;
  @override
  final int star;
  final List<String> _topics;
  @override
  List<String> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  final String descrption;

  @override
  String toString() {
    return 'MasterComment(name: $name, dateTime: $dateTime, star: $star, topics: $topics, descrption: $descrption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MasterCommentImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.star, star) || other.star == star) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            (identical(other.descrption, descrption) ||
                other.descrption == descrption));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    dateTime,
    star,
    const DeepCollectionEquality().hash(_topics),
    descrption,
  );

  /// Create a copy of MasterComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MasterCommentImplCopyWith<_$MasterCommentImpl> get copyWith =>
      __$$MasterCommentImplCopyWithImpl<_$MasterCommentImpl>(this, _$identity);
}

abstract class _MasterComment implements MasterComment {
  const factory _MasterComment({
    required final String name,
    required final DateTime dateTime,
    required final int star,
    required final List<String> topics,
    required final String descrption,
  }) = _$MasterCommentImpl;

  @override
  String get name;
  @override
  DateTime get dateTime;
  @override
  int get star;
  @override
  List<String> get topics;
  @override
  String get descrption;

  /// Create a copy of MasterComment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MasterCommentImplCopyWith<_$MasterCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Comment {
  int get id => throw _privateConstructorUsedError;
  String get sender => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get senderImageUrl => throw _privateConstructorUsedError;
  List<Comment> get subcomments => throw _privateConstructorUsedError;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call({
    int id,
    String sender,
    DateTime dateTime,
    String content,
    String? senderImageUrl,
    List<Comment> subcomments,
  });
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sender = null,
    Object? dateTime = null,
    Object? content = null,
    Object? senderImageUrl = freezed,
    Object? subcomments = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            sender: null == sender
                ? _value.sender
                : sender // ignore: cast_nullable_to_non_nullable
                      as String,
            dateTime: null == dateTime
                ? _value.dateTime
                : dateTime // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            senderImageUrl: freezed == senderImageUrl
                ? _value.senderImageUrl
                : senderImageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            subcomments: null == subcomments
                ? _value.subcomments
                : subcomments // ignore: cast_nullable_to_non_nullable
                      as List<Comment>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommentImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$CommentImplCopyWith(
    _$CommentImpl value,
    $Res Function(_$CommentImpl) then,
  ) = __$$CommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String sender,
    DateTime dateTime,
    String content,
    String? senderImageUrl,
    List<Comment> subcomments,
  });
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(
    _$CommentImpl _value,
    $Res Function(_$CommentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sender = null,
    Object? dateTime = null,
    Object? content = null,
    Object? senderImageUrl = freezed,
    Object? subcomments = null,
  }) {
    return _then(
      _$CommentImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        sender: null == sender
            ? _value.sender
            : sender // ignore: cast_nullable_to_non_nullable
                  as String,
        dateTime: null == dateTime
            ? _value.dateTime
            : dateTime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        senderImageUrl: freezed == senderImageUrl
            ? _value.senderImageUrl
            : senderImageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        subcomments: null == subcomments
            ? _value._subcomments
            : subcomments // ignore: cast_nullable_to_non_nullable
                  as List<Comment>,
      ),
    );
  }
}

/// @nodoc

class _$CommentImpl implements _Comment {
  const _$CommentImpl({
    required this.id,
    required this.sender,
    required this.dateTime,
    required this.content,
    this.senderImageUrl,
    final List<Comment> subcomments = const [],
  }) : _subcomments = subcomments;

  @override
  final int id;
  @override
  final String sender;
  @override
  final DateTime dateTime;
  @override
  final String content;
  @override
  final String? senderImageUrl;
  final List<Comment> _subcomments;
  @override
  @JsonKey()
  List<Comment> get subcomments {
    if (_subcomments is EqualUnmodifiableListView) return _subcomments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subcomments);
  }

  @override
  String toString() {
    return 'Comment(id: $id, sender: $sender, dateTime: $dateTime, content: $content, senderImageUrl: $senderImageUrl, subcomments: $subcomments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.senderImageUrl, senderImageUrl) ||
                other.senderImageUrl == senderImageUrl) &&
            const DeepCollectionEquality().equals(
              other._subcomments,
              _subcomments,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    sender,
    dateTime,
    content,
    senderImageUrl,
    const DeepCollectionEquality().hash(_subcomments),
  );

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);
}

abstract class _Comment implements Comment {
  const factory _Comment({
    required final int id,
    required final String sender,
    required final DateTime dateTime,
    required final String content,
    final String? senderImageUrl,
    final List<Comment> subcomments,
  }) = _$CommentImpl;

  @override
  int get id;
  @override
  String get sender;
  @override
  DateTime get dateTime;
  @override
  String get content;
  @override
  String? get senderImageUrl;
  @override
  List<Comment> get subcomments;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'knowledge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Knowledge {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<Topic> get topics => throw _privateConstructorUsedError;

  /// Create a copy of Knowledge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KnowledgeCopyWith<Knowledge> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KnowledgeCopyWith<$Res> {
  factory $KnowledgeCopyWith(Knowledge value, $Res Function(Knowledge) then) =
      _$KnowledgeCopyWithImpl<$Res, Knowledge>;
  @useResult
  $Res call({int id, String title, List<Topic> topics});
}

/// @nodoc
class _$KnowledgeCopyWithImpl<$Res, $Val extends Knowledge>
    implements $KnowledgeCopyWith<$Res> {
  _$KnowledgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Knowledge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? title = null, Object? topics = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            topics: null == topics
                ? _value.topics
                : topics // ignore: cast_nullable_to_non_nullable
                      as List<Topic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$KnowledgeImplCopyWith<$Res>
    implements $KnowledgeCopyWith<$Res> {
  factory _$$KnowledgeImplCopyWith(
    _$KnowledgeImpl value,
    $Res Function(_$KnowledgeImpl) then,
  ) = __$$KnowledgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, List<Topic> topics});
}

/// @nodoc
class __$$KnowledgeImplCopyWithImpl<$Res>
    extends _$KnowledgeCopyWithImpl<$Res, _$KnowledgeImpl>
    implements _$$KnowledgeImplCopyWith<$Res> {
  __$$KnowledgeImplCopyWithImpl(
    _$KnowledgeImpl _value,
    $Res Function(_$KnowledgeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Knowledge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? title = null, Object? topics = null}) {
    return _then(
      _$KnowledgeImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        topics: null == topics
            ? _value._topics
            : topics // ignore: cast_nullable_to_non_nullable
                  as List<Topic>,
      ),
    );
  }
}

/// @nodoc

class _$KnowledgeImpl implements _Knowledge {
  const _$KnowledgeImpl({
    required this.id,
    required this.title,
    required final List<Topic> topics,
  }) : _topics = topics;

  @override
  final int id;
  @override
  final String title;
  final List<Topic> _topics;
  @override
  List<Topic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString() {
    return 'Knowledge(id: $id, title: $title, topics: $topics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KnowledgeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    const DeepCollectionEquality().hash(_topics),
  );

  /// Create a copy of Knowledge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KnowledgeImplCopyWith<_$KnowledgeImpl> get copyWith =>
      __$$KnowledgeImplCopyWithImpl<_$KnowledgeImpl>(this, _$identity);
}

abstract class _Knowledge implements Knowledge {
  const factory _Knowledge({
    required final int id,
    required final String title,
    required final List<Topic> topics,
  }) = _$KnowledgeImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  List<Topic> get topics;

  /// Create a copy of Knowledge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KnowledgeImplCopyWith<_$KnowledgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

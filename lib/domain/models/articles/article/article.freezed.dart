// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Article {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get publisherName => throw _privateConstructorUsedError;
  DateTime get publishDate => throw _privateConstructorUsedError;
  int get commentsCount => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call({
    int id,
    String title,
    String content,
    String publisherName,
    DateTime publishDate,
    int commentsCount,
    bool isFavourite,
  });
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Article
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
    Object? isFavourite = null,
  }) {
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
            isFavourite: null == isFavourite
                ? _value.isFavourite
                : isFavourite // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ArticleImplCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$ArticleImplCopyWith(
    _$ArticleImpl value,
    $Res Function(_$ArticleImpl) then,
  ) = __$$ArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String content,
    String publisherName,
    DateTime publishDate,
    int commentsCount,
    bool isFavourite,
  });
}

/// @nodoc
class __$$ArticleImplCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$ArticleImpl>
    implements _$$ArticleImplCopyWith<$Res> {
  __$$ArticleImplCopyWithImpl(
    _$ArticleImpl _value,
    $Res Function(_$ArticleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Article
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
    Object? isFavourite = null,
  }) {
    return _then(
      _$ArticleImpl(
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
        isFavourite: null == isFavourite
            ? _value.isFavourite
            : isFavourite // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ArticleImpl implements _Article {
  const _$ArticleImpl({
    required this.id,
    required this.title,
    required this.content,
    required this.publisherName,
    required this.publishDate,
    required this.commentsCount,
    this.isFavourite = false,
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
  @JsonKey()
  final bool isFavourite;

  @override
  String toString() {
    return 'Article(id: $id, title: $title, content: $content, publisherName: $publisherName, publishDate: $publishDate, commentsCount: $commentsCount, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.publisherName, publisherName) ||
                other.publisherName == publisherName) &&
            (identical(other.publishDate, publishDate) ||
                other.publishDate == publishDate) &&
            (identical(other.commentsCount, commentsCount) ||
                other.commentsCount == commentsCount) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite));
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
    isFavourite,
  );

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      __$$ArticleImplCopyWithImpl<_$ArticleImpl>(this, _$identity);
}

abstract class _Article implements Article {
  const factory _Article({
    required final int id,
    required final String title,
    required final String content,
    required final String publisherName,
    required final DateTime publishDate,
    required final int commentsCount,
    final bool isFavourite,
  }) = _$ArticleImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  String get content;
  @override
  String get publisherName;
  @override
  DateTime get publishDate;
  @override
  int get commentsCount;
  @override
  bool get isFavourite;

  /// Create a copy of Article
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

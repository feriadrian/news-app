// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) {
  return _NewsModel.fromJson(json);
}

/// @nodoc
mixin _$NewsModel {
  String get author => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get urlToImage => throw _privateConstructorUsedError;
  String get publishedAt => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  Source? get source => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsModelCopyWith<NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsModelCopyWith<$Res> {
  factory $NewsModelCopyWith(NewsModel value, $Res Function(NewsModel) then) =
      _$NewsModelCopyWithImpl<$Res, NewsModel>;
  @useResult
  $Res call(
      {String author,
      String title,
      String description,
      String url,
      String urlToImage,
      String publishedAt,
      String content,
      Source? source});

  $SourceCopyWith<$Res>? get source;
}

/// @nodoc
class _$NewsModelCopyWithImpl<$Res, $Val extends NewsModel>
    implements $NewsModelCopyWith<$Res> {
  _$NewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? title = null,
    Object? description = null,
    Object? url = null,
    Object? urlToImage = null,
    Object? publishedAt = null,
    Object? content = null,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: null == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SourceCopyWith<$Res>? get source {
    if (_value.source == null) {
      return null;
    }

    return $SourceCopyWith<$Res>(_value.source!, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewsModelCopyWith<$Res> implements $NewsModelCopyWith<$Res> {
  factory _$$_NewsModelCopyWith(
          _$_NewsModel value, $Res Function(_$_NewsModel) then) =
      __$$_NewsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String author,
      String title,
      String description,
      String url,
      String urlToImage,
      String publishedAt,
      String content,
      Source? source});

  @override
  $SourceCopyWith<$Res>? get source;
}

/// @nodoc
class __$$_NewsModelCopyWithImpl<$Res>
    extends _$NewsModelCopyWithImpl<$Res, _$_NewsModel>
    implements _$$_NewsModelCopyWith<$Res> {
  __$$_NewsModelCopyWithImpl(
      _$_NewsModel _value, $Res Function(_$_NewsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? title = null,
    Object? description = null,
    Object? url = null,
    Object? urlToImage = null,
    Object? publishedAt = null,
    Object? content = null,
    Object? source = freezed,
  }) {
    return _then(_$_NewsModel(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: null == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsModel implements _NewsModel {
  const _$_NewsModel(
      {this.author = '-',
      this.title = '-',
      this.description = '-',
      this.url = '-',
      this.urlToImage = '-',
      this.publishedAt = '-',
      this.content = '-',
      this.source});

  factory _$_NewsModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewsModelFromJson(json);

  @override
  @JsonKey()
  final String author;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final String urlToImage;
  @override
  @JsonKey()
  final String publishedAt;
  @override
  @JsonKey()
  final String content;
  @override
  final Source? source;

  @override
  String toString() {
    return 'NewsModel(author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content, source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsModel &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, author, title, description, url,
      urlToImage, publishedAt, content, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsModelCopyWith<_$_NewsModel> get copyWith =>
      __$$_NewsModelCopyWithImpl<_$_NewsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsModelToJson(
      this,
    );
  }
}

abstract class _NewsModel implements NewsModel {
  const factory _NewsModel(
      {final String author,
      final String title,
      final String description,
      final String url,
      final String urlToImage,
      final String publishedAt,
      final String content,
      final Source? source}) = _$_NewsModel;

  factory _NewsModel.fromJson(Map<String, dynamic> json) =
      _$_NewsModel.fromJson;

  @override
  String get author;
  @override
  String get title;
  @override
  String get description;
  @override
  String get url;
  @override
  String get urlToImage;
  @override
  String get publishedAt;
  @override
  String get content;
  @override
  Source? get source;
  @override
  @JsonKey(ignore: true)
  _$$_NewsModelCopyWith<_$_NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

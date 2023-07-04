import 'package:freezed_annotation/freezed_annotation.dart';

import '../publisher/publisher.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class NewsModel with _$NewsModel {
  const factory NewsModel({
    @Default('-') String author,
    @Default('-') String title,
    @Default('-') String description,
    @Default('-') String url,
    @Default('-') String urlToImage,
    @Default('-') String publishedAt,
    @Default('-') String content,
    Source? source,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, Object?> json) =>
      _$NewsModelFromJson(json);
}

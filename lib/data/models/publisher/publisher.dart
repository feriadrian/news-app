import 'package:freezed_annotation/freezed_annotation.dart';

part 'publisher.freezed.dart';
part 'publisher.g.dart';

@freezed
class Source with _$Source {
  const factory Source({
    @Default('-') String id,
    @Default('-') String name,
  }) = _Source;

  factory Source.fromJson(Map<String, Object?> json) => _$SourceFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_model.freezed.dart';
part 'blog_model.g.dart';

@freezed
abstract class BlogModel with _$BlogModel {
  const factory BlogModel({
    required int id,
    required String title,
    required String thumbnail,
    required String summary,
    required String content,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _BlogModel;

  factory BlogModel.fromJson(Map<String, dynamic> json) =>
      _$BlogModelFromJson(json);

  factory BlogModel.fromStripeJson(Map<String, dynamic> json) {
    return BlogModel(
      id: json['id'] as int,
      title: json['attributes']['title'] as String,
      thumbnail: json['attributes']['thumbnail']?['data']?['attributes']?['url']
              as String? ??
          '',
      summary: json['attributes']['summary'] as String,
      content: json['attributes']['content'] as String,
      createdAt: DateTime.parse(json['attributes']['createdAt'] as String),
      updatedAt: DateTime.parse(json['attributes']['updatedAt'] as String),
    );
  }
}

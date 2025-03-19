import 'package:json_annotation/json_annotation.dart';

part 'photo.g.dart';

@JsonSerializable()
class Photo {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  const Photo({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
  dynamic toJson() => _$PhotoToJson(this);
  // factory Photo.fromJson(Map<String, dynamic> json) {
  //   return Photo(
  //     albumId: json['albumId'] as int,
  //     id: json['id'] as int,
  //     title: json['title'] as String,
  //     url: json['url'] as String,
  //     thumbnailUrl: json['thumbnailUrl'] as String,
  //   );
  // }
}

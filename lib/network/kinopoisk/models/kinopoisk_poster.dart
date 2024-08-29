import 'package:json_annotation/json_annotation.dart';

part 'kinopoisk_poster.g.dart';

@JsonSerializable()
class KinopoiskPoster{
  KinopoiskPoster(this.url, this.previewUrl);

  final String? url;
  final String? previewUrl;

  factory KinopoiskPoster.fromJson(Map<String, dynamic> json) => _$KinopoiskPosterFromJson(json);
  KinopoiskPoster toJson() => _$KinopoiskPosterFromJson(this as Map<String, dynamic>);
}
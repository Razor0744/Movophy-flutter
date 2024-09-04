import 'package:json_annotation/json_annotation.dart';
import 'package:test_for_max/network/kinopoisk/models/kinopoisk_poster.dart';

part 'kinopoisk_title.g.dart';

@JsonSerializable()
class KinopoiskTitle{
  KinopoiskTitle(this.poster, this.name, this.description);

  final KinopoiskPoster? poster;
  final String? name;
  final String? description;

  factory KinopoiskTitle.fromJson(Map<String, dynamic> json) => _$KinopoiskTitleFromJson(json);
  KinopoiskTitle toJson() => _$KinopoiskTitleFromJson(this as Map<String, dynamic>);
}
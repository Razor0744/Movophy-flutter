import 'package:json_annotation/json_annotation.dart';

import 'KinopoiskPoster.dart';

part 'KinopoiskDocs.g.dart';

@JsonSerializable()
class KinopoiskDocs{
  KinopoiskDocs(this.id, this.poster);

  final int? id;
  final KinopoiskPoster? poster;

  factory KinopoiskDocs.fromJson(Map<String, dynamic> json) => _$KinopoiskDocsFromJson(json);
  KinopoiskDocs toJson() => _$KinopoiskDocsFromJson(this as Map<String, dynamic>);
}
import 'package:json_annotation/json_annotation.dart';

import 'kinopoisk_docs.dart';

part 'kinopoisk_list.g.dart';

@JsonSerializable()
class KinopoiskList {
  const KinopoiskList(this.docs, this.total, this.limit, this.page, this.pages);

  factory KinopoiskList.fromJson(Map<String, dynamic> json) => _$KinopoiskListFromJson(json);

  final List<KinopoiskDocs>? docs;
  final int? total;
  final int? limit;
  final int? page;
  final int? pages;

  KinopoiskList toJson() => _$KinopoiskListFromJson(this as Map<String, dynamic>);
}

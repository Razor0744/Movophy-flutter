import 'package:json_annotation/json_annotation.dart';
import 'package:test_for_max/network/anilibria/models/AnilibriaPosters.dart';

part 'AnilibriaTitle.g.dart';

@JsonSerializable()
class AnilibriaTitle {
  const AnilibriaTitle(
      {this.id,
      this.names,
      this.posters,
      this.player,
      this.description});

  factory AnilibriaTitle.fromJson(Map<String, dynamic> json) =>
      _$AnilibriaTitleFromJson(json);

  final int? id;
  final dynamic names;
  final AnilibriaPosters? posters;
  final dynamic player;
  final String? description;

  AnilibriaTitle toJson() =>
      _$AnilibriaTitleFromJson(this as Map<String, dynamic>);
}

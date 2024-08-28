import 'package:json_annotation/json_annotation.dart';
import 'package:test_for_max/network/anilibria/models/AnilibriaPostersSmall.dart';

part 'AnilibriaPosters.g.dart';

@JsonSerializable()
class AnilibriaPosters{
  const AnilibriaPosters(this.small);

  factory AnilibriaPosters.fromJson(Map<String, dynamic> json) =>
      _$AnilibriaPostersFromJson(json);

  final AnilibriaPostersSmall? small;

  AnilibriaPosters toJson() =>
      _$AnilibriaPostersFromJson(this as Map<String, dynamic>);
}
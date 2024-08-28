import 'package:json_annotation/json_annotation.dart';

part 'AnilibriaPostersSmall.g.dart';

@JsonSerializable()
class AnilibriaPostersSmall {
  const AnilibriaPostersSmall(this.url);

  factory AnilibriaPostersSmall.fromJson(Map<String, dynamic> json) =>
      _$AnilibriaPostersSmallFromJson(json);

  final String? url;

  AnilibriaPostersSmall toJson() =>
      _$AnilibriaPostersSmallFromJson(this as Map<String, dynamic>);
}

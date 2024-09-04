import 'package:json_annotation/json_annotation.dart';

part 'anilibria_names.g.dart';

@JsonSerializable()
class AnilibriaNames {
  const AnilibriaNames(this.ru);

  factory AnilibriaNames.fromJson(Map<String, dynamic> json) =>
      _$AnilibriaNamesFromJson(json);

  final String? ru;

  AnilibriaNames toJson() =>
      _$AnilibriaNamesFromJson(this as Map<String, dynamic>);
}
import 'package:json_annotation/json_annotation.dart';
import 'package:test_for_max/network/anilibria/models/anilibria_title.dart';

part 'anilibria_schedule.g.dart';

@JsonSerializable()
class AnilibriaSchedule {
  const AnilibriaSchedule({this.day, this.list});

  factory AnilibriaSchedule.fromJson(Map<String, dynamic> json) => _$AnilibriaScheduleFromJson(json);

  final int? day;
  final List<AnilibriaTitle>? list;

  AnilibriaSchedule toJson() => _$AnilibriaScheduleFromJson(this as Map<String, dynamic>);
}

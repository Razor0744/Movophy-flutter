// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AnilibriaSchedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnilibriaSchedule _$AnilibriaScheduleFromJson(Map<String, dynamic> json) =>
    AnilibriaSchedule(
      day: (json['day'] as num?)?.toInt(),
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => AnilibriaTitle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnilibriaScheduleToJson(AnilibriaSchedule instance) =>
    <String, dynamic>{
      'day': instance.day,
      'list': instance.list,
    };

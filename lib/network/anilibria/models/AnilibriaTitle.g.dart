// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AnilibriaTitle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnilibriaTitle _$AnilibriaTitleFromJson(Map<String, dynamic> json) =>
    AnilibriaTitle(
      id: (json['id'] as num?)?.toInt(),
      names: json['names'],
      posters: json['posters'] == null
          ? null
          : AnilibriaPosters.fromJson(json['posters'] as Map<String, dynamic>),
      player: json['player'],
      description: json['description'] as String?,
    );

Map<String, dynamic> _$AnilibriaTitleToJson(AnilibriaTitle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'names': instance.names,
      'posters': instance.posters,
      'player': instance.player,
      'description': instance.description,
    };

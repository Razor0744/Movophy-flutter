// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AnilibriaPosters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnilibriaPosters _$AnilibriaPostersFromJson(Map<String, dynamic> json) =>
    AnilibriaPosters(
      json['small'] == null
          ? null
          : AnilibriaPostersSmall.fromJson(
              json['small'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnilibriaPostersToJson(AnilibriaPosters instance) =>
    <String, dynamic>{
      'small': instance.small,
    };

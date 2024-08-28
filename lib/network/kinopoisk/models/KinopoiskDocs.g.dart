// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'KinopoiskDocs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KinopoiskDocs _$KinopoiskDocsFromJson(Map<String, dynamic> json) =>
    KinopoiskDocs(
      (json['id'] as num?)?.toInt(),
      json['poster'] == null
          ? null
          : KinopoiskPoster.fromJson(json['poster'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KinopoiskDocsToJson(KinopoiskDocs instance) =>
    <String, dynamic>{
      'id': instance.id,
      'poster': instance.poster,
    };

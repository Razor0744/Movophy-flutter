// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'KinopoiskList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KinopoiskList _$KinopoiskListFromJson(Map<String, dynamic> json) =>
    KinopoiskList(
      (json['docs'] as List<dynamic>?)
          ?.map((e) => KinopoiskDocs.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['total'] as num?)?.toInt(),
      (json['limit'] as num?)?.toInt(),
      (json['page'] as num?)?.toInt(),
      (json['pages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$KinopoiskListToJson(KinopoiskList instance) =>
    <String, dynamic>{
      'docs': instance.docs,
      'total': instance.total,
      'limit': instance.limit,
      'page': instance.page,
      'pages': instance.pages,
    };

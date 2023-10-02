// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_genre.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseGenreImpl _$$ResponseGenreImplFromJson(Map<String, dynamic> json) =>
    _$ResponseGenreImpl(
      code: json['code'] as int?,
      data: (json['data'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ResponseGenreImplToJson(_$ResponseGenreImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

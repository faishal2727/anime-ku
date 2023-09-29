// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_detail_anime.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDetailAnimeImpl _$$ResponseDetailAnimeImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDetailAnimeImpl(
      code: json['code'] as int?,
      data: json['data'] == null
          ? null
          : DataDetail.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseDetailAnimeImplToJson(
        _$ResponseDetailAnimeImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

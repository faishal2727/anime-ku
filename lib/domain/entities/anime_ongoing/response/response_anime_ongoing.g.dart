// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_anime_ongoing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseAnimeOngoingImpl _$$ResponseAnimeOngoingImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseAnimeOngoingImpl(
      code: json['code'] as int?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseAnimeOngoingImplToJson(
        _$ResponseAnimeOngoingImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_by_genere.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseByGenereImpl _$$ResponseByGenereImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseByGenereImpl(
      code: json['code'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AnimeByGenere.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseByGenereImplToJson(
        _$ResponseByGenereImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

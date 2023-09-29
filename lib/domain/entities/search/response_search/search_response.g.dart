// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseSearchImpl _$$ResponseSearchImplFromJson(Map<String, dynamic> json) =>
    _$ResponseSearchImpl(
      code: json['code'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataSearch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseSearchImplToJson(
        _$ResponseSearchImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'data': instance.data,
    };

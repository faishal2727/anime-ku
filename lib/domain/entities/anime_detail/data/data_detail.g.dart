// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataDetailImpl _$$DataDetailImplFromJson(Map<String, dynamic> json) =>
    _$DataDetailImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      thumbnail: json['thumbnail'] as String?,
      japaneseTitle: json['japaneseTitle'] as String?,
      score: json['score'] as String?,
      producer: json['producer'] as String?,
      type: json['type'] as String?,
      status: json['status'] as String?,
      duration: json['duration'] as String?,
      releaseDate: json['releaseDate'] as String?,
      studio: json['studio'] as String?,
      genre: json['genre'] as String?,
      synopsis: json['synopsis'] as String?,
      episode: (json['episode'] as List<dynamic>?)
          ?.map((e) => Episode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataDetailImplToJson(_$DataDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'japaneseTitle': instance.japaneseTitle,
      'score': instance.score,
      'producer': instance.producer,
      'type': instance.type,
      'status': instance.status,
      'duration': instance.duration,
      'releaseDate': instance.releaseDate,
      'studio': instance.studio,
      'genre': instance.genre,
      'synopsis': instance.synopsis,
      'episode': instance.episode,
    };

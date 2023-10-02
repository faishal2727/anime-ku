// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_by_genre.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnimeByGenereImpl _$$AnimeByGenereImplFromJson(Map<String, dynamic> json) =>
    _$AnimeByGenereImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      thumbnail: json['thumbnail'] as String?,
      episode: json['episode'] as String?,
      genre:
          (json['genre'] as List<dynamic>?)?.map((e) => e as String).toList(),
      url: json['url'] as String?,
      score: json['score'] as String?,
    );

Map<String, dynamic> _$$AnimeByGenereImplToJson(_$AnimeByGenereImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'episode': instance.episode,
      'genre': instance.genre,
      'url': instance.url,
      'score': instance.score,
    };

import 'package:anime_ku/domain/entities/anime_detail/data/data_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'response_detail_anime.freezed.dart';
part 'response_detail_anime.g.dart';

@freezed
class ResponseDetailAnime with _$ResponseDetailAnime {
  const factory ResponseDetailAnime({
     int? code,
     DataDetail? data,
  }) = _ResponseDetailAnime;

  factory ResponseDetailAnime.fromJson(Map<String, Object?> json) =>
      _$ResponseDetailAnimeFromJson(json);
}

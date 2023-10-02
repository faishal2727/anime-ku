import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'anime_by_genre.freezed.dart';
part 'anime_by_genre.g.dart';

@freezed
class AnimeByGenere with _$AnimeByGenere {
  const factory AnimeByGenere({
    String? id,
    String? title,
    String? thumbnail,
    String? episode,
    List<String>? genre,
    String? url,
    String? score,
  }) = _AnimeByGenere;

  factory AnimeByGenere.fromJson(Map<String, Object?> json) => _$AnimeByGenereFromJson(json);
}

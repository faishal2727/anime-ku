import 'package:anime_ku/domain/entities/anime_by_genre/data/anime_by_genre.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_by_genere.freezed.dart';
part 'response_by_genere.g.dart';

@freezed
class ResponseByGenere with _$ResponseByGenere {
  const factory ResponseByGenere({
    int? code,
    List<AnimeByGenere>? data,
  }) = _ResponseByGenere;

  factory ResponseByGenere.fromJson(Map<String, Object?> json) =>
      _$ResponseByGenereFromJson(json);
}

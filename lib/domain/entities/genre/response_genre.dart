import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'response_genre.freezed.dart';
part 'response_genre.g.dart';

@freezed
class ResponseGenre with _$ResponseGenre {
  const factory ResponseGenre({
    int? code,
    List<String>? data,
  }) = _ResponseGenre;

  factory ResponseGenre.fromJson(Map<String, Object?> json) =>
      _$ResponseGenreFromJson(json);
}

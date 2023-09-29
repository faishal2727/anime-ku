import 'package:anime_ku/domain/entities/anime_ongoing/data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'response_anime_ongoing.freezed.dart';
part 'response_anime_ongoing.g.dart';

@freezed
class ResponseAnimeOngoing with _$ResponseAnimeOngoing {
  const factory ResponseAnimeOngoing({
    int? code,
    Data? data,
  }) = _ResponseAnimeOngoing;

  factory ResponseAnimeOngoing.fromJson(Map<String, Object?> json) =>
      _$ResponseAnimeOngoingFromJson(json);
}

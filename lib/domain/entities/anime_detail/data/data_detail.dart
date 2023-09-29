import 'package:anime_ku/domain/entities/anime_detail/episode.dart/episode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'data_detail.freezed.dart';
part 'data_detail.g.dart';

@freezed
class DataDetail with _$DataDetail {
  const factory DataDetail({
     String? id,
     String? title,
     String? thumbnail,
     String? japaneseTitle,
     String? score,
     String? producer,
     String? type,
     String? status,
     String? duration,
     String? releaseDate,
     String? studio,
     String? genre,
     String? synopsis,
     List<Episode>? episode,
  }) = _DataDetail;

  factory DataDetail.fromJson(Map<String, Object?> json) =>
      _$DataDetailFromJson(json);
}

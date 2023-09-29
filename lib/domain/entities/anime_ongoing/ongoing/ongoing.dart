import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'ongoing.freezed.dart';
part 'ongoing.g.dart';

@freezed
class Ongoing with _$Ongoing {
  const factory Ongoing({
    String? id,
    String? title,
    String? thumbnail,
    String? url,
    String? episode,
  }) = _Ongoing;

  factory Ongoing.fromJson(Map<String, Object?> json) =>
      _$OngoingFromJson(json);
}

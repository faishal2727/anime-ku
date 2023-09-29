import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'data_search.freezed.dart';
part 'data_search.g.dart';

@freezed
class DataSearch with _$DataSearch {
  const factory DataSearch({
    String? id,
    String? title,
    String? thumbnail,
    String? url,
  }) = _DataSearch;

  factory DataSearch.fromJson(Map<String, Object?> json) => _$DataSearchFromJson(json);
}

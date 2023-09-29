
import 'package:anime_ku/domain/entities/search/search_data/data_search.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'search_response.freezed.dart';
part 'search_response.g.dart';

@freezed
class ResponseSearch with _$ResponseSearch {
  const factory ResponseSearch({
    int? code,
    List<DataSearch>? data,
  }) = _ResponseSearch;

  factory ResponseSearch.fromJson(Map<String, Object?> json) =>
      _$ResponseSearchFromJson(json);
}

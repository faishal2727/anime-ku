import 'package:anime_ku/domain/entities/anime_by_genre/response/response_by_genere.dart';
import 'package:anime_ku/domain/entities/anime_detail/response/response_detail_anime.dart';
import 'package:anime_ku/domain/entities/anime_ongoing/response/response_anime_ongoing.dart';
import 'package:anime_ku/domain/entities/genre/response_genre.dart';
import 'package:anime_ku/domain/entities/search/response_search/search_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class AnimeRemoteDataSource {
  Future<ResponseAnimeOngoing> getOngoing();
  Future<ResponseDetailAnime> getDetailAnime(String id);
  Future<ResponseSearch> getAnimeSearch(String query);
  Future<ResponseGenre> getGenre();
  Future<ResponseByGenere> getAnimeByGenre(String byGenre);

}

class AnimeRemoteDataSourceImpl implements AnimeRemoteDataSource {
  static const String _baseUrl =
      'https://otakudesu-api-soqdlzbrnq-as.a.run.app/';
  static const String _endPointHome = 'api/home';
  static const String _endPointDetail = 'api/anime/';
  static const String _endPointGenres = 'api/genres';
  final Dio dio;

  AnimeRemoteDataSourceImpl({required this.dio});

  @override
  Future<ResponseAnimeOngoing> getOngoing() async {
    try {
      final response = await dio.get("$_baseUrl$_endPointHome");
      debugPrint("kenapa ${response.statusCode}");
      debugPrint("list 2 ${response.data}");
      if (response.statusCode == 200) {
        return ResponseAnimeOngoing.fromJson(response.data);
      } else {
        throw Exception("Faied to load Ongoing");
      }
    } catch (e) {
      throw Exception('Failed to load ongoing 2');
    }
  }


  @override
  Future<ResponseDetailAnime> getDetailAnime(String id) async {
    try {
      final response = await dio.get("$_baseUrl$_endPointDetail$id");
      debugPrint("cobaa ${response.statusCode}");
      debugPrint("cobaa2 ${response.data}");
      if (response.statusCode == 200) {
        return ResponseDetailAnime.fromJson(response.data);
      } else {
        throw Exception("Failed to load deteil anime");
      }
    } catch (e) {
      debugPrint("apa nih erronya $e");
      throw Exception("Failed to load detail anime 2");
    }
  }

  @override
  Future<ResponseSearch> getAnimeSearch(String query) async {
    try {
      final response = await dio.get("${_baseUrl}api/search?s=$query");
      if (response.statusCode == 200) {
        return ResponseSearch.fromJson(response.data);
      } else {
        throw Exception("Failed to get data search");
      }
    } catch (e) {
      throw Exception("Failed to get data search 2");
    }
  }

  @override
  Future<ResponseGenre> getGenre() async {
    try {
      final response = await dio.get("${_baseUrl}api/genres");
      debugPrint("genre ${response.data}");
      debugPrint("genre 2 ${response.statusCode}");
      if (response.statusCode == 200) {
        return ResponseGenre.fromJson(response.data);
      } else {
        throw Exception("Failed to get genre");
      }
    } catch (e) {
      throw Exception("Failed to load get genre 2");
    }
  }

  @override
  Future<ResponseByGenere> getAnimeByGenre(String byGenre) async {
    try {
      final response = await dio.get("${_baseUrl}api/anime/genre/$byGenre");
      debugPrint("adung ${response.statusCode}");
      debugPrint("adung 2 ${response.data}");
      if (response.statusCode == 200) {
        return ResponseByGenere.fromJson(response.data);
      } else {
        throw Exception("Failed to load by genre");
      }
    } catch (e) {
      throw Exception("Failed to load by genre 2");
    }
  }
}

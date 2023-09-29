import 'package:anime_ku/domain/entities/anime_detail/response/response_detail_anime.dart';
import 'package:anime_ku/domain/entities/anime_ongoing/response/response_anime_ongoing.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class AnimeRemoteDataSource {
  Future<ResponseAnimeOngoing> getOngoing();
  Future<ResponseDetailAnime> getDetailAnime(String id);
}

class AnimeRemoteDataSourceImpl implements AnimeRemoteDataSource {
  static const String _baseUrl =
      'https://otakudesu-api-soqdlzbrnq-as.a.run.app/';
  static const String _endPointOnGoing = 'api/home';
  static const String _endPointDetail = 'api/anime/';
  final Dio dio;

  AnimeRemoteDataSourceImpl({required this.dio});

  @override
  Future<ResponseAnimeOngoing> getOngoing() async {
    try {
      final response = await dio.get("$_baseUrl$_endPointOnGoing");
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
      print("apa nih erronya $e");
      throw Exception("Failed to load detail anime 2");
    }
  }
}

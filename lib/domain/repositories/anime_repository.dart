import 'package:anime_ku/common/failure.dart';
import 'package:anime_ku/domain/entities/anime_detail/response/response_detail_anime.dart';
import 'package:anime_ku/domain/entities/anime_ongoing/response/response_anime_ongoing.dart';
import 'package:anime_ku/domain/entities/search/response_search/search_response.dart';
import 'package:dartz/dartz.dart';

abstract class AnimeRepository{
  Future<Either<Failure, ResponseAnimeOngoing>> getOngoing();
  Future<Either<Failure, ResponseDetailAnime>> getDetailAnime(String id);
  Future<Either<Failure, ResponseSearch>> getAnimeSearch(String query);
}
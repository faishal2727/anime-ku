import 'package:anime_ku/common/failure.dart';
import 'package:anime_ku/domain/entities/anime_by_genre/response/response_by_genere.dart';
import 'package:anime_ku/domain/entities/anime_detail/response/response_detail_anime.dart';
import 'package:anime_ku/domain/entities/anime_ongoing/response/response_anime_ongoing.dart';
import 'package:anime_ku/domain/entities/genre/response_genre.dart';
import 'package:anime_ku/domain/entities/search/response_search/search_response.dart';
import 'package:dartz/dartz.dart';

abstract class AnimeRepository{
  Future<Either<Failure, ResponseAnimeOngoing>> getOngoing();
  Future<Either<Failure, ResponseDetailAnime>> getDetailAnime(String id);
  Future<Either<Failure, ResponseSearch>> getAnimeSearch(String query);
  Future<Either<Failure, ResponseGenre>> getGenre();
  Future<Either<Failure, ResponseByGenere>> getAnimeByGenere(String byGenre);
  Future<Either<Failure, ResponseAnimeOngoing>> getListAnime();
}
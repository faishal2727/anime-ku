import 'package:anime_ku/common/failure.dart';
import 'package:anime_ku/domain/entities/search/response_search/search_response.dart';
import 'package:anime_ku/domain/repositories/anime_repository.dart';
import 'package:dartz/dartz.dart';

class GetSearchAnime {
  final AnimeRepository repository;

  GetSearchAnime(this.repository);

  Future<Either<Failure, ResponseSearch>> execute(String query) {
    return repository.getAnimeSearch(query);
  }
}

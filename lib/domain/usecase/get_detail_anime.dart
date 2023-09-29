import 'package:anime_ku/common/failure.dart';
import 'package:anime_ku/domain/entities/anime_detail/response/response_detail_anime.dart';
import 'package:anime_ku/domain/repositories/anime_repository.dart';
import 'package:dartz/dartz.dart';

class GetDetailAnimes {
  final AnimeRepository repository;
  GetDetailAnimes(this.repository);

  Future<Either<Failure, ResponseDetailAnime>> execute(String animeId) {
    return repository.getDetailAnime(animeId);
  }
}

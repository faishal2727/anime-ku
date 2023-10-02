import 'package:anime_ku/domain/entities/anime_by_genre/response/response_by_genere.dart';
import 'package:anime_ku/domain/repositories/anime_repository.dart';
import 'package:dartz/dartz.dart';

import '../../common/failure.dart';

class GetAnimeByGenre {
  final AnimeRepository repository;

  GetAnimeByGenre(this.repository);

  Future<Either<Failure, ResponseByGenere>> execute(String byGenre) {
    return repository.getAnimeByGenere(byGenre);
  }
}

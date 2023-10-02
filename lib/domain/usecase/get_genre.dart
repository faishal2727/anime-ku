import 'package:anime_ku/common/failure.dart';
import 'package:anime_ku/domain/entities/genre/response_genre.dart';
import 'package:anime_ku/domain/repositories/anime_repository.dart';
import 'package:dartz/dartz.dart';

class GetGenre {
  final AnimeRepository repository;

  GetGenre(this.repository);

  Future<Either<Failure, ResponseGenre>> execute(){
    return repository.getGenre();
  }
}
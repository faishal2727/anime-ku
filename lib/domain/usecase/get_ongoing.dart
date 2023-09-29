import 'package:anime_ku/common/failure.dart';
import 'package:anime_ku/domain/entities/anime_ongoing/response/response_anime_ongoing.dart';
import 'package:anime_ku/domain/repositories/anime_repository.dart';
import 'package:dartz/dartz.dart';

class GetOnGoing {
  final AnimeRepository repository;

  GetOnGoing(this.repository);

  Future<Either<Failure, ResponseAnimeOngoing>> execute(){
    return repository.getOngoing();
  }
}




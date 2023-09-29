import 'dart:io';

import 'package:anime_ku/common/exception.dart';
import 'package:anime_ku/common/failure.dart';
import 'package:anime_ku/data/datasources/remote/anime_remote_data_source.dart';
import 'package:anime_ku/domain/entities/anime_detail/response/response_detail_anime.dart';
import 'package:anime_ku/domain/entities/anime_ongoing/response/response_anime_ongoing.dart';
import 'package:anime_ku/domain/repositories/anime_repository.dart';
import 'package:dartz/dartz.dart';

class AnimeRepositoryImpl implements AnimeRepository {
  final AnimeRemoteDataSource remoteDataSource;
  AnimeRepositoryImpl({required this.remoteDataSource});
  @override
  Future<Either<Failure, ResponseAnimeOngoing>> getOngoing() async {
    try {
      final result = await remoteDataSource.getOngoing();
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed ro connect'));
    }
  }

  @override
  Future<Either<Failure, ResponseDetailAnime>> getDetailAnime(String id) async {
    try {
      final result = await remoteDataSource.getDetailAnime(id);
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed ro connect'));
    }
  }
}

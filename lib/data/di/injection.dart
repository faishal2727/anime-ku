import 'package:anime_ku/data/datasources/remote/anime_remote_data_source.dart';
import 'package:anime_ku/data/repositories/anime_repository_impl.dart';
import 'package:anime_ku/domain/repositories/anime_repository.dart';
import 'package:anime_ku/domain/usecase/get_detail_anime.dart';
import 'package:anime_ku/domain/usecase/get_ongoing.dart';
import 'package:anime_ku/presentation/detail/bloc/detail_anime_bloc.dart';
import 'package:anime_ku/presentation/home/bloc/home_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void init() {
  // Bloc
  locator.registerFactory(() => HomeBloc(locator()));
  locator.registerFactory(() => DetailAnimeBloc(locator()));

  // Use Case
  locator.registerLazySingleton(() => GetOnGoing(locator()));
  locator.registerLazySingleton(() => GetDetailAnimes(locator()));

  // Repository
  locator.registerLazySingleton<AnimeRepository>(
      () => AnimeRepositoryImpl(remoteDataSource: locator()));

  // Data Source
  locator.registerLazySingleton<AnimeRemoteDataSource>(
      () => AnimeRemoteDataSourceImpl(dio: locator()));

  // Dio
  locator.registerLazySingleton(() => Dio());
  
}

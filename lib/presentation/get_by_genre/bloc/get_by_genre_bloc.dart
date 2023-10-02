import 'package:anime_ku/domain/entities/anime_by_genre/response/response_by_genere.dart';
import 'package:anime_ku/domain/usecase/get_anime_by_genre.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_by_genre_event.dart';
part 'get_by_genre_state.dart';
part 'get_by_genre_bloc.freezed.dart';

class GetByGenreBloc extends Bloc<GetByGenreEvent, GetByGenreState> {
  final GetAnimeByGenre getAnimeByGenre;
  GetByGenreBloc(this.getAnimeByGenre) : super(const Initial()) {
    on<LoadMore>(_onLoadMore);
  }

  Future<void> _onLoadMore(
      LoadMore event, Emitter<GetByGenreState> emit) async {
    emit(const GetByGenreState.loading());
    try {
      final data = await getAnimeByGenre.execute(event.byGenre);
      emit(data.fold((l) => Error(l.message), (r) => Loaded(r)));
    } catch (e) {
      debugPrint("apa yah $e");
      emit(const GetByGenreState.error("error get by genre"));
    }
  }
}

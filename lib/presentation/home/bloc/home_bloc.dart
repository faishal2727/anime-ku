import 'package:anime_ku/domain/entities/anime_ongoing/response/response_anime_ongoing.dart';

import 'package:anime_ku/domain/usecase/get_ongoing.dart';
import 'package:anime_ku/domain/usecase/get_genre.dart' as t;
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/genre/response_genre.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetOnGoing getOnGoing;
  final t.GetGenre getGenre;

  HomeBloc(this.getOnGoing, this.getGenre) : super(const Initial()) {
    on<_LoadMore>(_onLoadMore);
    on<_LoadGenre>(_onGetGenre);
  }
  Future<void> _onLoadMore(_LoadMore evet, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    try {
      final data = await getOnGoing.execute();
      debugPrint("KONCI $data");
      emit(data.fold((l) => Error(l.message), (r) => Loaded(r)));
    } catch (e) {
      emit(const HomeState.error("Failed to load on Going"));
    }
  }

  Future<void> _onGetGenre(_LoadGenre event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    try {
      final data = await getGenre.execute();
      emit(data.fold((l) => Error(l.message), (r) => GetGenre(r)));
    } catch (e) {
      debugPrint("eyyoy $e");
      emit(const HomeState.error("Failed to load genre"));
    }
  }
}

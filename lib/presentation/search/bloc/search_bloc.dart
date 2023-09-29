import 'package:anime_ku/domain/entities/search/response_search/search_response.dart';
import 'package:anime_ku/domain/usecase/get_search_anime.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final GetSearchAnime getSearchAnime;

  SearchBloc(this.getSearchAnime) : super(const Initial()) {
    on<Query>(_onQuery);
  }

  Future<void> _onQuery(Query event, Emitter<SearchState> emit) async {
    emit(const SearchState.loading());
    try {
      final data = await getSearchAnime.execute(event.query);
      emit(data.fold((e) => error(e.message), (data) => Loaded(data)));
    } catch (e) {
      emit(const SearchState.error("Ada yang error nih"));
    }
  }
}

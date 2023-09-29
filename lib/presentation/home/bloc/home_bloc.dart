import 'package:anime_ku/domain/entities/anime_ongoing/response/response_anime_ongoing.dart';
import 'package:anime_ku/domain/usecase/get_ongoing.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetOnGoing getOnGoing;

  HomeBloc(this.getOnGoing) : super(const Initial()) {
    on<_LoadMore>(_onLoadMore);
  }
  Future<void> _onLoadMore(_LoadMore evet, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    try {
      final data = await getOnGoing.execute();
        print("KONCI $data");
      emit(data.fold((l) => Error(l.message), (r) => Loaded(r)));
    } catch (e) {
      emit(const HomeState.error("Failed to load on Going"));
    }
  }
}

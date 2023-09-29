import 'package:anime_ku/domain/entities/anime_detail/response/response_detail_anime.dart';
import 'package:anime_ku/domain/usecase/get_detail_anime.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_anime_event.dart';
part 'detail_anime_state.dart';
part 'detail_anime_bloc.freezed.dart';

class DetailAnimeBloc extends Bloc<DetailAnimeEvent, DetailAnimeState> {
  final GetDetailAnimes getDetailAnime;

  DetailAnimeBloc(this.getDetailAnime) : super(const _Initial()) {
    on<GetDetail>(_onGetDetailAnims);
  }

  Future<void> _onGetDetailAnims(
      GetDetail event, Emitter<DetailAnimeState> emit) async {
    emit(const DetailAnimeState.loading());
    try {
      final data = await getDetailAnime.execute(event.animeId);
      print("KON $data");

      emit(data.fold((l) => Error(l.message), (data) => Loaded(data)));
    } catch (e) {
      print("Pesan Pengecualian: ${e.toString()}");
      emit(const DetailAnimeState.error("gagal nih"));
    }
  }
}

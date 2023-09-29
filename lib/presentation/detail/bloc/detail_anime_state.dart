part of 'detail_anime_bloc.dart';

@freezed
class DetailAnimeState with _$DetailAnimeState {
  const factory DetailAnimeState.initial() = _Initial;
  const factory DetailAnimeState.loading() = Loading;
  const factory DetailAnimeState.loaded(ResponseDetailAnime anime) = Loaded;
  const factory  DetailAnimeState.error(String message) = Error;
}

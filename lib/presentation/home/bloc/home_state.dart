part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.loaded(ResponseAnimeOngoing anime) = Loaded;
  const factory HomeState.getGenre(ResponseGenre genre) = GetGenre;
  const factory HomeState.error(String message) = Error;
}

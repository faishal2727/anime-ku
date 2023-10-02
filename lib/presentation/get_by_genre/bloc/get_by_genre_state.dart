part of 'get_by_genre_bloc.dart';

@freezed
class GetByGenreState with _$GetByGenreState {
  const factory GetByGenreState.initial() = Initial;
  const factory GetByGenreState.loading() = Loading;
  const factory GetByGenreState.loaded(ResponseByGenere byGenre) = Loaded;
  const factory GetByGenreState.error(String message) = Error;
}

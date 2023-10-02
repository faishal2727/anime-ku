part of 'get_by_genre_bloc.dart';

@freezed
class GetByGenreEvent with _$GetByGenreEvent {
  const factory GetByGenreEvent.loadMore(String byGenre) = LoadMore;
}
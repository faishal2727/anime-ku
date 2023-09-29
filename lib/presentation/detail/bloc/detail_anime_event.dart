part of 'detail_anime_bloc.dart';

@freezed
class DetailAnimeEvent with _$DetailAnimeEvent {
  const factory DetailAnimeEvent.getDetail(String animeId) = GetDetail;
}
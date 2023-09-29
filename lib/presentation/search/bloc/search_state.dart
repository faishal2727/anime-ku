part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = Initial;
  const factory SearchState.loading() = Loading;
  const factory SearchState.loaded(ResponseSearch searchData) = Loaded;
  const factory SearchState.error(String message) = error;
}

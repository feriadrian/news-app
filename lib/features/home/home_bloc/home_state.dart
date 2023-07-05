part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitialState;
  const factory HomeState.loading() = HomeLoadingState;
  const factory HomeState.error(String error) = HomeErrorState;
  const factory HomeState.loaded(List<NewsModel> listnews) = HomeLoadedState;
}

part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.onGetDataFromServer(
      {required String seacrh, required String sortBy}) = OnGetDataFromServer;
}

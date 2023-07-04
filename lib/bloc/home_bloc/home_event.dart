part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.onGetDataFromServer(String seacrh) =
      OnGetDataFromServer;
}

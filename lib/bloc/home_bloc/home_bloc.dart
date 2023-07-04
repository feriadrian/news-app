import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/data/remote_data_source.dart';

import '../../data/models/news/news_model.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    on<OnGetDataFromServer>(_onGetDataFromServer);
  }

  Future<void> _onGetDataFromServer(
      OnGetDataFromServer event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    try {
      final seacrh = event.seacrh;
      var result =
          await RemoteDataSource().getNewsFromServer(search: seacrh, page: 1);
      emit(HomeState.loaded(result!));
    } catch (e) {
      emit(HomeState.error(e.toString()));
    }
  }
}

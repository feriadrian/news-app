import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/core/error/failures.dart';
import 'package:news_app/data/datasources/news_remote_data_source.dart';
import 'package:news_app/domain/usecase/news_usacese/get_news.dart';

import '../../../data/models/news/news_model.dart';
import '../../../domain/repository/news_repository/news_repository.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetNews getNews;
  HomeBloc({required this.getNews}) : super(const HomeState.initial()) {
    on<OnGetDataFromServer>(_onGetDataFromServer);
  }

  Future<void> _onGetDataFromServer(
      OnGetDataFromServer event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());

    final seacrh = event.seacrh;
    var result = await GetNews(newsRepository: getNews.newsRepository)
        .getNews(Params(1, seacrh));
    result.fold((failure) => emit(HomeState.error(failure.message)),
        (listNews) => emit(HomeState.loaded(listNews)));
  }
}

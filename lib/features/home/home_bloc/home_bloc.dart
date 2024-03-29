import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/domain/usecase/news_usacese/get_news.dart';

import '../../../data/models/news/news_model.dart';
import '../../../domain/usecase/news_usacese/news_params.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final NewsUsecase getNews;
  HomeBloc({required this.getNews}) : super(const HomeState.initial()) {
    on<OnGetDataFromServer>(_onGetDataFromServer);
  }

  Future<void> _onGetDataFromServer(
      OnGetDataFromServer event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());
    final seacrh = event.seacrh;
    const int page = 1;
    final sortBy = event.sortBy;
    NewsParams params = NewsParams(page, seacrh, sortBy);
    var result = await NewsUsecase(newsRepository: getNews.newsRepository)
        .getNews(params);
    result.fold((failure) => emit(HomeState.error(failure.message)),
        (listNews) => emit(HomeState.loaded(listNews)));
  }
}

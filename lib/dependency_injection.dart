import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/core/platfrom/network_info.dart';
import 'package:news_app/data/datasources/news_remote_data_source.dart';
import 'package:news_app/data/repository/news_repository.dart';
import 'package:news_app/domain/usecase/news_usacese/get_news.dart';
import 'package:news_app/features/home/home_bloc/home_bloc.dart';

import 'domain/repository/news_repository/news_repository.dart';

final serviceLocator = GetIt.instance;
Future<void> setup() async {
  await initNews();
  serviceLocator.registerFactory(() => Connectivity());
  serviceLocator
      .registerFactory<NetworkInfo>(() => NetworkInfoImpl(serviceLocator()));
}

Future<void> initNews() async {
  serviceLocator
      .registerFactory<HomeBloc>(() => HomeBloc(getNews: serviceLocator()));
  serviceLocator.registerLazySingleton<NewsUsecase>(
      () => NewsUsecase(newsRepository: serviceLocator()));
  serviceLocator.registerLazySingleton<NewsRemoteDataSource>(
      () => NewsRemoteDataSourceImpl());
  serviceLocator.registerLazySingleton<NewsRepository>(() => NewsRepositoryImpl(
      newsRemoteDataSource: serviceLocator(), newworkInfo: serviceLocator()));
}

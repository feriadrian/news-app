import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/core/platfrom/network_info.dart';
import 'package:news_app/data/datasources/news_remote_data_source.dart';
import 'package:news_app/data/repository/news_repository.dart';
import 'package:news_app/domain/usecase/news_usacese/get_news.dart';
import 'package:news_app/features/home/home_bloc/home_bloc.dart';

import 'domain/repository/news_repository/news_repository.dart';

final sl = GetIt.instance;
Future<void> setup() async {
  await initNews();
}

Future<void> initNews() async {
  sl.registerFactory(() => Connectivity());
  sl.registerFactory<HomeBloc>(() => HomeBloc(getNews: sl()));
  sl.registerLazySingleton<GetNews>(() => GetNews(newsRepository: sl()));
  sl.registerLazySingleton<NewsRemoteDataSource>(
      () => NewsRemoteDataSourceImpl());
  sl.registerLazySingleton<NewsRepository>(
      () => NewsRepositoryImpl(newsRemoteDataSource: sl(), newworkInfo: sl()));
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
}

import 'package:dartz/dartz.dart';
import 'package:news_app/core/error/exception.dart';

import 'package:news_app/core/error/failures.dart';
import 'package:news_app/core/platfrom/network_info.dart';

import 'package:news_app/data/models/news/news_model.dart';
import 'package:news_app/domain/usecase/news_usacese/news_params.dart';

import '../../domain/repository/news_repository/news_repository.dart';
import '../datasources/news_remote_data_source.dart';

class NewsRepositoryImpl extends NewsRepository {
  final NewsRemoteDataSource newsRemoteDataSource;
  final NetworkInfo newworkInfo;

  NewsRepositoryImpl(
      {required this.newsRemoteDataSource, required this.newworkInfo});
  @override
  Future<Either<Failure, List<NewsModel>>> getNews(
      {required NewsParams params}) async {
    if (await newworkInfo.isConnected) {
      try {
        final remoteNews = await newsRemoteDataSource.getNews(params: params);
        return remoteNews;
      } on ServerException {
        return const Left(ServerFailure('terjadi Kesalahan pada server'));
      }
    }
    return const Left(ConnectionFailure('Mohon Periksa Jaringan Anda'));
  }
}

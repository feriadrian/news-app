import 'package:dartz/dartz.dart';
import 'package:news_app/core/error/failures.dart';
import 'package:news_app/core/usecase/usecase.dart';

import '../../../data/models/news/news_model.dart';
import '../../repository/news_repository/news_repository.dart';
import 'news_params.dart';

class NewsUsecase implements UseCase<List<NewsModel>, NewsParams> {
  final NewsRepository newsRepository;
  NewsUsecase({required this.newsRepository});

  @override
  Future<Either<Failure, List<NewsModel>>> getNews(NewsParams params) async {
    return await newsRepository.getNews(params: params);
  }
}

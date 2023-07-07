import 'package:dartz/dartz.dart';
import 'package:news_app/core/error/failures.dart';

import '../../../data/models/news/news_model.dart';
import '../../usecase/news_usacese/news_params.dart';

abstract class NewsRepository {
  Future<Either<Failure, List<NewsModel>>> getNews(
      {required NewsParams params});
}

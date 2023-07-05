import 'package:dartz/dartz.dart';
import 'package:news_app/core/error/failures.dart';

import '../../../data/models/news/news_model.dart';

abstract class NewsRepository {
  Future<Either<Failure, List<NewsModel>>> getNews(
      {required String search, required int page});
}

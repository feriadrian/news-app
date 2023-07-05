import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app/core/error/failures.dart';
import 'package:news_app/core/usecase/usecase.dart';

import '../../../data/models/news/news_model.dart';
import '../../repository/news_repository/news_repository.dart';

class GetNews implements UseCase<List<NewsModel>, Params> {
  final NewsRepository newsRepository;
  GetNews({required this.newsRepository});

  @override
  Future<Either<Failure, List<NewsModel>>> getNews(Params params) async {
    return await newsRepository.getNews(
        search: params.search, page: params.page);
  }
}

class Params extends Equatable {
  final int page;
  final String search;

  const Params(this.page, this.search);

  @override
  List<Object?> get props => [page, search];
}

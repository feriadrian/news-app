import 'package:dartz/dartz.dart';
import 'package:news_app/core/error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> getNews(Params params);
}

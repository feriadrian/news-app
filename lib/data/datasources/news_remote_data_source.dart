import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_app/core/error/failures.dart';
import 'package:news_app/data/endpoint.dart';
import 'package:news_app/data/rest_api.dart';
import 'package:news_app/domain/usecase/news_usacese/news_params.dart';

import '../models/news/news_model.dart';

abstract class NewsRemoteDataSource {
  Future<Either<Failure, List<NewsModel>>> getNews(
      {required NewsParams params});
}

class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  @override
  Future<Either<Failure, List<NewsModel>>> getNews(
      {required NewsParams params}) async {
    try {
      final Request request = Request();
      var getParams = {
        'q': params.search,
        'apiKey': '1592b2e05d3a49cba578eee037c8b1fa',
        'page': params.page,
        'pageSize': 10,
        'sortBy': params.sortBy
      };

      final response =
          await request.get(topHeadline, queryParameters: getParams);
      if (response.statusCode == 200) {
        List<NewsModel> newsModels = [];
        final listNewsMap = response.data['articles'] ?? [];
        for (var data in listNewsMap) {
          newsModels.add(NewsModel.fromJson(data));
        }
        return Right(newsModels);
      }
      return const Left(ConnectionFailure('Mohon Periksa Jaringan Anda'));
    } on DioException {
      return const Left(ParsingFailure('Kesalahan dalam parsing data'));
    } catch (e) {
      rethrow;
    }
  }
}

// class RemoteDataSource {
//   Future<List<NewsModel>?> getNewsFromServer(
//       {required String search, required int page}) async {
//     try {
//       final Request request = Request();
//       var params = {
//         'q': search,
//         'apiKey': '1592b2e05d3a49cba578eee037c8b1fa',
//         'page': 1,
//         'pageSize': 10,
//       };
//       final response = await request.get(topHeadline, queryParameters: params);
//       if (response.statusCode == 200) {
//         List<NewsModel> newsModels = [];
//         final listNewsMap = response.data['articles'] ?? [];
//         for (var data in listNewsMap) {
//           newsModels.add(NewsModel.fromJson(data));
//         }
//         return newsModels;
//       }
//       if (response.data['error']) {
//         return (response.data['message']);
//       }
//     } on DioException catch (e) {
//       print(e);
//       rethrow;
//     }
//     return null;
//   }
// }

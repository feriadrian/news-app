import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/data/endpoint.dart';
import 'package:news_app/data/rest_api.dart';

import 'models/news/news_model.dart';

class RemoteDataSource {
  Future<List<NewsModel>?> getNewsFromServer(
      {required String search, required int page}) async {
    try {
      final Request request = Request();
      var params = {
        'q': search,
        'apiKey': '1592b2e05d3a49cba578eee037c8b1fa',
        'page': 1,
        'pageSize': 10,
      };
      final response = await request.get(topHeadline, queryParameters: params);
      if (response.statusCode == 200) {
        List<NewsModel> newsModels = [];
        final listNewsMap = response.data['articles'] ?? [];
        for (var data in listNewsMap) {
          newsModels.add(NewsModel.fromJson(data));
        }
        return newsModels;
      }
      if (response.data['error']) {
        return (response.data['message']);
      }
    } on DioException catch (e) {
      print(e);
      rethrow;
    }
    return null;
  }
}

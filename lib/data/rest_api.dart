import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:news_app/data/endpoint.dart';

class Request {
  final Dio _dio = Dio();

  Request() {
    updateDioInterceptors();
  }

  /// Fungsi ini digunakan untuk memperbarui header authorization
  // void updateAuthorization(String token) {
  //   _dio.options.headers['authorization'] = 'Bearer $token';
  // }

  /// Fungsi ini digunakan untuk memperbarui konfigurasi dio interceptors
  void updateDioInterceptors() {
    _dio.options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      validateStatus: (value) {
        return value! <= 500;
      },
      connectTimeout: const Duration(seconds: 60), // 30 seconds
      receiveTimeout: const Duration(seconds: 60), // 30 seconds
      headers: {
        'Accept': 'application/json',
        // 'X-API-Key': '1592b2e05d3a49cba578eee037c8b1fa',
      },
    );
    _dio
      ..interceptors.add(
        LogInterceptor(
          requestBody: kDebugMode ? true : false,
          responseBody: kDebugMode ? true : false,
          requestHeader: kDebugMode ? true : false,
        ),
      )
      ..interceptors.add(
        InterceptorsWrapper(
          onError: (DioException e, handler) {
            print(e.response);
            // if (e.response?.statusCode == 401) {
            //   print('UNAUTHORIZED ========');
            // }
            // return handler.next(e);
          },
          onResponse: (e, handler) {
            // if (e.statusCode == 401) {
            //   _handleUnauthorized();
            // }
            return handler.next(e);
          },
        ),
      );
  }

  /// Fungsi ini digunakan untuk melakukan GET request
  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    return await _dio.get(path, queryParameters: queryParameters);
  }
}

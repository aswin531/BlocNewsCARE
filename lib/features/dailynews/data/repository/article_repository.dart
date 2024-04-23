// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:newsapp/core/constants/constants.dart';
import 'package:newsapp/core/resources/data_state.dart';
import 'package:newsapp/features/dailynews/data/datasources/remote/news_api_service.dart';
import 'package:newsapp/features/dailynews/data/models/article.dart';
import 'package:newsapp/features/dailynews/domain/repository/article_repository.dart';

class ArticleRepositoryImp implements ArticleRepository {
  final NewsApiService _newsApiService;

  ArticleRepositoryImp(this._newsApiService);
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() async {
    try {
      // ignore: non_constant_identifier_names
      final HttpResponse = await _newsApiService.getNewsArticles(
        apiKey: newsApiKey,
        country: countryQuery,
        category: categoryQuery,
      );

      if (HttpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(HttpResponse.data);
      } else {
        return DataFailed(DioError(
            error: HttpResponse.response.statusMessage,
            response: HttpResponse.response,
            type: DioErrorType.badResponse,
            requestOptions: HttpResponse.response.requestOptions));
      }
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }
}

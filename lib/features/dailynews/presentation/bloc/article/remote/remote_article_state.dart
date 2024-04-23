// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:newsapp/features/dailynews/domain/entities/article.dart';

abstract class RemoteArticleState extends Equatable {
  final List<ArticleEntity>? articles;
  final DioError? error;

  const RemoteArticleState({this.articles, this.error});
  @override
  List<Object> get props => [articles!, error!];
}

class RemoteArticlesLoading extends RemoteArticleState {
  const RemoteArticlesLoading();
}

class RemoteArticlesLoaded extends RemoteArticleState {
  const RemoteArticlesLoaded(List<ArticleEntity> article) : super(articles: article);
}

class RemoteArticlesError extends RemoteArticleState {
  const RemoteArticlesError(DioError error) : super(error: error);
}
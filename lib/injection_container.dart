import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:newsapp/features/dailynews/data/datasources/remote/news_api_service.dart';
import 'package:newsapp/features/dailynews/data/repository/article_repository.dart';
import 'package:newsapp/features/dailynews/domain/usecases/get_article.dart';
import 'package:newsapp/features/dailynews/presentation/bloc/article/remote/remote_article_bloc.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //Dio Request
  sl.registerSingleton<Dio>(Dio());
  //registering API SERVICE
  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));
  //registering REPOSITORY
  sl.registerSingleton<ArticleRepositoryImp>(ArticleRepositoryImp(sl()));
  //registering USECASE
  sl.registerSingleton<GetArticleUseCase>(GetArticleUseCase(sl()));
  //registering BLoC
  sl.registerFactory<RemoteArticleBloc>(() => RemoteArticleBloc(sl()));
}

import 'package:newsapp/core/resources/data_state.dart';
import 'package:newsapp/core/usecases/usecase.dart';
import 'package:newsapp/features/dailynews/domain/entities/article.dart';
import 'package:newsapp/features/dailynews/domain/repository/article_repository.dart';

class GetArticleUseCase
    implements UseCase<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;

  GetArticleUseCase(this._articleRepository);
  @override
  Future<DataState<List<ArticleEntity>>> call({params}) {
    return _articleRepository.getNewsArticles();
  }
}

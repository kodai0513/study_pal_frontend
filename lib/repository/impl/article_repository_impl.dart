import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

import '../../core/exception/repository/repository_exception.dart';
import '../../core/mold/common/result.dart';
import '../../provider/dio_provider.dart';
import '../common/response_handler.dart';
import '../interface/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  const ArticleRepositoryImpl(this.ref);

  final Ref ref;

  @override
  Future<Result<ArticleResp, RepositoryException>> create(
      {required CreateArticleReq createArticleReq}) async {
    final DefaultApi api =
        DefaultApi(ref.read(dioProvider), standardSerializers);
    return responseHandler(
        () => api.createApiV1ArticlesPost(createArticleReq: createArticleReq));
  }
}

final Provider<ArticleRepositoryImpl> articleRepositoryProvider =
    Provider<ArticleRepositoryImpl>((Ref ref) {
  return ArticleRepositoryImpl(ref);
});

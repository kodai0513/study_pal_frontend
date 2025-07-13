import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';
import 'package:study_pal_frontend/core/exception/repository/repository_exception.dart';
import 'package:study_pal_frontend/core/mold/common/result.dart';
import 'package:study_pal_frontend/repository/common/response_handler.dart';
import 'package:study_pal_frontend/provider/dio_provider.dart';
import 'package:study_pal_frontend/repository/interface/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  const ArticleRepositoryImpl(this.ref);

  final Ref ref;

  @override
  Future<Result<ArticleResp, RepositoryException>> create({
    required CreateArticleReq createArticleReq
  }) async {
    final api = DefaultApi(ref.read(dioProvider), standardSerializers);
    return await responseHandler(() => api.createApiV1ArticlesPost(
      createArticleReq: createArticleReq
    ));
  }
}

final articleRepositoryProvider = Provider((ref) {
  return ArticleRepositoryImpl(ref);
});
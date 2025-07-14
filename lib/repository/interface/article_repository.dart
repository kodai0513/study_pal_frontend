import 'package:openapi/openapi.dart';
import '../../core/exception/repository/repository_exception.dart';
import '../../core/mold/common/result.dart';

abstract class ArticleRepository {
  Future<Result<ArticleResp, RepositoryException>> create(
      {required CreateArticleReq createArticleReq});
}

import 'package:openapi/openapi.dart';
import 'package:study_pal_frontend/core/exception/repository/repository_exception.dart';
import 'package:study_pal_frontend/core/mold/common/result.dart';

abstract class WorkbookRepository {
  Future<Result<WorkbookListViewResp, RepositoryException>> getWorkbooks({
    required String keyword,
    required int pageSize,
    String? nextPageToken,
  });
}
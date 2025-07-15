import 'package:openapi/openapi.dart';
import '../../core/exception/repository/repository_exception.dart';
import '../../core/mold/common/result.dart';

abstract class WorkbookRepository {
  Future<Result<WorkbookListViewResp, RepositoryException>>
      getWorkbookByKeyword({
    required String keyword,
    required int pageSize,
    String? nextPageToken,
  });

  Future<Result<WorkbookListViewResp, RepositoryException>> getWorkbookForMe({
    required int pageSize,
    String? nextPageToken,
  });
}

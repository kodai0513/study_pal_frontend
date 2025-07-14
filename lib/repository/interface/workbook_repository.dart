import 'package:openapi/openapi.dart';
import '../../core/exception/repository/repository_exception.dart';
import '../../core/mold/common/result.dart';

abstract class WorkbookRepository {
  Future<Result<WorkbookListViewResp, RepositoryException>> getWorkbooks({
    required String keyword,
    required int pageSize,
    String? nextPageToken,
  });
}

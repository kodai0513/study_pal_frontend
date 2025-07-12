import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';
import 'package:study_pal_frontend/core/exception/repository/repository_exception.dart';
import 'package:study_pal_frontend/core/mold/common/result.dart';
import 'package:study_pal_frontend/repository/common/response_handler.dart';
import 'package:study_pal_frontend/provider/dio_provider.dart';
import 'package:study_pal_frontend/repository/interface/workbook_repository.dart';

class WorkbookRepositoryImpl implements WorkbookRepository {
  const WorkbookRepositoryImpl(this.ref);

  final Ref ref;

  @override
  Future<Result<WorkbookListViewResp, RepositoryException>> getWorkbooks({
    required String keyword,
    required int pageSize,
    String? nextPageToken,
    String? prevPageToken,
  }) async {
    final api = DefaultApi(ref.read(dioProvider), standardSerializers);
    return await responseHandler(() => api.searchApiV1WorkbooksGet(
      keyword: keyword,
      pageSize: pageSize,
      nextPageToken: nextPageToken,
      prevPageToken: prevPageToken,
    ));
  }
}

final workbookRepositoryProvider = Provider((ref) {
  return WorkbookRepositoryImpl(ref);
});
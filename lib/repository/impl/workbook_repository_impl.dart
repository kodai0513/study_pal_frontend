import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

import '../../core/exception/repository/repository_exception.dart';
import '../../core/mold/common/result.dart';
import '../../provider/dio_provider.dart';
import '../common/response_handler.dart';
import '../interface/workbook_repository.dart';

class WorkbookRepositoryImpl implements WorkbookRepository {
  const WorkbookRepositoryImpl(this.ref);

  final Ref ref;

  @override
  Future<Result<WorkbookListViewResp, RepositoryException>> getWorkbooks({
    required String keyword,
    required int pageSize,
    String? nextPageToken,
  }) async {
    final DefaultApi api =
        DefaultApi(ref.read(dioProvider), standardSerializers);
    return responseHandler(() => api.searchApiV1WorkbooksGet(
          keyword: keyword,
          pageSize: pageSize,
          nextPageToken: nextPageToken,
        ));
  }
}

final Provider<WorkbookRepositoryImpl> workbookRepositoryProvider =
    Provider<WorkbookRepositoryImpl>((Ref ref) {
  return WorkbookRepositoryImpl(ref);
});

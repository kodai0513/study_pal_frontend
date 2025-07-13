import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';
import 'package:study_pal_frontend/constants/page/page_size.dart';
import 'package:study_pal_frontend/core/exception/repository/repository_exception.dart';
import 'package:study_pal_frontend/core/mold/common/result.dart';
import 'package:study_pal_frontend/repository/common/response_handler.dart';
import 'package:study_pal_frontend/provider/dio_provider.dart';
import 'package:study_pal_frontend/repository/interface/timeline_repository.dart';

class TimelineRepositoryImpl implements TimelineRepository {
  const TimelineRepositoryImpl(this.ref);

  final Ref ref;

  @override
  Future<Result<TimelineViewResp, RepositoryException>> getTimelines({
    int pageSize = PageSize.defaultSize,
    String? nextPageToken,
  }) async {
    final api = DefaultApi(ref.read(dioProvider), standardSerializers);
    return await responseHandler(() => api.indexApiV1TimelinesGet(
      pageSize: pageSize,
      nextPageToken: nextPageToken,
    ));
  }
}

final timelineRepositoryProvider = Provider((ref) {
  return TimelineRepositoryImpl(ref);
});
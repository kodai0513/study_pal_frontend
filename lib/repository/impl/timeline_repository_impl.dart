import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';
import 'package:study_pal_frontend/core/exception/repository/repository_exception.dart';
import 'package:study_pal_frontend/core/mold/common/result.dart';
import 'package:study_pal_frontend/repository/common/response_handler.dart';
import 'package:study_pal_frontend/provider/dio_provider.dart';
import 'package:study_pal_frontend/repository/interface/timeline_repository.dart';

class TimelineRepositoryImpl implements TimelineRepository {
  const TimelineRepositoryImpl(this.ref);

  final Ref ref;

  @override
  Future<Result<TimelineResp, RepositoryException>> getTimelines({
    int pageSize = 20,
    String? nextPageToken,
    String? prevPageToken,
  }) async {
    final api = DefaultApi(ref.read(dioProvider), standardSerializers);
    return await responseHandler(() => api.indexTimelinesGet(
      pageSize: pageSize,
      nextPageToken: nextPageToken,
      prevPageToken: prevPageToken,
    ));
  }
}

final timelineRepositoryProvider = Provider((ref) {
  return TimelineRepositoryImpl(ref);
});
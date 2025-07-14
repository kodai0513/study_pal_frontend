import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';

import '../../constants/page/page_size.dart';
import '../../core/exception/repository/repository_exception.dart';
import '../../core/mold/common/result.dart';
import '../../provider/dio_provider.dart';
import '../common/response_handler.dart';
import '../interface/timeline_repository.dart';

class TimelineRepositoryImpl implements TimelineRepository {
  const TimelineRepositoryImpl(this.ref);

  final Ref ref;

  @override
  Future<Result<TimelineViewResp, RepositoryException>> getTimelines({
    int pageSize = PageSize.defaultSize,
    String? nextPageToken,
  }) async {
    final DefaultApi api =
        DefaultApi(ref.read(dioProvider), standardSerializers);
    return responseHandler(() => api.indexApiV1TimelinesGet(
          pageSize: pageSize,
          nextPageToken: nextPageToken,
        ));
  }
}

final Provider<TimelineRepositoryImpl> timelineRepositoryProvider =
    Provider<TimelineRepositoryImpl>((Ref ref) {
  return TimelineRepositoryImpl(ref);
});

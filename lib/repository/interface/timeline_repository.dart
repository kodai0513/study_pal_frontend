import 'package:openapi/openapi.dart';
import '../../core/exception/repository/repository_exception.dart';
import '../../core/mold/common/result.dart';

abstract class TimelineRepository {
  Future<Result<TimelineViewResp, RepositoryException>> getTimelines({
    int pageSize,
    String? nextPageToken,
  });
}

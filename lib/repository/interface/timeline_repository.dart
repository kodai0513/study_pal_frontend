import 'package:openapi/openapi.dart';
import 'package:study_pal_frontend/core/exception/repository/repository_exception.dart';
import 'package:study_pal_frontend/core/mold/common/result.dart';

abstract class TimelineRepository {
  Future<Result<TimelineViewResp, RepositoryException>> getTimelines({
    int pageSize,
    String? nextPageToken,
  });
}
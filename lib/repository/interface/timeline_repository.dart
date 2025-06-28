import 'package:openapi/openapi.dart';

abstract class TimelineRepository {
  Future<TimelineResp> getTimelines();
}
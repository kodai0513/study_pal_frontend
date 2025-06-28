import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:openapi/openapi.dart';
import 'package:study_pal_frontend/provider/dio_provider.dart';
import 'package:study_pal_frontend/repository/interface/timeline_repository.dart';

class TimelineRepositoryImpl implements TimelineRepository {
  const TimelineRepositoryImpl(this.ref);

  final Ref ref;

  @override
  Future<TimelineResp> getTimelines() async {
    final api = DefaultApi(ref.read(dioProvider), standardSerializers);

    try {
      final response = await api.indexTimelinesGet(
        pageSize: 20,
        nextPageToken: null,
        prevPageToken: null,
      );

      final timelineResp = response.data;
      if (timelineResp == null) {
        throw Exception('レスポンスデータが空です');
      }
      return timelineResp;
    } on DioException catch (e) {
      final statusCode = e.response?.statusCode;

      if (statusCode == 422) {
        throw Exception('リクエストのバリデーションエラー: ${e.response?.data}');
      } else if (statusCode == 500) {
        // サーバー内部エラーの処理
        throw Exception('サーバーエラーが発生しました。しばらくしてから再度お試しください。');
      } else {
        throw Exception('通信エラーが発生しました: ${e.message}');
      }
    } catch (e) {
      throw Exception('予期しないエラーが発生しました: $e');
    }
  }
}

final timelineRepositoryProvider = Provider((ref) {
  return TimelineRepositoryImpl(ref);
});
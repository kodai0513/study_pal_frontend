import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../core/network/api_url.dart';

final Provider<Dio> dioProvider = Provider<Dio>((Ref<Dio> ref) {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: ApiUrl.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 30),
    ),
  );
  return dio;
});

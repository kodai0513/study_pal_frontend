import 'dart:io';

import 'package:dio/dio.dart';
import '../../core/exception/repository/bad_request_exception.dart';
import '../../core/exception/repository/empty_response_exception.dart';
import '../../core/exception/repository/forbidden_exception.dart';
import '../../core/exception/repository/internal_server_error_exception.dart';
import '../../core/exception/repository/not_found_exception.dart';
import '../../core/exception/repository/repository_exception.dart';
import '../../core/exception/repository/request_timeout_exception.dart';
import '../../core/exception/repository/tcp_connection_exception.dart';
import '../../core/exception/repository/unauthorized_exception.dart';
import '../../core/exception/repository/unkown_exception.dart';
import '../../core/exception/repository/unprocessable_content_exception.dart';
import '../../core/mold/common/result.dart';

Future<Result<T, RepositoryException>> responseHandler<T>(
    Future<Response<T>> Function() apiCall) async {
  try {
    final Response<T> response = await apiCall();

    final T? res = response.data;
    if (res == null) {
      return Result<T, RepositoryException>.err(EmptyResponseException());
    }
    return Result<T, RepositoryException>.ok(res);
  } on DioException catch (e) {
    final int? statusCode = e.response?.statusCode;

    if (statusCode != null) {
      final RepositoryException exception = switch (statusCode) {
        HttpStatus.badRequest => BadRequestException(),
        HttpStatus.forbidden => ForbiddenException(),
        HttpStatus.internalServerError => InternalServerErrorException(),
        HttpStatus.notFound => NotFoundException(),
        HttpStatus.requestTimeout => RequestTimeoutException(),
        HttpStatus.unauthorized => UnauthorizedException(),
        HttpStatus.unprocessableEntity => UnprocessableContentException(),
        _ => UnkownException(),
      };

      return Result<T, RepositoryException>.err(exception);
    }

    return Result<T, RepositoryException>.err(TcpConnectionException());
  }
}

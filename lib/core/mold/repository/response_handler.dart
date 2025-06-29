import 'dart:io';

import 'package:dio/dio.dart';
import 'package:study_pal_frontend/core/exception/repository/bad_request_exception.dart';
import 'package:study_pal_frontend/core/exception/repository/empty_response_exception.dart';
import 'package:study_pal_frontend/core/exception/repository/forbidden_exception.dart';
import 'package:study_pal_frontend/core/exception/repository/internal_server_error_exception.dart';
import 'package:study_pal_frontend/core/exception/repository/not_found_exception.dart';
import 'package:study_pal_frontend/core/exception/repository/repository_exception.dart';
import 'package:study_pal_frontend/core/exception/repository/request_timeout_exception.dart';
import 'package:study_pal_frontend/core/exception/repository/unauthorized_exception.dart';
import 'package:study_pal_frontend/core/exception/repository/unkown_exception.dart';
import 'package:study_pal_frontend/core/exception/repository/unprocessable_content_exception.dart';
import 'package:study_pal_frontend/core/mold/common/result.dart';

Future<Result<T, RepositoryException>> responseHandler<T>(Future<Response<T>> Function() apiCall) async {
  try {
    final response = await apiCall();

    final res = response.data;
    if (res == null) {
      return Result.err(EmptyResponseException());
    }
    return Result.ok(res);
  } on DioException catch (e) {
    final statusCode = e.response?.statusCode;
    final exception = switch (statusCode) {
      HttpStatus.badRequest => BadRequestException(),
      HttpStatus.forbidden => ForbiddenException(),
      HttpStatus.internalServerError => InternalServerErrorException(),
      HttpStatus.notFound => NotFoundException(),
      HttpStatus.requestTimeout => RequestTimeoutException(),
      HttpStatus.unauthorized => UnauthorizedException(),
      HttpStatus.unprocessableEntity => UnprocessableContentException(),
      _ => UnkownException(),
    };

    return Result.err(exception);
  } 
}
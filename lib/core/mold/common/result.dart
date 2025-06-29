import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T, E extends Exception> with _$Result<T, E> {
  const factory Result.ok(T value) = Ok<T, E>;
  const factory Result.err(E e) = Err<T, E>;
}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_state.freezed.dart';

@freezed
class PageState<T> with _$PageState<T> {
  const factory PageState.loading() = PageLoadingState;
  const factory PageState.success(T pageSuccessState) = PageSuccessState;
  const factory PageState.error(String message) = PageErrorState;
}
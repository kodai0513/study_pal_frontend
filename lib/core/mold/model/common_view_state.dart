import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_view_state.freezed.dart';

@freezed
class CommonViewState<T> with _$CommonViewState<T> {
  const factory CommonViewState.loading() = CommonViewLoadingState;
  const factory CommonViewState.success(T pageSuccessState) = CommonViewSuccessState;
  const factory CommonViewState.error(String message) = CommonViewErrorState;
}
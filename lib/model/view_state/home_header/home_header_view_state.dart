import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_header_view_state.freezed.dart';

@freezed
abstract class HomeHeaderViewState with _$HomeHeaderViewState {
  const factory HomeHeaderViewState({required String selectedKey}) =
      _HomeHeaderViewState;
}

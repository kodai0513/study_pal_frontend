import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../model/view_state/home_header/home_header_view_state.dart';

class HomeHeaderViewModel extends StateNotifier<HomeHeaderViewState> {
  HomeHeaderViewModel()
      : super(const HomeHeaderViewState(selectedKey: 'self_made'));

  void setSelectedKey(String key) {
    state = state.copyWith(selectedKey: key);
  }
}

final StateNotifierProvider<HomeHeaderViewModel, HomeHeaderViewState>
    homeHeaderViewModelProvider =
    StateNotifierProvider<HomeHeaderViewModel, HomeHeaderViewState>(
  (Ref ref) => HomeHeaderViewModel(),
);

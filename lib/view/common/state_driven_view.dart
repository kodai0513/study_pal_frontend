import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../component/atom/sp_loading_widget.dart';
import '../../core/mold/model/common_view_state.dart';

class StateDrivenView<ViewSuccessState> extends ConsumerWidget {
  const StateDrivenView({
    super.key,
    required this.state,
    required this.successBuilder,
  });

  final CommonViewState<ViewSuccessState> state;
  final Widget Function(ViewSuccessState data) successBuilder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return switch (state) {
      CommonViewLoadingState<ViewSuccessState>() =>
        const SpLoadingWidget(message: '読み込み中...'),
      CommonViewSuccessState<ViewSuccessState>(
        :final ViewSuccessState pageSuccessState
      ) =>
        successBuilder(pageSuccessState),
      CommonViewErrorState<ViewSuccessState>(:final String message) =>
        Text(message),
      _ => throw Error(),
    };
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_pal_frontend/component/atom/sp_loading_widget.dart';
import 'package:study_pal_frontend/core/mold/model/common_view_state.dart';

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
      CommonViewLoadingState() => const SpLoadingWidget(message: '読み込み中...'),
      CommonViewSuccessState(:final pageSuccessState) => successBuilder(pageSuccessState),
      CommonViewErrorState() => const SizedBox.shrink(),
      _ => throw Error(),
    };
  }
}

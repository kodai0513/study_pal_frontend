import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../component/atom/sp_segmented_button.dart';
import '../../view_model/home_header/home_header_view_model.dart';

class HomeHeaderView extends ConsumerWidget {
  const HomeHeaderView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeHeaderViewModel viewModel =
        ref.watch(homeHeaderViewModelProvider.notifier);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SpSegmentedButton(
          items: <SpSegmentedButtonItem>[
            SpSegmentedButtonItem(label: '自作問', value: 'self_made'),
            SpSegmentedButtonItem(label: 'お気に入り', value: 'favorite'),
          ],
          onChanged: viewModel.setSelectedKey,
        ),
      ],
    );
  }
}

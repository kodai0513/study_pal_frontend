import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../model/view_state/home_header/home_header_view_state.dart';
import '../../view/favorite_workbook/favorite_workbook_list_view.dart';
import '../../view/home_header/home_header_view.dart';
import '../../view/workbook_self_made/workbook_self_made_list_view.dart';
import '../../view_model/home_header/home_header_view_model.dart';

class HoemePage extends ConsumerWidget {
  const HoemePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeHeaderViewState state = ref.watch(homeHeaderViewModelProvider);
    Widget listView = const SizedBox.shrink();
    if (state.selectedKey == 'self_made') {
      listView = WorkbookSelfMadeListView(key: key);
    }
    if (state.selectedKey == 'favorite') {
      listView = FavoriteWorkbookListView(key: key);
    }
    return Column(children: <Widget>[
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        height: 50,
        child: HomeHeaderView(key: key),
      ),
      Expanded(
        child: listView,
      ),
    ]);
  }
}

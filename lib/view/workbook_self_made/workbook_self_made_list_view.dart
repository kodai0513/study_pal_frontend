import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';

import '../../component/atom/sp_icon.dart';
import '../../component/organisms/workbook/workbook_list_title.dart';
import '../../constants/ui/ui_size.dart';
import '../../model/view_state/workbook_self_made_list/workbook_self_made_list.dart';
import '../../view_model/workbook_self_made/workbook_self_made_list_view_model.dart';
import '../common/state_driven_view.dart';

class WorkbookSelfMadeListView extends ConsumerWidget {
  const WorkbookSelfMadeListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final WorkbookSelfMadeListViewState state =
        ref.watch(workbookSelfMadeListViewModelProvider);
    // final WorkbookSelfMadeListViewModel viewModel =
    //     ref.watch(workbookSelfMadeListViewModelProvider.notifier);

    return StateDrivenView<WorkbookSelfMadeListViewSuccessState>(
      state: state,
      successBuilder: (WorkbookSelfMadeListViewSuccessState state) {
        if (state.workbookContents.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('作成した問題集はありません', style: TextStyle(fontSize: 18)),
                Text('問題集を追加してください', style: TextStyle(fontSize: 18)),
              ],
            ),
          );
        }
        return ListView.builder(
          itemCount: state.workbookContents.length,
          itemBuilder: (BuildContext context, int index) {
            final WorkbookListContent item = state.workbookContents[index];
            return WorkbookListTitle(
              key: ValueKey<String>(item.id),
              icon: const SpIcon(defaultIcon: Icons.book, size: UiSize.medium),
              title: item.title,
              description: item.description,
            );
          },
        );
      },
    );
  }
}

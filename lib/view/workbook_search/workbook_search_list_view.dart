import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';

import '../../component/atom/sp_icon.dart';
import '../../component/organisms/workbook/workbook_list_title.dart';
import '../../constants/ui/ui_size.dart';
import '../../model/view_state/workbook_search_list/workbook_search_list.dart';
import '../../view_model/workbook_search/workbook_search_list_view_model.dart';
import '../common/state_driven_view.dart';

class WorkbookSearchListView extends ConsumerWidget {
  const WorkbookSearchListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final WorkbookSearchListViewState state =
        ref.watch(workbookSearchListViewModelProvider);
    final WorkbookSearchListViewModel viewModel =
        ref.watch(workbookSearchListViewModelProvider.notifier);

    return StateDrivenView<WorkbookSearchListViewSuccessState>(
      state: state,
      successBuilder: (WorkbookSearchListViewSuccessState state) {
        if (!state.isSearch) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('まずは検索してしましょう', style: TextStyle(fontSize: 18)),
              ],
            ),
          );
        }
        if (state.workbookContents.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('検索に一致する問題集がありませんでした', style: TextStyle(fontSize: 18)),
              ],
            ),
          );
        }
        return InfiniteList(
          itemCount: state.workbookContents.length,
          onFetchData: viewModel.nextPage,
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

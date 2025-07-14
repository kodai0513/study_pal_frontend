
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_pal_frontend/component/atom/sp_icon.dart';
import 'package:study_pal_frontend/component/organisms/workbook/workbook_list_card.dart';
import 'package:study_pal_frontend/constants/ui/ui_size.dart';
import 'package:study_pal_frontend/model/view_state/workbook_search_list/workbook_search_list.dart';
import 'package:study_pal_frontend/view/common/state_driven_view.dart';
import 'package:study_pal_frontend/view_model/workbook_search/workbook_search_list_view_model.dart';
import 'package:very_good_infinite_list/very_good_infinite_list.dart';


class WorkbookSearchListView extends ConsumerWidget {
  const WorkbookSearchListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(workbookSearchListViewModelProvider);
    final viewModel = ref.watch(workbookSearchListViewModelProvider.notifier);

    return StateDrivenView<WorkbookSearchListViewSuccessState>(
      state: state,
      successBuilder: (state) {
        if (state.workbookContents.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('検索に一致する問題集がありませんでした', style: TextStyle(fontSize: 18)),
              ],
            ),
          );
        }
        return InfiniteList(
          itemCount: state.workbookContents.length,
          onFetchData: viewModel.nextPage,
          itemBuilder: (context, index) {
            final item = state.workbookContents[index];

            return WorkbookListCard(
              key: ValueKey(item.id),
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
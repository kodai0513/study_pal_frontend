
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_pal_frontend/component/atom/sp_text_field.dart';
import 'package:study_pal_frontend/view_model/workbook_search/workbook_search_list_view_model.dart';


class WorkbookSearchFieldView extends ConsumerWidget {
  const WorkbookSearchFieldView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final workbookSearchListViewModel = ref.watch(workbookSearchListViewModelProvider.notifier);

    return SpTextField(
      onSubmitted: (String value) async {
        workbookSearchListViewModel.keyword = value;
        await workbookSearchListViewModel.search();
      },
      placeholder: "検索キーワードを入力してください",
    );
  }
}
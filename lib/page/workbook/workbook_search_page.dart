import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_pal_frontend/view/workbook_search/workbook_search_field_view.dart';
import 'package:study_pal_frontend/view/workbook_search/workbook_search_list_view.dart';


class WorkbookSearchPage extends ConsumerWidget {
  const WorkbookSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: WorkbookSearchFieldView(key: key)
        ),
        Expanded(
          child: WorkbookSearchListView(key: key),
        ),
      ]
    );
  }
}

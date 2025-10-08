import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';

import '../../component/atom/sp_icon.dart';
import '../../component/organisms/workbook/workbook_list_title.dart';
import '../../constants/ui/ui_size.dart';
import '../../model/view_state/favorite_workbook_list/favorite_workbook_list.dart';
import '../../view_model/favorite_workbook/favorite_workbook_list_view_model.dart';
import '../common/state_driven_view.dart';

class FavoriteWorkbookListView extends ConsumerWidget {
  const FavoriteWorkbookListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FavoriteWorkbookListViewState state =
        ref.watch(favoriteWorkbookListViewModelProvider);

    return StateDrivenView<FavoriteWorkbookListViewSuccessState>(
      state: state,
      successBuilder: (FavoriteWorkbookListViewSuccessState state) {
        if (state.workbookContents.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('お気に入り登録している問題集はありません', style: TextStyle(fontSize: 18)),
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

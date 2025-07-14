import 'package:built_collection/built_collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';
import 'package:study_pal_frontend/constants/page/page_size.dart';
import 'package:study_pal_frontend/core/exception/repository/repository_exception.dart';
import 'package:study_pal_frontend/core/mold/common/result.dart';
import 'package:study_pal_frontend/core/mold/model/common_view_state.dart';
import 'package:study_pal_frontend/model/view_state/workbook_search_list/workbook_search_list.dart';
import 'package:study_pal_frontend/repository/impl/workbook_repository_impl.dart';
import 'package:study_pal_frontend/repository/interface/workbook_repository.dart';

class WorkbookSearchListViewModel extends StateNotifier<WorkbookSearchListViewState> {
  WorkbookSearchListViewModel(this._ref) : super(const WorkbookSearchListViewState.loading()) {
    load();
  }

  late final Ref _ref;

  late final WorkbookRepository _workbookRepository = _ref.read(workbookRepositoryProvider);

  String _keyword = '';

  void load() {
    state = WorkbookSearchListViewState.success(
      WorkbookSearchListViewSuccessState(
        pageInfo: PageInfo(
          (d) {
            d.pageSize = PageSize.defaultSize;
            d.nextPageToken = null;
          }
        ),
        workbookContents: ListBuilder<WorkbookListContent>().build(),
      )
    );
  }

  set keyword(String value) {
    _keyword = value;
  }

  Future<Result<WorkbookListViewResp, RepositoryException>> _getData({
    String? nextPageToken,
  }) async {
    state = const WorkbookSearchListViewState.loading();
    return  await _workbookRepository.getWorkbooks(keyword: _keyword, pageSize: PageSize.defaultSize, nextPageToken: nextPageToken);
  }

  Future<void> search() async {
    final result = await _getData();

    switch (result) {
      case Ok(value: final workbookListViewResp):
        state = WorkbookSearchListViewState.success(
          WorkbookSearchListViewSuccessState(
            pageInfo: workbookListViewResp.pageInfo,
            workbookContents: workbookListViewResp.data,
          )
        );
    }
  }

  Future<void> nextPage() async {
    final data = (state as CommonViewSuccessState<WorkbookSearchListViewSuccessState>).pageSuccessState;

    if(data.pageInfo.nextPageToken == null) {
      return;
    }

    final result = await _getData(
      nextPageToken: data.pageInfo.nextPageToken
    );

    switch (result) {
      case Ok(value: final workbookListViewResp):
        final newWorkbookContents = BuiltList<WorkbookListContent>([...data.workbookContents, ...workbookListViewResp.data]);
        state = WorkbookSearchListViewState.success(
          WorkbookSearchListViewSuccessState(
            pageInfo: workbookListViewResp.pageInfo,
            workbookContents: newWorkbookContents,
          )
        );
    }
  }
}

final workbookSearchListViewModelProvider = StateNotifierProvider<WorkbookSearchListViewModel, WorkbookSearchListViewState>(
  (ref) => WorkbookSearchListViewModel(ref),
);
import 'package:built_collection/built_collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';
import '../../constants/page/page_size.dart';
import '../../core/exception/repository/repository_exception.dart';
import '../../core/mold/common/result.dart';
import '../../core/mold/model/common_view_state.dart';
import '../../model/view_state/workbook_search_list/workbook_search_list.dart';
import '../../repository/impl/workbook_repository_impl.dart';
import '../../repository/interface/workbook_repository.dart';

class WorkbookSearchListViewModel
    extends StateNotifier<WorkbookSearchListViewState> {
  WorkbookSearchListViewModel(this._ref)
      : super(const WorkbookSearchListViewState.loading()) {
    load();
  }

  late final Ref _ref;

  late final WorkbookRepository _workbookRepository =
      _ref.read(workbookRepositoryProvider);

  void load() {
    state =
        WorkbookSearchListViewState.success(WorkbookSearchListViewSuccessState(
      pageInfo: PageInfo((PageInfoBuilder d) {
        d.pageSize = PageSize.defaultSize;
        d.nextPageToken = null;
      }),
      workbookContents: ListBuilder<WorkbookListContent>().build(),
    ));
  }

  Future<Result<WorkbookListViewResp, RepositoryException>> _getData({
    String? nextPageToken,
  }) async {
    final WorkbookSearchListViewSuccessState data =
        (state as CommonViewSuccessState<WorkbookSearchListViewSuccessState>)
            .pageSuccessState;
    state = const WorkbookSearchListViewState.loading();
    return _workbookRepository.getWorkbookByKeyword(
        keyword: data.keyword,
        pageSize: PageSize.defaultSize,
        nextPageToken: nextPageToken);
  }

  Future<void> search() async {
    state = const WorkbookSearchListViewState.loading();
    final Result<WorkbookListViewResp, RepositoryException> result =
        await _getData();

    switch (result) {
      case Ok<WorkbookListViewResp, RepositoryException>(
          value: final WorkbookListViewResp workbookListViewResp
        ):
        state = WorkbookSearchListViewState.success(
            WorkbookSearchListViewSuccessState(
          pageInfo: workbookListViewResp.pageInfo,
          workbookContents: workbookListViewResp.data,
          isSearch: true,
        ));
    }
  }

  void setkeyword(String value) {
    final WorkbookSearchListViewSuccessState data =
        (state as CommonViewSuccessState<WorkbookSearchListViewSuccessState>)
            .pageSuccessState;
    state = WorkbookSearchListViewState.success(data.copyWith(keyword: value));
  }

  Future<void> nextPage() async {
    final WorkbookSearchListViewSuccessState data =
        (state as CommonViewSuccessState<WorkbookSearchListViewSuccessState>)
            .pageSuccessState;

    if (data.pageInfo.nextPageToken == null) {
      return;
    }

    final Result<WorkbookListViewResp, RepositoryException> result =
        await _getData(nextPageToken: data.pageInfo.nextPageToken);

    switch (result) {
      case Ok<WorkbookListViewResp, RepositoryException>(
          value: final WorkbookListViewResp workbookListViewResp
        ):
        final BuiltList<WorkbookListContent> newWorkbookContents =
            BuiltList<WorkbookListContent>(<dynamic>[
          ...data.workbookContents,
          ...workbookListViewResp.data
        ]);
        state = WorkbookSearchListViewState.success(data.copyWith(
            workbookContents: newWorkbookContents,
            pageInfo: workbookListViewResp.pageInfo));
    }
  }
}

final StateNotifierProvider<WorkbookSearchListViewModel,
        WorkbookSearchListViewState> workbookSearchListViewModelProvider =
    StateNotifierProvider<WorkbookSearchListViewModel,
        WorkbookSearchListViewState>(
  (Ref ref) => WorkbookSearchListViewModel(ref),
);

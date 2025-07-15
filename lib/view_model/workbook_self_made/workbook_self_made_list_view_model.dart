import 'package:built_collection/built_collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';
import '../../constants/page/page_size.dart';
import '../../core/exception/repository/repository_exception.dart';
import '../../core/mold/common/result.dart';
import '../../core/mold/model/common_view_state.dart';
import '../../model/view_state/workbook_self_made_list/workbook_self_made_list.dart';
import '../../repository/impl/workbook_repository_impl.dart';
import '../../repository/interface/workbook_repository.dart';

class WorkbookSelfMadeListViewModel
    extends StateNotifier<WorkbookSelfMadeListViewState> {
  WorkbookSelfMadeListViewModel(this._ref)
      : super(const WorkbookSelfMadeListViewState.loading()) {
    load();
  }

  late final Ref _ref;

  late final WorkbookRepository _workbookRepository =
      _ref.read(workbookRepositoryProvider);

  Future<void> load() async {
    final Result<WorkbookListViewResp, RepositoryException> result =
        await _getData();

    switch (result) {
      case Ok<WorkbookListViewResp, RepositoryException>(
          value: final WorkbookListViewResp workbookListViewResp
        ):
        state = WorkbookSelfMadeListViewState.success(
            WorkbookSelfMadeListViewSuccessState(
          pageInfo: PageInfo((PageInfoBuilder d) {
            d.pageSize = PageSize.homeDefaultSize;
            d.nextPageToken = null;
          }),
          workbookContents: workbookListViewResp.data,
        ));
      case Err<WorkbookListViewResp, RepositoryException>(
          e: final RepositoryException exception
        ):
        state = WorkbookSelfMadeListViewState.error(exception.toString());
    }
  }

  Future<Result<WorkbookListViewResp, RepositoryException>> _getData({
    String? nextPageToken,
  }) async {
    state = const WorkbookSelfMadeListViewState.loading();
    return _workbookRepository.getWorkbookForMe(
        pageSize: PageSize.homeDefaultSize, nextPageToken: nextPageToken);
  }

  Future<void> nextPage() async {
    final WorkbookSelfMadeListViewSuccessState data =
        (state as CommonViewSuccessState<WorkbookSelfMadeListViewSuccessState>)
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
        state = WorkbookSelfMadeListViewState.success(data.copyWith(
            workbookContents: newWorkbookContents,
            pageInfo: workbookListViewResp.pageInfo));
    }
  }
}

final StateNotifierProvider<WorkbookSelfMadeListViewModel,
        WorkbookSelfMadeListViewState> workbookSelfMadeListViewModelProvider =
    StateNotifierProvider<WorkbookSelfMadeListViewModel,
        WorkbookSelfMadeListViewState>(
  (Ref ref) => WorkbookSelfMadeListViewModel(ref),
);

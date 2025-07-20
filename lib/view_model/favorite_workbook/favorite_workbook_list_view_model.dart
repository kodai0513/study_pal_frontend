import 'package:built_collection/built_collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';
import '../../constants/page/page_size.dart';
import '../../core/exception/repository/repository_exception.dart';
import '../../core/mold/common/result.dart';
import '../../core/mold/model/common_view_state.dart';
import '../../model/view_state/favorite_workbook_list/favorite_workbook_list.dart';
import '../../repository/impl/workbook_repository_impl.dart';
import '../../repository/interface/workbook_repository.dart';

class FavoriteWorkbookListViewModel
    extends StateNotifier<FavoriteWorkbookListViewState> {
  FavoriteWorkbookListViewModel(this._ref)
      : super(const FavoriteWorkbookListViewState.loading()) {
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
        state = FavoriteWorkbookListViewState.success(
            FavoriteWorkbookListViewSuccessState(
          pageInfo: PageInfo((PageInfoBuilder d) {
            d.pageSize = PageSize.homeDefaultSize;
            d.nextPageToken = null;
          }),
          workbookContents: workbookListViewResp.data,
        ));
      case Err<WorkbookListViewResp, RepositoryException>(
          e: final RepositoryException exception
        ):
        state = FavoriteWorkbookListViewState.error(exception.toString());
    }
  }

  Future<Result<WorkbookListViewResp, RepositoryException>> _getData({
    String? nextPageToken,
  }) async {
    state = const FavoriteWorkbookListViewState.loading();
    return _workbookRepository.getWorkbookForFavorites(
        pageSize: PageSize.homeDefaultSize, nextPageToken: nextPageToken);
  }

  Future<void> nextPage() async {
    final FavoriteWorkbookListViewSuccessState data =
        (state as CommonViewSuccessState<FavoriteWorkbookListViewSuccessState>)
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
        state = FavoriteWorkbookListViewState.success(data.copyWith(
            workbookContents: newWorkbookContents,
            pageInfo: workbookListViewResp.pageInfo));
    }
  }
}

final StateNotifierProvider<FavoriteWorkbookListViewModel,
        FavoriteWorkbookListViewState> favoriteWorkbookListViewModelProvider =
    StateNotifierProvider<FavoriteWorkbookListViewModel,
        FavoriteWorkbookListViewState>(
  (Ref ref) => FavoriteWorkbookListViewModel(ref),
);

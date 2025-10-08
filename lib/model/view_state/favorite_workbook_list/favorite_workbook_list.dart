import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi/openapi.dart';
import '../../../core/mold/model/common_view_state.dart';

part 'favorite_workbook_list.freezed.dart';

@freezed
abstract class FavoriteWorkbookListViewSuccessState
    with _$FavoriteWorkbookListViewSuccessState {
  const factory FavoriteWorkbookListViewSuccessState({
    required BuiltList<WorkbookListContent> workbookContents,
    required PageInfo pageInfo,
  }) = _FavoriteWorkbookListViewSuccessState;
}

typedef FavoriteWorkbookListViewState
    = CommonViewState<FavoriteWorkbookListViewSuccessState>;

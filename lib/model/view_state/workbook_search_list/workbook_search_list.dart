import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi/openapi.dart';
import 'package:study_pal_frontend/core/mold/model/common_view_state.dart';


part 'workbook_search_list.freezed.dart';

@freezed
abstract class WorkbookSearchListViewSuccessState with _$WorkbookSearchListViewSuccessState {
  const factory WorkbookSearchListViewSuccessState({
    required BuiltList<WorkbookListContent> workbookContents,
    required PageInfo pageInfo,
  }) = _WorkbookSearchListViewSuccessState;
}


typedef WorkbookSearchListViewState = CommonViewState<WorkbookSearchListViewSuccessState>;
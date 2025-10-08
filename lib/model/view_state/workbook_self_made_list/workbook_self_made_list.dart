import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi/openapi.dart';
import '../../../core/mold/model/common_view_state.dart';

part 'workbook_self_made_list.freezed.dart';

@freezed
abstract class WorkbookSelfMadeListViewSuccessState
    with _$WorkbookSelfMadeListViewSuccessState {
  const factory WorkbookSelfMadeListViewSuccessState({
    required BuiltList<WorkbookListContent> workbookContents,
    required PageInfo pageInfo,
  }) = _WorkbookSelfMadeListViewSuccessState;
}

typedef WorkbookSelfMadeListViewState
    = CommonViewState<WorkbookSelfMadeListViewSuccessState>;

import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi/openapi.dart';
import 'package:study_pal_frontend/core/mold/model/common_view_state.dart';


part 'timeline_view_state.freezed.dart';

@freezed
abstract class TimelineViewSuccessState with _$TimelineViewSuccessState {
  const factory TimelineViewSuccessState({
    required BuiltList<ArticleView> articleViews,
    required PageInfo pageInfo,
    @Default(false) bool isNextLoading,
  }) = _TimelineViewSuccessState;
}


typedef TimelineViewState = CommonViewState<TimelineViewSuccessState>;
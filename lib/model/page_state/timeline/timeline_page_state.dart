import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study_pal_frontend/core/mold/model/page_state.dart';
import 'package:study_pal_frontend/model/view_state/timeline/timeline_view_state.dart';


part 'timeline_page_state.freezed.dart';

@freezed
abstract class TimelinePageSuccessState with _$TimelinePageSuccessState {
  const factory TimelinePageSuccessState({
    required TimelineViewState timeline,
  }) = _TimelinePageSuccessState;
}

typedef TimelinePageState = PageState<TimelinePageSuccessState>;
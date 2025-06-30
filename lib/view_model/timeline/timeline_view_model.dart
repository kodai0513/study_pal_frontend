import 'package:built_collection/built_collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';
import 'package:study_pal_frontend/core/mold/model/common_view_state.dart';
import 'package:study_pal_frontend/model/view_state/timeline/timeline_view_state.dart';
import 'package:study_pal_frontend/repository/impl/timeline_repository_impl.dart';
import 'package:study_pal_frontend/repository/interface/timeline_repository.dart';
import 'package:study_pal_frontend/core/mold/common/result.dart';

class TimelineViewModel extends StateNotifier<TimelineViewState> {
  TimelineViewModel(this._ref) : super(const TimelineViewState.loading()) {
    load();
  }

  late final Ref _ref;

  late final TimelineRepository _timelineRepository = _ref.read(timelineRepositoryProvider);

  Future<void> load() async {
    state = const TimelineViewState.loading();
    final result = await _timelineRepository.getTimelines(
      pageSize: 20,
    );

    switch (result) {
      case Ok(value: final timelineResp):
        state = TimelineViewState.success(
          TimelineViewSuccessState(
            articleViews: timelineResp.data,
            pageInfo: timelineResp.pageInfo,
          ),
        );
      case Err(e: final exception):
        state = TimelineViewState.error(exception.toString());
    }
  }

  Future<void> nextDataLoad() async {
    final data = (state as CommonViewSuccessState<TimelineViewSuccessState>).pageSuccessState;
    if(data.pageInfo.nextPageToken == null) {
      return;
    }
    state = TimelineViewState.success(data.copyWith(isNextLoading: true));
    final result = await _timelineRepository.getTimelines(
      pageSize: 20,
      nextPageToken: data.pageInfo.nextPageToken,
    );
    state = TimelineViewState.success(data.copyWith(isNextLoading: false));
    switch (result) {
      case Ok(value: final timelineResp):
      final newArticles = BuiltList<ArticleView>([...data.articleViews, ...timelineResp.data]);
        state = TimelineViewState.success(
          TimelineViewSuccessState(
            articleViews: newArticles,
            pageInfo: timelineResp.pageInfo,
          ),
        );
    }
  }
}

final timelineViewModelProvider = StateNotifierProvider<TimelineViewModel, TimelineViewState>(
  (ref) => TimelineViewModel(ref),
);
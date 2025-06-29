import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_pal_frontend/model/page_state/timeline/timeline_page_state.dart';
import 'package:study_pal_frontend/model/view_state/timeline/timeline_view_state.dart';
import 'package:study_pal_frontend/repository/impl/timeline_repository_impl.dart';
import 'package:study_pal_frontend/repository/interface/timeline_repository.dart';
import 'package:study_pal_frontend/core/mold/common/result.dart';

class TimelineViewModel extends StateNotifier<TimelinePageState> {
  TimelineViewModel(this._ref) : super(const TimelinePageState.loading()) {
    load();
  }

  late final Ref _ref;

  late final TimelineRepository _timelineRepository = _ref.read(timelineRepositoryProvider);

  Future<void> load() async {
    state = const TimelinePageState.loading();
    final result = await _timelineRepository.getTimelines();

    switch (result) {
      case Ok(value: final timelineResp):
        state = TimelinePageState.success(
          TimelinePageSuccessState(
            timeline: TimelineViewState(
              articleViews: timelineResp.data,
              pageInfo: timelineResp.pageInfo,
            ),
          ),
        );
      case Err(e: final exception):
        state = TimelinePageState.error(exception.toString());
    }
  }
}

final timelineViewModelProvider = StateNotifierProvider<TimelineViewModel, TimelinePageState>(
  (ref) => TimelineViewModel(ref),
);
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_pal_frontend/model/timeline/timeline_view_state.dart';
import 'package:study_pal_frontend/repository/impl/timeline_repository_impl.dart';
import 'package:study_pal_frontend/repository/interface/timeline_repository.dart';

class TimelineViewModel extends StateNotifier<TimelineViewState> {
  TimelineViewModel(this._ref) : super(TimelineViewState(timeline: null, isLoading: true)) {
    load();
  }

  late final Ref _ref;

  late final TimelineRepository _timelineRepository = _ref.read(timelineRepositoryProvider);
  
  Future<void> load() async {
    final timeline = await _timelineRepository.getTimelines();
    state = state.copyWith(timeline: timeline, isLoading: false);
  }
}

final timelineViewModelProvider = StateNotifierProvider<TimelineViewModel, TimelineViewState>(
  (ref) => TimelineViewModel(ref),
);
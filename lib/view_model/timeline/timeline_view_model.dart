import 'package:built_collection/built_collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi/openapi.dart';

import '../../core/exception/repository/repository_exception.dart';
import '../../core/mold/common/result.dart';
import '../../core/mold/model/common_view_state.dart';
import '../../model/view_state/timeline/timeline_view_state.dart';
import '../../repository/impl/timeline_repository_impl.dart';
import '../../repository/interface/timeline_repository.dart';

class TimelineViewModel extends StateNotifier<TimelineViewState> {
  TimelineViewModel(this._ref) : super(const TimelineViewState.loading()) {
    load();
  }

  late final Ref _ref;

  late final TimelineRepository _timelineRepository =
      _ref.read(timelineRepositoryProvider);

  Future<void> load() async {
    state = const TimelineViewState.loading();
    final Result<TimelineViewResp, RepositoryException> result =
        await _timelineRepository.getTimelines(
      pageSize: 20,
    );

    switch (result) {
      case Ok<TimelineViewResp, RepositoryException>(
          value: final TimelineViewResp timelineResp
        ):
        state = TimelineViewState.success(
          TimelineViewSuccessState(
            articleContents: timelineResp.data,
            pageInfo: timelineResp.pageInfo,
          ),
        );
      case Err<TimelineViewResp, RepositoryException>(
          e: final RepositoryException exception
        ):
        state = TimelineViewState.error(exception.toString());
    }
  }

  Future<void> nextDataLoad() async {
    final TimelineViewSuccessState data =
        (state as CommonViewSuccessState<TimelineViewSuccessState>)
            .pageSuccessState;
    if (data.pageInfo.nextPageToken == null) {
      return;
    }
    state = TimelineViewState.success(data.copyWith(isNextLoading: true));
    final Result<TimelineViewResp, RepositoryException> result =
        await _timelineRepository.getTimelines(
      pageSize: 20,
      nextPageToken: data.pageInfo.nextPageToken,
    );
    state = TimelineViewState.success(data.copyWith(isNextLoading: false));
    switch (result) {
      case Ok<TimelineViewResp, RepositoryException>(
          value: final TimelineViewResp timelineResp
        ):
        final BuiltList<ArticleContent> newArticles = BuiltList<ArticleContent>(
            <dynamic>[...data.articleContents, ...timelineResp.data]);
        state = TimelineViewState.success(
          TimelineViewSuccessState(
            articleContents: newArticles,
            pageInfo: timelineResp.pageInfo,
          ),
        );
      case Err<TimelineViewResp, RepositoryException>(
          e: final RepositoryException exception
        ):
        state = TimelineViewState.error(exception.toString());
    }
  }
}

final StateNotifierProvider<TimelineViewModel, TimelineViewState>
    timelineViewModelProvider =
    StateNotifierProvider<TimelineViewModel, TimelineViewState>(
  (Ref ref) => TimelineViewModel(ref),
);

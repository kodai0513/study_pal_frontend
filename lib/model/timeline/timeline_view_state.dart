import 'package:openapi/openapi.dart';


class TimelineViewState {
  final TimelineResp? timeline;
  final bool isLoading;

  TimelineViewState({
    required this.timeline,
    required this.isLoading,
  });

  TimelineViewState copyWith({
    TimelineResp? timeline,
    bool? isLoading,
  }) {
    return TimelineViewState(
      timeline: timeline ?? this.timeline,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  bool get noPosts {
    if(timeline == null) {
      return true;
    }

    if(timeline!.data.isEmpty) {
      return true;
    }

    return false;
  }
}
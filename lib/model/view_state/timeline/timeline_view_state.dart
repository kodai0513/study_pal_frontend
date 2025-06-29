import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openapi/openapi.dart';

part 'timeline_view_state.freezed.dart';

@freezed
abstract class TimelineViewState with _$TimelineViewState {
  const factory TimelineViewState({
    required BuiltList<ArticleView> articleViews,
    required PageInfo pageInfo,
  }) = _TimelineViewState;
}
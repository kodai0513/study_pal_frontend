// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timeline_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TimelineViewState {
  BuiltList<ArticleView> get articleViews;
  PageInfo get pageInfo;

  /// Create a copy of TimelineViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TimelineViewStateCopyWith<TimelineViewState> get copyWith =>
      _$TimelineViewStateCopyWithImpl<TimelineViewState>(
          this as TimelineViewState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimelineViewState &&
            const DeepCollectionEquality()
                .equals(other.articleViews, articleViews) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(articleViews), pageInfo);

  @override
  String toString() {
    return 'TimelineViewState(articleViews: $articleViews, pageInfo: $pageInfo)';
  }
}

/// @nodoc
abstract mixin class $TimelineViewStateCopyWith<$Res> {
  factory $TimelineViewStateCopyWith(
          TimelineViewState value, $Res Function(TimelineViewState) _then) =
      _$TimelineViewStateCopyWithImpl;
  @useResult
  $Res call({BuiltList<ArticleView> articleViews, PageInfo pageInfo});
}

/// @nodoc
class _$TimelineViewStateCopyWithImpl<$Res>
    implements $TimelineViewStateCopyWith<$Res> {
  _$TimelineViewStateCopyWithImpl(this._self, this._then);

  final TimelineViewState _self;
  final $Res Function(TimelineViewState) _then;

  /// Create a copy of TimelineViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleViews = null,
    Object? pageInfo = null,
  }) {
    return _then(_self.copyWith(
      articleViews: null == articleViews
          ? _self.articleViews
          : articleViews // ignore: cast_nullable_to_non_nullable
              as BuiltList<ArticleView>,
      pageInfo: null == pageInfo
          ? _self.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
    ));
  }
}

/// @nodoc

class _TimelineViewState implements TimelineViewState {
  const _TimelineViewState(
      {required this.articleViews, required this.pageInfo});

  @override
  final BuiltList<ArticleView> articleViews;
  @override
  final PageInfo pageInfo;

  /// Create a copy of TimelineViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TimelineViewStateCopyWith<_TimelineViewState> get copyWith =>
      __$TimelineViewStateCopyWithImpl<_TimelineViewState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimelineViewState &&
            const DeepCollectionEquality()
                .equals(other.articleViews, articleViews) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(articleViews), pageInfo);

  @override
  String toString() {
    return 'TimelineViewState(articleViews: $articleViews, pageInfo: $pageInfo)';
  }
}

/// @nodoc
abstract mixin class _$TimelineViewStateCopyWith<$Res>
    implements $TimelineViewStateCopyWith<$Res> {
  factory _$TimelineViewStateCopyWith(
          _TimelineViewState value, $Res Function(_TimelineViewState) _then) =
      __$TimelineViewStateCopyWithImpl;
  @override
  @useResult
  $Res call({BuiltList<ArticleView> articleViews, PageInfo pageInfo});
}

/// @nodoc
class __$TimelineViewStateCopyWithImpl<$Res>
    implements _$TimelineViewStateCopyWith<$Res> {
  __$TimelineViewStateCopyWithImpl(this._self, this._then);

  final _TimelineViewState _self;
  final $Res Function(_TimelineViewState) _then;

  /// Create a copy of TimelineViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? articleViews = null,
    Object? pageInfo = null,
  }) {
    return _then(_TimelineViewState(
      articleViews: null == articleViews
          ? _self.articleViews
          : articleViews // ignore: cast_nullable_to_non_nullable
              as BuiltList<ArticleView>,
      pageInfo: null == pageInfo
          ? _self.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
    ));
  }
}

// dart format on

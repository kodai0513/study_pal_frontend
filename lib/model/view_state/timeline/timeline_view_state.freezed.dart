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
mixin _$TimelineViewSuccessState {
  BuiltList<ArticleContent> get articleContents;
  PageInfo get pageInfo;
  bool get isNextLoading;

  /// Create a copy of TimelineViewSuccessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TimelineViewSuccessStateCopyWith<TimelineViewSuccessState> get copyWith =>
      _$TimelineViewSuccessStateCopyWithImpl<TimelineViewSuccessState>(
          this as TimelineViewSuccessState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TimelineViewSuccessState &&
            const DeepCollectionEquality()
                .equals(other.articleContents, articleContents) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo) &&
            (identical(other.isNextLoading, isNextLoading) ||
                other.isNextLoading == isNextLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articleContents),
      pageInfo,
      isNextLoading);

  @override
  String toString() {
    return 'TimelineViewSuccessState(articleContents: $articleContents, pageInfo: $pageInfo, isNextLoading: $isNextLoading)';
  }
}

/// @nodoc
abstract mixin class $TimelineViewSuccessStateCopyWith<$Res> {
  factory $TimelineViewSuccessStateCopyWith(TimelineViewSuccessState value,
          $Res Function(TimelineViewSuccessState) _then) =
      _$TimelineViewSuccessStateCopyWithImpl;
  @useResult
  $Res call(
      {BuiltList<ArticleContent> articleContents,
      PageInfo pageInfo,
      bool isNextLoading});
}

/// @nodoc
class _$TimelineViewSuccessStateCopyWithImpl<$Res>
    implements $TimelineViewSuccessStateCopyWith<$Res> {
  _$TimelineViewSuccessStateCopyWithImpl(this._self, this._then);

  final TimelineViewSuccessState _self;
  final $Res Function(TimelineViewSuccessState) _then;

  /// Create a copy of TimelineViewSuccessState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleContents = null,
    Object? pageInfo = null,
    Object? isNextLoading = null,
  }) {
    return _then(_self.copyWith(
      articleContents: null == articleContents
          ? _self.articleContents
          : articleContents // ignore: cast_nullable_to_non_nullable
              as BuiltList<ArticleContent>,
      pageInfo: null == pageInfo
          ? _self.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
      isNextLoading: null == isNextLoading
          ? _self.isNextLoading
          : isNextLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _TimelineViewSuccessState implements TimelineViewSuccessState {
  const _TimelineViewSuccessState(
      {required this.articleContents,
      required this.pageInfo,
      this.isNextLoading = false});

  @override
  final BuiltList<ArticleContent> articleContents;
  @override
  final PageInfo pageInfo;
  @override
  @JsonKey()
  final bool isNextLoading;

  /// Create a copy of TimelineViewSuccessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TimelineViewSuccessStateCopyWith<_TimelineViewSuccessState> get copyWith =>
      __$TimelineViewSuccessStateCopyWithImpl<_TimelineViewSuccessState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimelineViewSuccessState &&
            const DeepCollectionEquality()
                .equals(other.articleContents, articleContents) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo) &&
            (identical(other.isNextLoading, isNextLoading) ||
                other.isNextLoading == isNextLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articleContents),
      pageInfo,
      isNextLoading);

  @override
  String toString() {
    return 'TimelineViewSuccessState(articleContents: $articleContents, pageInfo: $pageInfo, isNextLoading: $isNextLoading)';
  }
}

/// @nodoc
abstract mixin class _$TimelineViewSuccessStateCopyWith<$Res>
    implements $TimelineViewSuccessStateCopyWith<$Res> {
  factory _$TimelineViewSuccessStateCopyWith(_TimelineViewSuccessState value,
          $Res Function(_TimelineViewSuccessState) _then) =
      __$TimelineViewSuccessStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {BuiltList<ArticleContent> articleContents,
      PageInfo pageInfo,
      bool isNextLoading});
}

/// @nodoc
class __$TimelineViewSuccessStateCopyWithImpl<$Res>
    implements _$TimelineViewSuccessStateCopyWith<$Res> {
  __$TimelineViewSuccessStateCopyWithImpl(this._self, this._then);

  final _TimelineViewSuccessState _self;
  final $Res Function(_TimelineViewSuccessState) _then;

  /// Create a copy of TimelineViewSuccessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? articleContents = null,
    Object? pageInfo = null,
    Object? isNextLoading = null,
  }) {
    return _then(_TimelineViewSuccessState(
      articleContents: null == articleContents
          ? _self.articleContents
          : articleContents // ignore: cast_nullable_to_non_nullable
              as BuiltList<ArticleContent>,
      pageInfo: null == pageInfo
          ? _self.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
      isNextLoading: null == isNextLoading
          ? _self.isNextLoading
          : isNextLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workbook_search_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkbookSearchListViewSuccessState {
  BuiltList<WorkbookListContent> get workbookContents;
  PageInfo get pageInfo;
  String get keyword;
  bool get isSearch;

  /// Create a copy of WorkbookSearchListViewSuccessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkbookSearchListViewSuccessStateCopyWith<
          WorkbookSearchListViewSuccessState>
      get copyWith => _$WorkbookSearchListViewSuccessStateCopyWithImpl<
              WorkbookSearchListViewSuccessState>(
          this as WorkbookSearchListViewSuccessState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkbookSearchListViewSuccessState &&
            const DeepCollectionEquality()
                .equals(other.workbookContents, workbookContents) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.isSearch, isSearch) ||
                other.isSearch == isSearch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(workbookContents),
      pageInfo,
      keyword,
      isSearch);

  @override
  String toString() {
    return 'WorkbookSearchListViewSuccessState(workbookContents: $workbookContents, pageInfo: $pageInfo, keyword: $keyword, isSearch: $isSearch)';
  }
}

/// @nodoc
abstract mixin class $WorkbookSearchListViewSuccessStateCopyWith<$Res> {
  factory $WorkbookSearchListViewSuccessStateCopyWith(
          WorkbookSearchListViewSuccessState value,
          $Res Function(WorkbookSearchListViewSuccessState) _then) =
      _$WorkbookSearchListViewSuccessStateCopyWithImpl;
  @useResult
  $Res call(
      {BuiltList<WorkbookListContent> workbookContents,
      PageInfo pageInfo,
      String keyword,
      bool isSearch});
}

/// @nodoc
class _$WorkbookSearchListViewSuccessStateCopyWithImpl<$Res>
    implements $WorkbookSearchListViewSuccessStateCopyWith<$Res> {
  _$WorkbookSearchListViewSuccessStateCopyWithImpl(this._self, this._then);

  final WorkbookSearchListViewSuccessState _self;
  final $Res Function(WorkbookSearchListViewSuccessState) _then;

  /// Create a copy of WorkbookSearchListViewSuccessState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workbookContents = null,
    Object? pageInfo = null,
    Object? keyword = null,
    Object? isSearch = null,
  }) {
    return _then(_self.copyWith(
      workbookContents: null == workbookContents
          ? _self.workbookContents
          : workbookContents // ignore: cast_nullable_to_non_nullable
              as BuiltList<WorkbookListContent>,
      pageInfo: null == pageInfo
          ? _self.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
      keyword: null == keyword
          ? _self.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      isSearch: null == isSearch
          ? _self.isSearch
          : isSearch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _WorkbookSearchListViewSuccessState
    implements WorkbookSearchListViewSuccessState {
  const _WorkbookSearchListViewSuccessState(
      {required this.workbookContents,
      required this.pageInfo,
      this.keyword = '',
      this.isSearch = false});

  @override
  final BuiltList<WorkbookListContent> workbookContents;
  @override
  final PageInfo pageInfo;
  @override
  @JsonKey()
  final String keyword;
  @override
  @JsonKey()
  final bool isSearch;

  /// Create a copy of WorkbookSearchListViewSuccessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkbookSearchListViewSuccessStateCopyWith<
          _WorkbookSearchListViewSuccessState>
      get copyWith => __$WorkbookSearchListViewSuccessStateCopyWithImpl<
          _WorkbookSearchListViewSuccessState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkbookSearchListViewSuccessState &&
            const DeepCollectionEquality()
                .equals(other.workbookContents, workbookContents) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.isSearch, isSearch) ||
                other.isSearch == isSearch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(workbookContents),
      pageInfo,
      keyword,
      isSearch);

  @override
  String toString() {
    return 'WorkbookSearchListViewSuccessState(workbookContents: $workbookContents, pageInfo: $pageInfo, keyword: $keyword, isSearch: $isSearch)';
  }
}

/// @nodoc
abstract mixin class _$WorkbookSearchListViewSuccessStateCopyWith<$Res>
    implements $WorkbookSearchListViewSuccessStateCopyWith<$Res> {
  factory _$WorkbookSearchListViewSuccessStateCopyWith(
          _WorkbookSearchListViewSuccessState value,
          $Res Function(_WorkbookSearchListViewSuccessState) _then) =
      __$WorkbookSearchListViewSuccessStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {BuiltList<WorkbookListContent> workbookContents,
      PageInfo pageInfo,
      String keyword,
      bool isSearch});
}

/// @nodoc
class __$WorkbookSearchListViewSuccessStateCopyWithImpl<$Res>
    implements _$WorkbookSearchListViewSuccessStateCopyWith<$Res> {
  __$WorkbookSearchListViewSuccessStateCopyWithImpl(this._self, this._then);

  final _WorkbookSearchListViewSuccessState _self;
  final $Res Function(_WorkbookSearchListViewSuccessState) _then;

  /// Create a copy of WorkbookSearchListViewSuccessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? workbookContents = null,
    Object? pageInfo = null,
    Object? keyword = null,
    Object? isSearch = null,
  }) {
    return _then(_WorkbookSearchListViewSuccessState(
      workbookContents: null == workbookContents
          ? _self.workbookContents
          : workbookContents // ignore: cast_nullable_to_non_nullable
              as BuiltList<WorkbookListContent>,
      pageInfo: null == pageInfo
          ? _self.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
      keyword: null == keyword
          ? _self.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      isSearch: null == isSearch
          ? _self.isSearch
          : isSearch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on

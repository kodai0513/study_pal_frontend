// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workbook_list_view_resp.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkbookListViewResp extends WorkbookListViewResp {
  @override
  final BuiltList<WorkbookListContent> data;
  @override
  final PageInfo pageInfo;

  factory _$WorkbookListViewResp(
          [void Function(WorkbookListViewRespBuilder)? updates]) =>
      (WorkbookListViewRespBuilder()..update(updates))._build();

  _$WorkbookListViewResp._({required this.data, required this.pageInfo})
      : super._();
  @override
  WorkbookListViewResp rebuild(
          void Function(WorkbookListViewRespBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkbookListViewRespBuilder toBuilder() =>
      WorkbookListViewRespBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkbookListViewResp &&
        data == other.data &&
        pageInfo == other.pageInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkbookListViewResp')
          ..add('data', data)
          ..add('pageInfo', pageInfo))
        .toString();
  }
}

class WorkbookListViewRespBuilder
    implements Builder<WorkbookListViewResp, WorkbookListViewRespBuilder> {
  _$WorkbookListViewResp? _$v;

  ListBuilder<WorkbookListContent>? _data;
  ListBuilder<WorkbookListContent> get data =>
      _$this._data ??= ListBuilder<WorkbookListContent>();
  set data(ListBuilder<WorkbookListContent>? data) => _$this._data = data;

  PageInfoBuilder? _pageInfo;
  PageInfoBuilder get pageInfo => _$this._pageInfo ??= PageInfoBuilder();
  set pageInfo(PageInfoBuilder? pageInfo) => _$this._pageInfo = pageInfo;

  WorkbookListViewRespBuilder() {
    WorkbookListViewResp._defaults(this);
  }

  WorkbookListViewRespBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _pageInfo = $v.pageInfo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkbookListViewResp other) {
    _$v = other as _$WorkbookListViewResp;
  }

  @override
  void update(void Function(WorkbookListViewRespBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkbookListViewResp build() => _build();

  _$WorkbookListViewResp _build() {
    _$WorkbookListViewResp _$result;
    try {
      _$result = _$v ??
          _$WorkbookListViewResp._(
            data: data.build(),
            pageInfo: pageInfo.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
        _$failedField = 'pageInfo';
        pageInfo.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkbookListViewResp', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

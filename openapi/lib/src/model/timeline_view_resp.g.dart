// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_view_resp.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimelineViewResp extends TimelineViewResp {
  @override
  final BuiltList<ArticleContent> data;
  @override
  final PageInfo pageInfo;

  factory _$TimelineViewResp(
          [void Function(TimelineViewRespBuilder)? updates]) =>
      (TimelineViewRespBuilder()..update(updates))._build();

  _$TimelineViewResp._({required this.data, required this.pageInfo})
      : super._();
  @override
  TimelineViewResp rebuild(void Function(TimelineViewRespBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimelineViewRespBuilder toBuilder() =>
      TimelineViewRespBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimelineViewResp &&
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
    return (newBuiltValueToStringHelper(r'TimelineViewResp')
          ..add('data', data)
          ..add('pageInfo', pageInfo))
        .toString();
  }
}

class TimelineViewRespBuilder
    implements Builder<TimelineViewResp, TimelineViewRespBuilder> {
  _$TimelineViewResp? _$v;

  ListBuilder<ArticleContent>? _data;
  ListBuilder<ArticleContent> get data =>
      _$this._data ??= ListBuilder<ArticleContent>();
  set data(ListBuilder<ArticleContent>? data) => _$this._data = data;

  PageInfoBuilder? _pageInfo;
  PageInfoBuilder get pageInfo => _$this._pageInfo ??= PageInfoBuilder();
  set pageInfo(PageInfoBuilder? pageInfo) => _$this._pageInfo = pageInfo;

  TimelineViewRespBuilder() {
    TimelineViewResp._defaults(this);
  }

  TimelineViewRespBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _pageInfo = $v.pageInfo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimelineViewResp other) {
    _$v = other as _$TimelineViewResp;
  }

  @override
  void update(void Function(TimelineViewRespBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimelineViewResp build() => _build();

  _$TimelineViewResp _build() {
    _$TimelineViewResp _$result;
    try {
      _$result = _$v ??
          _$TimelineViewResp._(
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
            r'TimelineViewResp', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

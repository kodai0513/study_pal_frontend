// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline_resp.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimelineResp extends TimelineResp {
  @override
  final BuiltList<ArticleView> data;
  @override
  final PageInfo pageInfo;

  factory _$TimelineResp([void Function(TimelineRespBuilder)? updates]) =>
      (TimelineRespBuilder()..update(updates))._build();

  _$TimelineResp._({required this.data, required this.pageInfo}) : super._();
  @override
  TimelineResp rebuild(void Function(TimelineRespBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimelineRespBuilder toBuilder() => TimelineRespBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimelineResp &&
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
    return (newBuiltValueToStringHelper(r'TimelineResp')
          ..add('data', data)
          ..add('pageInfo', pageInfo))
        .toString();
  }
}

class TimelineRespBuilder
    implements Builder<TimelineResp, TimelineRespBuilder> {
  _$TimelineResp? _$v;

  ListBuilder<ArticleView>? _data;
  ListBuilder<ArticleView> get data =>
      _$this._data ??= ListBuilder<ArticleView>();
  set data(ListBuilder<ArticleView>? data) => _$this._data = data;

  PageInfoBuilder? _pageInfo;
  PageInfoBuilder get pageInfo => _$this._pageInfo ??= PageInfoBuilder();
  set pageInfo(PageInfoBuilder? pageInfo) => _$this._pageInfo = pageInfo;

  TimelineRespBuilder() {
    TimelineResp._defaults(this);
  }

  TimelineRespBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _pageInfo = $v.pageInfo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimelineResp other) {
    _$v = other as _$TimelineResp;
  }

  @override
  void update(void Function(TimelineRespBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimelineResp build() => _build();

  _$TimelineResp _build() {
    _$TimelineResp _$result;
    try {
      _$result = _$v ??
          _$TimelineResp._(
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
            r'TimelineResp', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

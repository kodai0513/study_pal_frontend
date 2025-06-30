// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageInfo extends PageInfo {
  @override
  final String? nextPageToken;
  @override
  final int pageSize;
  @override
  final String? prevPageToken;

  factory _$PageInfo([void Function(PageInfoBuilder)? updates]) =>
      (PageInfoBuilder()..update(updates))._build();

  _$PageInfo._({this.nextPageToken, required this.pageSize, this.prevPageToken})
      : super._();
  @override
  PageInfo rebuild(void Function(PageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageInfoBuilder toBuilder() => PageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageInfo &&
        nextPageToken == other.nextPageToken &&
        pageSize == other.pageSize &&
        prevPageToken == other.prevPageToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextPageToken.hashCode);
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jc(_$hash, prevPageToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PageInfo')
          ..add('nextPageToken', nextPageToken)
          ..add('pageSize', pageSize)
          ..add('prevPageToken', prevPageToken))
        .toString();
  }
}

class PageInfoBuilder implements Builder<PageInfo, PageInfoBuilder> {
  _$PageInfo? _$v;

  String? _nextPageToken;
  String? get nextPageToken => _$this._nextPageToken;
  set nextPageToken(String? nextPageToken) =>
      _$this._nextPageToken = nextPageToken;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  String? _prevPageToken;
  String? get prevPageToken => _$this._prevPageToken;
  set prevPageToken(String? prevPageToken) =>
      _$this._prevPageToken = prevPageToken;

  PageInfoBuilder() {
    PageInfo._defaults(this);
  }

  PageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextPageToken = $v.nextPageToken;
      _pageSize = $v.pageSize;
      _prevPageToken = $v.prevPageToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageInfo other) {
    _$v = other as _$PageInfo;
  }

  @override
  void update(void Function(PageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageInfo build() => _build();

  _$PageInfo _build() {
    final _$result = _$v ??
        _$PageInfo._(
          nextPageToken: nextPageToken,
          pageSize: BuiltValueNullFieldError.checkNotNull(
              pageSize, r'PageInfo', 'pageSize'),
          prevPageToken: prevPageToken,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

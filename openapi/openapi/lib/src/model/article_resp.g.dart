// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_resp.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ArticleResp extends ArticleResp {
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String id;
  @override
  final String description;
  @override
  final int? pageId;
  @override
  final String userId;

  factory _$ArticleResp([void Function(ArticleRespBuilder)? updates]) =>
      (ArticleRespBuilder()..update(updates))._build();

  _$ArticleResp._(
      {required this.createdAt,
      required this.updatedAt,
      required this.id,
      required this.description,
      this.pageId,
      required this.userId})
      : super._();
  @override
  ArticleResp rebuild(void Function(ArticleRespBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleRespBuilder toBuilder() => ArticleRespBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticleResp &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        id == other.id &&
        description == other.description &&
        pageId == other.pageId &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, pageId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArticleResp')
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('id', id)
          ..add('description', description)
          ..add('pageId', pageId)
          ..add('userId', userId))
        .toString();
  }
}

class ArticleRespBuilder implements Builder<ArticleResp, ArticleRespBuilder> {
  _$ArticleResp? _$v;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _pageId;
  int? get pageId => _$this._pageId;
  set pageId(int? pageId) => _$this._pageId = pageId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  ArticleRespBuilder() {
    ArticleResp._defaults(this);
  }

  ArticleRespBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _id = $v.id;
      _description = $v.description;
      _pageId = $v.pageId;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArticleResp other) {
    _$v = other as _$ArticleResp;
  }

  @override
  void update(void Function(ArticleRespBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArticleResp build() => _build();

  _$ArticleResp _build() {
    final _$result = _$v ??
        _$ArticleResp._(
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'ArticleResp', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'ArticleResp', 'updatedAt'),
          id: BuiltValueNullFieldError.checkNotNull(id, r'ArticleResp', 'id'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'ArticleResp', 'description'),
          pageId: pageId,
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'ArticleResp', 'userId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

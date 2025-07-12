// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_content.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ArticleContent extends ArticleContent {
  @override
  final String id;
  @override
  final String description;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String? userNickname;

  factory _$ArticleContent([void Function(ArticleContentBuilder)? updates]) =>
      (ArticleContentBuilder()..update(updates))._build();

  _$ArticleContent._(
      {required this.id,
      required this.description,
      required this.userId,
      required this.userName,
      this.userNickname})
      : super._();
  @override
  ArticleContent rebuild(void Function(ArticleContentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleContentBuilder toBuilder() => ArticleContentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticleContent &&
        id == other.id &&
        description == other.description &&
        userId == other.userId &&
        userName == other.userName &&
        userNickname == other.userNickname;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, userNickname.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArticleContent')
          ..add('id', id)
          ..add('description', description)
          ..add('userId', userId)
          ..add('userName', userName)
          ..add('userNickname', userNickname))
        .toString();
  }
}

class ArticleContentBuilder
    implements Builder<ArticleContent, ArticleContentBuilder> {
  _$ArticleContent? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _userNickname;
  String? get userNickname => _$this._userNickname;
  set userNickname(String? userNickname) => _$this._userNickname = userNickname;

  ArticleContentBuilder() {
    ArticleContent._defaults(this);
  }

  ArticleContentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _description = $v.description;
      _userId = $v.userId;
      _userName = $v.userName;
      _userNickname = $v.userNickname;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArticleContent other) {
    _$v = other as _$ArticleContent;
  }

  @override
  void update(void Function(ArticleContentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArticleContent build() => _build();

  _$ArticleContent _build() {
    final _$result = _$v ??
        _$ArticleContent._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ArticleContent', 'id'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'ArticleContent', 'description'),
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'ArticleContent', 'userId'),
          userName: BuiltValueNullFieldError.checkNotNull(
              userName, r'ArticleContent', 'userName'),
          userNickname: userNickname,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

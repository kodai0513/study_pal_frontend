// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_view.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ArticleView extends ArticleView {
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

  factory _$ArticleView([void Function(ArticleViewBuilder)? updates]) =>
      (ArticleViewBuilder()..update(updates))._build();

  _$ArticleView._(
      {required this.id,
      required this.description,
      required this.userId,
      required this.userName,
      this.userNickname})
      : super._();
  @override
  ArticleView rebuild(void Function(ArticleViewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticleViewBuilder toBuilder() => ArticleViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticleView &&
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
    return (newBuiltValueToStringHelper(r'ArticleView')
          ..add('id', id)
          ..add('description', description)
          ..add('userId', userId)
          ..add('userName', userName)
          ..add('userNickname', userNickname))
        .toString();
  }
}

class ArticleViewBuilder implements Builder<ArticleView, ArticleViewBuilder> {
  _$ArticleView? _$v;

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

  ArticleViewBuilder() {
    ArticleView._defaults(this);
  }

  ArticleViewBuilder get _$this {
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
  void replace(ArticleView other) {
    _$v = other as _$ArticleView;
  }

  @override
  void update(void Function(ArticleViewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArticleView build() => _build();

  _$ArticleView _build() {
    final _$result = _$v ??
        _$ArticleView._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'ArticleView', 'id'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'ArticleView', 'description'),
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'ArticleView', 'userId'),
          userName: BuiltValueNullFieldError.checkNotNull(
              userName, r'ArticleView', 'userName'),
          userNickname: userNickname,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

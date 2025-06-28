// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_article_req.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateArticleReq extends CreateArticleReq {
  @override
  final String description;

  factory _$CreateArticleReq(
          [void Function(CreateArticleReqBuilder)? updates]) =>
      (CreateArticleReqBuilder()..update(updates))._build();

  _$CreateArticleReq._({required this.description}) : super._();
  @override
  CreateArticleReq rebuild(void Function(CreateArticleReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateArticleReqBuilder toBuilder() =>
      CreateArticleReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateArticleReq && description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateArticleReq')
          ..add('description', description))
        .toString();
  }
}

class CreateArticleReqBuilder
    implements Builder<CreateArticleReq, CreateArticleReqBuilder> {
  _$CreateArticleReq? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  CreateArticleReqBuilder() {
    CreateArticleReq._defaults(this);
  }

  CreateArticleReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateArticleReq other) {
    _$v = other as _$CreateArticleReq;
  }

  @override
  void update(void Function(CreateArticleReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateArticleReq build() => _build();

  _$CreateArticleReq _build() {
    final _$result = _$v ??
        _$CreateArticleReq._(
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'CreateArticleReq', 'description'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

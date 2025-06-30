// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_article_req.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateArticleReq extends UpdateArticleReq {
  @override
  final String description;

  factory _$UpdateArticleReq(
          [void Function(UpdateArticleReqBuilder)? updates]) =>
      (UpdateArticleReqBuilder()..update(updates))._build();

  _$UpdateArticleReq._({required this.description}) : super._();
  @override
  UpdateArticleReq rebuild(void Function(UpdateArticleReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateArticleReqBuilder toBuilder() =>
      UpdateArticleReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateArticleReq && description == other.description;
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
    return (newBuiltValueToStringHelper(r'UpdateArticleReq')
          ..add('description', description))
        .toString();
  }
}

class UpdateArticleReqBuilder
    implements Builder<UpdateArticleReq, UpdateArticleReqBuilder> {
  _$UpdateArticleReq? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  UpdateArticleReqBuilder() {
    UpdateArticleReq._defaults(this);
  }

  UpdateArticleReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateArticleReq other) {
    _$v = other as _$UpdateArticleReq;
  }

  @override
  void update(void Function(UpdateArticleReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateArticleReq build() => _build();

  _$UpdateArticleReq _build() {
    final _$result = _$v ??
        _$UpdateArticleReq._(
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'UpdateArticleReq', 'description'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

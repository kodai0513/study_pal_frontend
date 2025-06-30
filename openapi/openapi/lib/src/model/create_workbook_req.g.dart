// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_workbook_req.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateWorkbookReq extends CreateWorkbookReq {
  @override
  final String title;
  @override
  final String description;

  factory _$CreateWorkbookReq(
          [void Function(CreateWorkbookReqBuilder)? updates]) =>
      (CreateWorkbookReqBuilder()..update(updates))._build();

  _$CreateWorkbookReq._({required this.title, required this.description})
      : super._();
  @override
  CreateWorkbookReq rebuild(void Function(CreateWorkbookReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateWorkbookReqBuilder toBuilder() =>
      CreateWorkbookReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateWorkbookReq &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateWorkbookReq')
          ..add('title', title)
          ..add('description', description))
        .toString();
  }
}

class CreateWorkbookReqBuilder
    implements Builder<CreateWorkbookReq, CreateWorkbookReqBuilder> {
  _$CreateWorkbookReq? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  CreateWorkbookReqBuilder() {
    CreateWorkbookReq._defaults(this);
  }

  CreateWorkbookReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateWorkbookReq other) {
    _$v = other as _$CreateWorkbookReq;
  }

  @override
  void update(void Function(CreateWorkbookReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateWorkbookReq build() => _build();

  _$CreateWorkbookReq _build() {
    final _$result = _$v ??
        _$CreateWorkbookReq._(
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'CreateWorkbookReq', 'title'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'CreateWorkbookReq', 'description'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workbook_resp.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkbookResp extends WorkbookResp {
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String id;
  @override
  final String description;
  @override
  final bool isPublic;
  @override
  final String title;
  @override
  final String userId;

  factory _$WorkbookResp([void Function(WorkbookRespBuilder)? updates]) =>
      (WorkbookRespBuilder()..update(updates))._build();

  _$WorkbookResp._(
      {required this.createdAt,
      required this.updatedAt,
      required this.id,
      required this.description,
      required this.isPublic,
      required this.title,
      required this.userId})
      : super._();
  @override
  WorkbookResp rebuild(void Function(WorkbookRespBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkbookRespBuilder toBuilder() => WorkbookRespBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkbookResp &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        id == other.id &&
        description == other.description &&
        isPublic == other.isPublic &&
        title == other.title &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkbookResp')
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('id', id)
          ..add('description', description)
          ..add('isPublic', isPublic)
          ..add('title', title)
          ..add('userId', userId))
        .toString();
  }
}

class WorkbookRespBuilder
    implements Builder<WorkbookResp, WorkbookRespBuilder> {
  _$WorkbookResp? _$v;

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

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  WorkbookRespBuilder() {
    WorkbookResp._defaults(this);
  }

  WorkbookRespBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _id = $v.id;
      _description = $v.description;
      _isPublic = $v.isPublic;
      _title = $v.title;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkbookResp other) {
    _$v = other as _$WorkbookResp;
  }

  @override
  void update(void Function(WorkbookRespBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkbookResp build() => _build();

  _$WorkbookResp _build() {
    final _$result = _$v ??
        _$WorkbookResp._(
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'WorkbookResp', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'WorkbookResp', 'updatedAt'),
          id: BuiltValueNullFieldError.checkNotNull(id, r'WorkbookResp', 'id'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'WorkbookResp', 'description'),
          isPublic: BuiltValueNullFieldError.checkNotNull(
              isPublic, r'WorkbookResp', 'isPublic'),
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'WorkbookResp', 'title'),
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'WorkbookResp', 'userId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

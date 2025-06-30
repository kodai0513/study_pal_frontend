// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'description_problem_resp.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescriptionProblemResp extends DescriptionProblemResp {
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String id;
  @override
  final String correctStatement;
  @override
  final String statement;
  @override
  final String workbookId;
  @override
  final String? workbookCategoryId;

  factory _$DescriptionProblemResp(
          [void Function(DescriptionProblemRespBuilder)? updates]) =>
      (DescriptionProblemRespBuilder()..update(updates))._build();

  _$DescriptionProblemResp._(
      {required this.createdAt,
      required this.updatedAt,
      required this.id,
      required this.correctStatement,
      required this.statement,
      required this.workbookId,
      this.workbookCategoryId})
      : super._();
  @override
  DescriptionProblemResp rebuild(
          void Function(DescriptionProblemRespBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescriptionProblemRespBuilder toBuilder() =>
      DescriptionProblemRespBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescriptionProblemResp &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        id == other.id &&
        correctStatement == other.correctStatement &&
        statement == other.statement &&
        workbookId == other.workbookId &&
        workbookCategoryId == other.workbookCategoryId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, correctStatement.hashCode);
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jc(_$hash, workbookId.hashCode);
    _$hash = $jc(_$hash, workbookCategoryId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DescriptionProblemResp')
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('id', id)
          ..add('correctStatement', correctStatement)
          ..add('statement', statement)
          ..add('workbookId', workbookId)
          ..add('workbookCategoryId', workbookCategoryId))
        .toString();
  }
}

class DescriptionProblemRespBuilder
    implements Builder<DescriptionProblemResp, DescriptionProblemRespBuilder> {
  _$DescriptionProblemResp? _$v;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _correctStatement;
  String? get correctStatement => _$this._correctStatement;
  set correctStatement(String? correctStatement) =>
      _$this._correctStatement = correctStatement;

  String? _statement;
  String? get statement => _$this._statement;
  set statement(String? statement) => _$this._statement = statement;

  String? _workbookId;
  String? get workbookId => _$this._workbookId;
  set workbookId(String? workbookId) => _$this._workbookId = workbookId;

  String? _workbookCategoryId;
  String? get workbookCategoryId => _$this._workbookCategoryId;
  set workbookCategoryId(String? workbookCategoryId) =>
      _$this._workbookCategoryId = workbookCategoryId;

  DescriptionProblemRespBuilder() {
    DescriptionProblemResp._defaults(this);
  }

  DescriptionProblemRespBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _id = $v.id;
      _correctStatement = $v.correctStatement;
      _statement = $v.statement;
      _workbookId = $v.workbookId;
      _workbookCategoryId = $v.workbookCategoryId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescriptionProblemResp other) {
    _$v = other as _$DescriptionProblemResp;
  }

  @override
  void update(void Function(DescriptionProblemRespBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescriptionProblemResp build() => _build();

  _$DescriptionProblemResp _build() {
    final _$result = _$v ??
        _$DescriptionProblemResp._(
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'DescriptionProblemResp', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'DescriptionProblemResp', 'updatedAt'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'DescriptionProblemResp', 'id'),
          correctStatement: BuiltValueNullFieldError.checkNotNull(
              correctStatement, r'DescriptionProblemResp', 'correctStatement'),
          statement: BuiltValueNullFieldError.checkNotNull(
              statement, r'DescriptionProblemResp', 'statement'),
          workbookId: BuiltValueNullFieldError.checkNotNull(
              workbookId, r'DescriptionProblemResp', 'workbookId'),
          workbookCategoryId: workbookCategoryId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

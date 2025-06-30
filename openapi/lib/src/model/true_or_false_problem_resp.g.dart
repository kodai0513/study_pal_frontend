// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'true_or_false_problem_resp.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrueOrFalseProblemResp extends TrueOrFalseProblemResp {
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String id;
  @override
  final bool isCorrect;
  @override
  final String statement;
  @override
  final String workbookId;
  @override
  final String? workbookCategoryId;

  factory _$TrueOrFalseProblemResp(
          [void Function(TrueOrFalseProblemRespBuilder)? updates]) =>
      (TrueOrFalseProblemRespBuilder()..update(updates))._build();

  _$TrueOrFalseProblemResp._(
      {required this.createdAt,
      required this.updatedAt,
      required this.id,
      required this.isCorrect,
      required this.statement,
      required this.workbookId,
      this.workbookCategoryId})
      : super._();
  @override
  TrueOrFalseProblemResp rebuild(
          void Function(TrueOrFalseProblemRespBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrueOrFalseProblemRespBuilder toBuilder() =>
      TrueOrFalseProblemRespBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrueOrFalseProblemResp &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        id == other.id &&
        isCorrect == other.isCorrect &&
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
    _$hash = $jc(_$hash, isCorrect.hashCode);
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jc(_$hash, workbookId.hashCode);
    _$hash = $jc(_$hash, workbookCategoryId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrueOrFalseProblemResp')
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('id', id)
          ..add('isCorrect', isCorrect)
          ..add('statement', statement)
          ..add('workbookId', workbookId)
          ..add('workbookCategoryId', workbookCategoryId))
        .toString();
  }
}

class TrueOrFalseProblemRespBuilder
    implements Builder<TrueOrFalseProblemResp, TrueOrFalseProblemRespBuilder> {
  _$TrueOrFalseProblemResp? _$v;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _isCorrect;
  bool? get isCorrect => _$this._isCorrect;
  set isCorrect(bool? isCorrect) => _$this._isCorrect = isCorrect;

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

  TrueOrFalseProblemRespBuilder() {
    TrueOrFalseProblemResp._defaults(this);
  }

  TrueOrFalseProblemRespBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _id = $v.id;
      _isCorrect = $v.isCorrect;
      _statement = $v.statement;
      _workbookId = $v.workbookId;
      _workbookCategoryId = $v.workbookCategoryId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrueOrFalseProblemResp other) {
    _$v = other as _$TrueOrFalseProblemResp;
  }

  @override
  void update(void Function(TrueOrFalseProblemRespBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrueOrFalseProblemResp build() => _build();

  _$TrueOrFalseProblemResp _build() {
    final _$result = _$v ??
        _$TrueOrFalseProblemResp._(
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'TrueOrFalseProblemResp', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'TrueOrFalseProblemResp', 'updatedAt'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'TrueOrFalseProblemResp', 'id'),
          isCorrect: BuiltValueNullFieldError.checkNotNull(
              isCorrect, r'TrueOrFalseProblemResp', 'isCorrect'),
          statement: BuiltValueNullFieldError.checkNotNull(
              statement, r'TrueOrFalseProblemResp', 'statement'),
          workbookId: BuiltValueNullFieldError.checkNotNull(
              workbookId, r'TrueOrFalseProblemResp', 'workbookId'),
          workbookCategoryId: workbookCategoryId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

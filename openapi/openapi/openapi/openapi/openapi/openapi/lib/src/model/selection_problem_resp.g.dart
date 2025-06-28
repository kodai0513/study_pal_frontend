// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selection_problem_resp.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectionProblemResp extends SelectionProblemResp {
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String id;
  @override
  final BuiltList<SelectionProblemAnswerResp> selectionProblemAnswers;
  @override
  final String statement;
  @override
  final String workbookId;
  @override
  final String? workbookCategoryId;

  factory _$SelectionProblemResp(
          [void Function(SelectionProblemRespBuilder)? updates]) =>
      (SelectionProblemRespBuilder()..update(updates))._build();

  _$SelectionProblemResp._(
      {required this.createdAt,
      required this.updatedAt,
      required this.id,
      required this.selectionProblemAnswers,
      required this.statement,
      required this.workbookId,
      this.workbookCategoryId})
      : super._();
  @override
  SelectionProblemResp rebuild(
          void Function(SelectionProblemRespBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectionProblemRespBuilder toBuilder() =>
      SelectionProblemRespBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectionProblemResp &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        id == other.id &&
        selectionProblemAnswers == other.selectionProblemAnswers &&
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
    _$hash = $jc(_$hash, selectionProblemAnswers.hashCode);
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jc(_$hash, workbookId.hashCode);
    _$hash = $jc(_$hash, workbookCategoryId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelectionProblemResp')
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('id', id)
          ..add('selectionProblemAnswers', selectionProblemAnswers)
          ..add('statement', statement)
          ..add('workbookId', workbookId)
          ..add('workbookCategoryId', workbookCategoryId))
        .toString();
  }
}

class SelectionProblemRespBuilder
    implements Builder<SelectionProblemResp, SelectionProblemRespBuilder> {
  _$SelectionProblemResp? _$v;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ListBuilder<SelectionProblemAnswerResp>? _selectionProblemAnswers;
  ListBuilder<SelectionProblemAnswerResp> get selectionProblemAnswers =>
      _$this._selectionProblemAnswers ??=
          ListBuilder<SelectionProblemAnswerResp>();
  set selectionProblemAnswers(
          ListBuilder<SelectionProblemAnswerResp>? selectionProblemAnswers) =>
      _$this._selectionProblemAnswers = selectionProblemAnswers;

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

  SelectionProblemRespBuilder() {
    SelectionProblemResp._defaults(this);
  }

  SelectionProblemRespBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _id = $v.id;
      _selectionProblemAnswers = $v.selectionProblemAnswers.toBuilder();
      _statement = $v.statement;
      _workbookId = $v.workbookId;
      _workbookCategoryId = $v.workbookCategoryId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectionProblemResp other) {
    _$v = other as _$SelectionProblemResp;
  }

  @override
  void update(void Function(SelectionProblemRespBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectionProblemResp build() => _build();

  _$SelectionProblemResp _build() {
    _$SelectionProblemResp _$result;
    try {
      _$result = _$v ??
          _$SelectionProblemResp._(
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'SelectionProblemResp', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'SelectionProblemResp', 'updatedAt'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'SelectionProblemResp', 'id'),
            selectionProblemAnswers: selectionProblemAnswers.build(),
            statement: BuiltValueNullFieldError.checkNotNull(
                statement, r'SelectionProblemResp', 'statement'),
            workbookId: BuiltValueNullFieldError.checkNotNull(
                workbookId, r'SelectionProblemResp', 'workbookId'),
            workbookCategoryId: workbookCategoryId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'selectionProblemAnswers';
        selectionProblemAnswers.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SelectionProblemResp', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

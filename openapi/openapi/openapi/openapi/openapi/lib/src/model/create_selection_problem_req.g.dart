// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_selection_problem_req.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSelectionProblemReq extends CreateSelectionProblemReq {
  @override
  final BuiltList<CreateSelectionProblemAnswerReq> selectionProblemAnswers;
  @override
  final String statement;
  @override
  final String? workbookCategoryId;

  factory _$CreateSelectionProblemReq(
          [void Function(CreateSelectionProblemReqBuilder)? updates]) =>
      (CreateSelectionProblemReqBuilder()..update(updates))._build();

  _$CreateSelectionProblemReq._(
      {required this.selectionProblemAnswers,
      required this.statement,
      this.workbookCategoryId})
      : super._();
  @override
  CreateSelectionProblemReq rebuild(
          void Function(CreateSelectionProblemReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSelectionProblemReqBuilder toBuilder() =>
      CreateSelectionProblemReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSelectionProblemReq &&
        selectionProblemAnswers == other.selectionProblemAnswers &&
        statement == other.statement &&
        workbookCategoryId == other.workbookCategoryId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, selectionProblemAnswers.hashCode);
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jc(_$hash, workbookCategoryId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateSelectionProblemReq')
          ..add('selectionProblemAnswers', selectionProblemAnswers)
          ..add('statement', statement)
          ..add('workbookCategoryId', workbookCategoryId))
        .toString();
  }
}

class CreateSelectionProblemReqBuilder
    implements
        Builder<CreateSelectionProblemReq, CreateSelectionProblemReqBuilder> {
  _$CreateSelectionProblemReq? _$v;

  ListBuilder<CreateSelectionProblemAnswerReq>? _selectionProblemAnswers;
  ListBuilder<CreateSelectionProblemAnswerReq> get selectionProblemAnswers =>
      _$this._selectionProblemAnswers ??=
          ListBuilder<CreateSelectionProblemAnswerReq>();
  set selectionProblemAnswers(
          ListBuilder<CreateSelectionProblemAnswerReq>?
              selectionProblemAnswers) =>
      _$this._selectionProblemAnswers = selectionProblemAnswers;

  String? _statement;
  String? get statement => _$this._statement;
  set statement(String? statement) => _$this._statement = statement;

  String? _workbookCategoryId;
  String? get workbookCategoryId => _$this._workbookCategoryId;
  set workbookCategoryId(String? workbookCategoryId) =>
      _$this._workbookCategoryId = workbookCategoryId;

  CreateSelectionProblemReqBuilder() {
    CreateSelectionProblemReq._defaults(this);
  }

  CreateSelectionProblemReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _selectionProblemAnswers = $v.selectionProblemAnswers.toBuilder();
      _statement = $v.statement;
      _workbookCategoryId = $v.workbookCategoryId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSelectionProblemReq other) {
    _$v = other as _$CreateSelectionProblemReq;
  }

  @override
  void update(void Function(CreateSelectionProblemReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSelectionProblemReq build() => _build();

  _$CreateSelectionProblemReq _build() {
    _$CreateSelectionProblemReq _$result;
    try {
      _$result = _$v ??
          _$CreateSelectionProblemReq._(
            selectionProblemAnswers: selectionProblemAnswers.build(),
            statement: BuiltValueNullFieldError.checkNotNull(
                statement, r'CreateSelectionProblemReq', 'statement'),
            workbookCategoryId: workbookCategoryId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'selectionProblemAnswers';
        selectionProblemAnswers.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateSelectionProblemReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_selection_problem_req.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateSelectionProblemReq extends UpdateSelectionProblemReq {
  @override
  final BuiltList<UpdateSelectionProblemAnswerReq> selectionProblemAnswers;
  @override
  final String statement;
  @override
  final String? workbookCategoryId;

  factory _$UpdateSelectionProblemReq(
          [void Function(UpdateSelectionProblemReqBuilder)? updates]) =>
      (UpdateSelectionProblemReqBuilder()..update(updates))._build();

  _$UpdateSelectionProblemReq._(
      {required this.selectionProblemAnswers,
      required this.statement,
      this.workbookCategoryId})
      : super._();
  @override
  UpdateSelectionProblemReq rebuild(
          void Function(UpdateSelectionProblemReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateSelectionProblemReqBuilder toBuilder() =>
      UpdateSelectionProblemReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSelectionProblemReq &&
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
    return (newBuiltValueToStringHelper(r'UpdateSelectionProblemReq')
          ..add('selectionProblemAnswers', selectionProblemAnswers)
          ..add('statement', statement)
          ..add('workbookCategoryId', workbookCategoryId))
        .toString();
  }
}

class UpdateSelectionProblemReqBuilder
    implements
        Builder<UpdateSelectionProblemReq, UpdateSelectionProblemReqBuilder> {
  _$UpdateSelectionProblemReq? _$v;

  ListBuilder<UpdateSelectionProblemAnswerReq>? _selectionProblemAnswers;
  ListBuilder<UpdateSelectionProblemAnswerReq> get selectionProblemAnswers =>
      _$this._selectionProblemAnswers ??=
          ListBuilder<UpdateSelectionProblemAnswerReq>();
  set selectionProblemAnswers(
          ListBuilder<UpdateSelectionProblemAnswerReq>?
              selectionProblemAnswers) =>
      _$this._selectionProblemAnswers = selectionProblemAnswers;

  String? _statement;
  String? get statement => _$this._statement;
  set statement(String? statement) => _$this._statement = statement;

  String? _workbookCategoryId;
  String? get workbookCategoryId => _$this._workbookCategoryId;
  set workbookCategoryId(String? workbookCategoryId) =>
      _$this._workbookCategoryId = workbookCategoryId;

  UpdateSelectionProblemReqBuilder() {
    UpdateSelectionProblemReq._defaults(this);
  }

  UpdateSelectionProblemReqBuilder get _$this {
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
  void replace(UpdateSelectionProblemReq other) {
    _$v = other as _$UpdateSelectionProblemReq;
  }

  @override
  void update(void Function(UpdateSelectionProblemReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateSelectionProblemReq build() => _build();

  _$UpdateSelectionProblemReq _build() {
    _$UpdateSelectionProblemReq _$result;
    try {
      _$result = _$v ??
          _$UpdateSelectionProblemReq._(
            selectionProblemAnswers: selectionProblemAnswers.build(),
            statement: BuiltValueNullFieldError.checkNotNull(
                statement, r'UpdateSelectionProblemReq', 'statement'),
            workbookCategoryId: workbookCategoryId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'selectionProblemAnswers';
        selectionProblemAnswers.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateSelectionProblemReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

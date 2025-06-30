// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_true_or_false_problem_req.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTrueOrFalseProblemReq extends UpdateTrueOrFalseProblemReq {
  @override
  final bool isCorrect;
  @override
  final String statement;
  @override
  final String? workbookCategoryId;

  factory _$UpdateTrueOrFalseProblemReq(
          [void Function(UpdateTrueOrFalseProblemReqBuilder)? updates]) =>
      (UpdateTrueOrFalseProblemReqBuilder()..update(updates))._build();

  _$UpdateTrueOrFalseProblemReq._(
      {required this.isCorrect,
      required this.statement,
      this.workbookCategoryId})
      : super._();
  @override
  UpdateTrueOrFalseProblemReq rebuild(
          void Function(UpdateTrueOrFalseProblemReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTrueOrFalseProblemReqBuilder toBuilder() =>
      UpdateTrueOrFalseProblemReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTrueOrFalseProblemReq &&
        isCorrect == other.isCorrect &&
        statement == other.statement &&
        workbookCategoryId == other.workbookCategoryId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isCorrect.hashCode);
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jc(_$hash, workbookCategoryId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateTrueOrFalseProblemReq')
          ..add('isCorrect', isCorrect)
          ..add('statement', statement)
          ..add('workbookCategoryId', workbookCategoryId))
        .toString();
  }
}

class UpdateTrueOrFalseProblemReqBuilder
    implements
        Builder<UpdateTrueOrFalseProblemReq,
            UpdateTrueOrFalseProblemReqBuilder> {
  _$UpdateTrueOrFalseProblemReq? _$v;

  bool? _isCorrect;
  bool? get isCorrect => _$this._isCorrect;
  set isCorrect(bool? isCorrect) => _$this._isCorrect = isCorrect;

  String? _statement;
  String? get statement => _$this._statement;
  set statement(String? statement) => _$this._statement = statement;

  String? _workbookCategoryId;
  String? get workbookCategoryId => _$this._workbookCategoryId;
  set workbookCategoryId(String? workbookCategoryId) =>
      _$this._workbookCategoryId = workbookCategoryId;

  UpdateTrueOrFalseProblemReqBuilder() {
    UpdateTrueOrFalseProblemReq._defaults(this);
  }

  UpdateTrueOrFalseProblemReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isCorrect = $v.isCorrect;
      _statement = $v.statement;
      _workbookCategoryId = $v.workbookCategoryId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTrueOrFalseProblemReq other) {
    _$v = other as _$UpdateTrueOrFalseProblemReq;
  }

  @override
  void update(void Function(UpdateTrueOrFalseProblemReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTrueOrFalseProblemReq build() => _build();

  _$UpdateTrueOrFalseProblemReq _build() {
    final _$result = _$v ??
        _$UpdateTrueOrFalseProblemReq._(
          isCorrect: BuiltValueNullFieldError.checkNotNull(
              isCorrect, r'UpdateTrueOrFalseProblemReq', 'isCorrect'),
          statement: BuiltValueNullFieldError.checkNotNull(
              statement, r'UpdateTrueOrFalseProblemReq', 'statement'),
          workbookCategoryId: workbookCategoryId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

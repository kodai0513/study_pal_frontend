// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_true_or_false_problem_req.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTrueOrFalseProblemReq extends CreateTrueOrFalseProblemReq {
  @override
  final bool isCorrect;
  @override
  final String statement;
  @override
  final String? workbookCategoryId;

  factory _$CreateTrueOrFalseProblemReq(
          [void Function(CreateTrueOrFalseProblemReqBuilder)? updates]) =>
      (CreateTrueOrFalseProblemReqBuilder()..update(updates))._build();

  _$CreateTrueOrFalseProblemReq._(
      {required this.isCorrect,
      required this.statement,
      this.workbookCategoryId})
      : super._();
  @override
  CreateTrueOrFalseProblemReq rebuild(
          void Function(CreateTrueOrFalseProblemReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTrueOrFalseProblemReqBuilder toBuilder() =>
      CreateTrueOrFalseProblemReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTrueOrFalseProblemReq &&
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
    return (newBuiltValueToStringHelper(r'CreateTrueOrFalseProblemReq')
          ..add('isCorrect', isCorrect)
          ..add('statement', statement)
          ..add('workbookCategoryId', workbookCategoryId))
        .toString();
  }
}

class CreateTrueOrFalseProblemReqBuilder
    implements
        Builder<CreateTrueOrFalseProblemReq,
            CreateTrueOrFalseProblemReqBuilder> {
  _$CreateTrueOrFalseProblemReq? _$v;

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

  CreateTrueOrFalseProblemReqBuilder() {
    CreateTrueOrFalseProblemReq._defaults(this);
  }

  CreateTrueOrFalseProblemReqBuilder get _$this {
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
  void replace(CreateTrueOrFalseProblemReq other) {
    _$v = other as _$CreateTrueOrFalseProblemReq;
  }

  @override
  void update(void Function(CreateTrueOrFalseProblemReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTrueOrFalseProblemReq build() => _build();

  _$CreateTrueOrFalseProblemReq _build() {
    final _$result = _$v ??
        _$CreateTrueOrFalseProblemReq._(
          isCorrect: BuiltValueNullFieldError.checkNotNull(
              isCorrect, r'CreateTrueOrFalseProblemReq', 'isCorrect'),
          statement: BuiltValueNullFieldError.checkNotNull(
              statement, r'CreateTrueOrFalseProblemReq', 'statement'),
          workbookCategoryId: workbookCategoryId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

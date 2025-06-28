// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_description_problem_req.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateDescriptionProblemReq extends CreateDescriptionProblemReq {
  @override
  final String correctStatement;
  @override
  final String statement;
  @override
  final String? workbookCategoryId;

  factory _$CreateDescriptionProblemReq(
          [void Function(CreateDescriptionProblemReqBuilder)? updates]) =>
      (CreateDescriptionProblemReqBuilder()..update(updates))._build();

  _$CreateDescriptionProblemReq._(
      {required this.correctStatement,
      required this.statement,
      this.workbookCategoryId})
      : super._();
  @override
  CreateDescriptionProblemReq rebuild(
          void Function(CreateDescriptionProblemReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateDescriptionProblemReqBuilder toBuilder() =>
      CreateDescriptionProblemReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateDescriptionProblemReq &&
        correctStatement == other.correctStatement &&
        statement == other.statement &&
        workbookCategoryId == other.workbookCategoryId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, correctStatement.hashCode);
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jc(_$hash, workbookCategoryId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateDescriptionProblemReq')
          ..add('correctStatement', correctStatement)
          ..add('statement', statement)
          ..add('workbookCategoryId', workbookCategoryId))
        .toString();
  }
}

class CreateDescriptionProblemReqBuilder
    implements
        Builder<CreateDescriptionProblemReq,
            CreateDescriptionProblemReqBuilder> {
  _$CreateDescriptionProblemReq? _$v;

  String? _correctStatement;
  String? get correctStatement => _$this._correctStatement;
  set correctStatement(String? correctStatement) =>
      _$this._correctStatement = correctStatement;

  String? _statement;
  String? get statement => _$this._statement;
  set statement(String? statement) => _$this._statement = statement;

  String? _workbookCategoryId;
  String? get workbookCategoryId => _$this._workbookCategoryId;
  set workbookCategoryId(String? workbookCategoryId) =>
      _$this._workbookCategoryId = workbookCategoryId;

  CreateDescriptionProblemReqBuilder() {
    CreateDescriptionProblemReq._defaults(this);
  }

  CreateDescriptionProblemReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _correctStatement = $v.correctStatement;
      _statement = $v.statement;
      _workbookCategoryId = $v.workbookCategoryId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateDescriptionProblemReq other) {
    _$v = other as _$CreateDescriptionProblemReq;
  }

  @override
  void update(void Function(CreateDescriptionProblemReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateDescriptionProblemReq build() => _build();

  _$CreateDescriptionProblemReq _build() {
    final _$result = _$v ??
        _$CreateDescriptionProblemReq._(
          correctStatement: BuiltValueNullFieldError.checkNotNull(
              correctStatement,
              r'CreateDescriptionProblemReq',
              'correctStatement'),
          statement: BuiltValueNullFieldError.checkNotNull(
              statement, r'CreateDescriptionProblemReq', 'statement'),
          workbookCategoryId: workbookCategoryId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

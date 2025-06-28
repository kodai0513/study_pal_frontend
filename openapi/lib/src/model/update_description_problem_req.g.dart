// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_description_problem_req.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateDescriptionProblemReq extends UpdateDescriptionProblemReq {
  @override
  final String correctStatement;
  @override
  final String statement;
  @override
  final String? workbookCategoryId;

  factory _$UpdateDescriptionProblemReq(
          [void Function(UpdateDescriptionProblemReqBuilder)? updates]) =>
      (UpdateDescriptionProblemReqBuilder()..update(updates))._build();

  _$UpdateDescriptionProblemReq._(
      {required this.correctStatement,
      required this.statement,
      this.workbookCategoryId})
      : super._();
  @override
  UpdateDescriptionProblemReq rebuild(
          void Function(UpdateDescriptionProblemReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateDescriptionProblemReqBuilder toBuilder() =>
      UpdateDescriptionProblemReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateDescriptionProblemReq &&
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
    return (newBuiltValueToStringHelper(r'UpdateDescriptionProblemReq')
          ..add('correctStatement', correctStatement)
          ..add('statement', statement)
          ..add('workbookCategoryId', workbookCategoryId))
        .toString();
  }
}

class UpdateDescriptionProblemReqBuilder
    implements
        Builder<UpdateDescriptionProblemReq,
            UpdateDescriptionProblemReqBuilder> {
  _$UpdateDescriptionProblemReq? _$v;

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

  UpdateDescriptionProblemReqBuilder() {
    UpdateDescriptionProblemReq._defaults(this);
  }

  UpdateDescriptionProblemReqBuilder get _$this {
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
  void replace(UpdateDescriptionProblemReq other) {
    _$v = other as _$UpdateDescriptionProblemReq;
  }

  @override
  void update(void Function(UpdateDescriptionProblemReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateDescriptionProblemReq build() => _build();

  _$UpdateDescriptionProblemReq _build() {
    final _$result = _$v ??
        _$UpdateDescriptionProblemReq._(
          correctStatement: BuiltValueNullFieldError.checkNotNull(
              correctStatement,
              r'UpdateDescriptionProblemReq',
              'correctStatement'),
          statement: BuiltValueNullFieldError.checkNotNull(
              statement, r'UpdateDescriptionProblemReq', 'statement'),
          workbookCategoryId: workbookCategoryId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

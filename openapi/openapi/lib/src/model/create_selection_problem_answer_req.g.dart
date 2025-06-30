// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_selection_problem_answer_req.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSelectionProblemAnswerReq
    extends CreateSelectionProblemAnswerReq {
  @override
  final bool isCorrect;
  @override
  final String statement;

  factory _$CreateSelectionProblemAnswerReq(
          [void Function(CreateSelectionProblemAnswerReqBuilder)? updates]) =>
      (CreateSelectionProblemAnswerReqBuilder()..update(updates))._build();

  _$CreateSelectionProblemAnswerReq._(
      {required this.isCorrect, required this.statement})
      : super._();
  @override
  CreateSelectionProblemAnswerReq rebuild(
          void Function(CreateSelectionProblemAnswerReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSelectionProblemAnswerReqBuilder toBuilder() =>
      CreateSelectionProblemAnswerReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSelectionProblemAnswerReq &&
        isCorrect == other.isCorrect &&
        statement == other.statement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isCorrect.hashCode);
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateSelectionProblemAnswerReq')
          ..add('isCorrect', isCorrect)
          ..add('statement', statement))
        .toString();
  }
}

class CreateSelectionProblemAnswerReqBuilder
    implements
        Builder<CreateSelectionProblemAnswerReq,
            CreateSelectionProblemAnswerReqBuilder> {
  _$CreateSelectionProblemAnswerReq? _$v;

  bool? _isCorrect;
  bool? get isCorrect => _$this._isCorrect;
  set isCorrect(bool? isCorrect) => _$this._isCorrect = isCorrect;

  String? _statement;
  String? get statement => _$this._statement;
  set statement(String? statement) => _$this._statement = statement;

  CreateSelectionProblemAnswerReqBuilder() {
    CreateSelectionProblemAnswerReq._defaults(this);
  }

  CreateSelectionProblemAnswerReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isCorrect = $v.isCorrect;
      _statement = $v.statement;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSelectionProblemAnswerReq other) {
    _$v = other as _$CreateSelectionProblemAnswerReq;
  }

  @override
  void update(void Function(CreateSelectionProblemAnswerReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSelectionProblemAnswerReq build() => _build();

  _$CreateSelectionProblemAnswerReq _build() {
    final _$result = _$v ??
        _$CreateSelectionProblemAnswerReq._(
          isCorrect: BuiltValueNullFieldError.checkNotNull(
              isCorrect, r'CreateSelectionProblemAnswerReq', 'isCorrect'),
          statement: BuiltValueNullFieldError.checkNotNull(
              statement, r'CreateSelectionProblemAnswerReq', 'statement'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_selection_problem_answer_req.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateSelectionProblemAnswerReq
    extends UpdateSelectionProblemAnswerReq {
  @override
  final String? id;
  @override
  final bool isCorrect;
  @override
  final bool isDelete;
  @override
  final String statement;

  factory _$UpdateSelectionProblemAnswerReq(
          [void Function(UpdateSelectionProblemAnswerReqBuilder)? updates]) =>
      (UpdateSelectionProblemAnswerReqBuilder()..update(updates))._build();

  _$UpdateSelectionProblemAnswerReq._(
      {this.id,
      required this.isCorrect,
      required this.isDelete,
      required this.statement})
      : super._();
  @override
  UpdateSelectionProblemAnswerReq rebuild(
          void Function(UpdateSelectionProblemAnswerReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateSelectionProblemAnswerReqBuilder toBuilder() =>
      UpdateSelectionProblemAnswerReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSelectionProblemAnswerReq &&
        id == other.id &&
        isCorrect == other.isCorrect &&
        isDelete == other.isDelete &&
        statement == other.statement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isCorrect.hashCode);
    _$hash = $jc(_$hash, isDelete.hashCode);
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateSelectionProblemAnswerReq')
          ..add('id', id)
          ..add('isCorrect', isCorrect)
          ..add('isDelete', isDelete)
          ..add('statement', statement))
        .toString();
  }
}

class UpdateSelectionProblemAnswerReqBuilder
    implements
        Builder<UpdateSelectionProblemAnswerReq,
            UpdateSelectionProblemAnswerReqBuilder> {
  _$UpdateSelectionProblemAnswerReq? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _isCorrect;
  bool? get isCorrect => _$this._isCorrect;
  set isCorrect(bool? isCorrect) => _$this._isCorrect = isCorrect;

  bool? _isDelete;
  bool? get isDelete => _$this._isDelete;
  set isDelete(bool? isDelete) => _$this._isDelete = isDelete;

  String? _statement;
  String? get statement => _$this._statement;
  set statement(String? statement) => _$this._statement = statement;

  UpdateSelectionProblemAnswerReqBuilder() {
    UpdateSelectionProblemAnswerReq._defaults(this);
  }

  UpdateSelectionProblemAnswerReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _isCorrect = $v.isCorrect;
      _isDelete = $v.isDelete;
      _statement = $v.statement;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateSelectionProblemAnswerReq other) {
    _$v = other as _$UpdateSelectionProblemAnswerReq;
  }

  @override
  void update(void Function(UpdateSelectionProblemAnswerReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateSelectionProblemAnswerReq build() => _build();

  _$UpdateSelectionProblemAnswerReq _build() {
    final _$result = _$v ??
        _$UpdateSelectionProblemAnswerReq._(
          id: id,
          isCorrect: BuiltValueNullFieldError.checkNotNull(
              isCorrect, r'UpdateSelectionProblemAnswerReq', 'isCorrect'),
          isDelete: BuiltValueNullFieldError.checkNotNull(
              isDelete, r'UpdateSelectionProblemAnswerReq', 'isDelete'),
          statement: BuiltValueNullFieldError.checkNotNull(
              statement, r'UpdateSelectionProblemAnswerReq', 'statement'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

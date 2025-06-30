// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selection_problem_answer_resp.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectionProblemAnswerResp extends SelectionProblemAnswerResp {
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

  factory _$SelectionProblemAnswerResp(
          [void Function(SelectionProblemAnswerRespBuilder)? updates]) =>
      (SelectionProblemAnswerRespBuilder()..update(updates))._build();

  _$SelectionProblemAnswerResp._(
      {required this.createdAt,
      required this.updatedAt,
      required this.id,
      required this.isCorrect,
      required this.statement})
      : super._();
  @override
  SelectionProblemAnswerResp rebuild(
          void Function(SelectionProblemAnswerRespBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectionProblemAnswerRespBuilder toBuilder() =>
      SelectionProblemAnswerRespBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectionProblemAnswerResp &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        id == other.id &&
        isCorrect == other.isCorrect &&
        statement == other.statement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isCorrect.hashCode);
    _$hash = $jc(_$hash, statement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelectionProblemAnswerResp')
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('id', id)
          ..add('isCorrect', isCorrect)
          ..add('statement', statement))
        .toString();
  }
}

class SelectionProblemAnswerRespBuilder
    implements
        Builder<SelectionProblemAnswerResp, SelectionProblemAnswerRespBuilder> {
  _$SelectionProblemAnswerResp? _$v;

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

  SelectionProblemAnswerRespBuilder() {
    SelectionProblemAnswerResp._defaults(this);
  }

  SelectionProblemAnswerRespBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _id = $v.id;
      _isCorrect = $v.isCorrect;
      _statement = $v.statement;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectionProblemAnswerResp other) {
    _$v = other as _$SelectionProblemAnswerResp;
  }

  @override
  void update(void Function(SelectionProblemAnswerRespBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectionProblemAnswerResp build() => _build();

  _$SelectionProblemAnswerResp _build() {
    final _$result = _$v ??
        _$SelectionProblemAnswerResp._(
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'SelectionProblemAnswerResp', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'SelectionProblemAnswerResp', 'updatedAt'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'SelectionProblemAnswerResp', 'id'),
          isCorrect: BuiltValueNullFieldError.checkNotNull(
              isCorrect, r'SelectionProblemAnswerResp', 'isCorrect'),
          statement: BuiltValueNullFieldError.checkNotNull(
              statement, r'SelectionProblemAnswerResp', 'statement'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

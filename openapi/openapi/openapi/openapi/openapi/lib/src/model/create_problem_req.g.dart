// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_problem_req.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateProblemReq extends CreateProblemReq {
  @override
  final BuiltList<CreateDescriptionProblemReq> descriptionProblems;
  @override
  final BuiltList<CreateSelectionProblemReq> selectionProblems;
  @override
  final BuiltList<CreateTrueOrFalseProblemReq> trueOrFalseProblems;

  factory _$CreateProblemReq(
          [void Function(CreateProblemReqBuilder)? updates]) =>
      (CreateProblemReqBuilder()..update(updates))._build();

  _$CreateProblemReq._(
      {required this.descriptionProblems,
      required this.selectionProblems,
      required this.trueOrFalseProblems})
      : super._();
  @override
  CreateProblemReq rebuild(void Function(CreateProblemReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateProblemReqBuilder toBuilder() =>
      CreateProblemReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateProblemReq &&
        descriptionProblems == other.descriptionProblems &&
        selectionProblems == other.selectionProblems &&
        trueOrFalseProblems == other.trueOrFalseProblems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, descriptionProblems.hashCode);
    _$hash = $jc(_$hash, selectionProblems.hashCode);
    _$hash = $jc(_$hash, trueOrFalseProblems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateProblemReq')
          ..add('descriptionProblems', descriptionProblems)
          ..add('selectionProblems', selectionProblems)
          ..add('trueOrFalseProblems', trueOrFalseProblems))
        .toString();
  }
}

class CreateProblemReqBuilder
    implements Builder<CreateProblemReq, CreateProblemReqBuilder> {
  _$CreateProblemReq? _$v;

  ListBuilder<CreateDescriptionProblemReq>? _descriptionProblems;
  ListBuilder<CreateDescriptionProblemReq> get descriptionProblems =>
      _$this._descriptionProblems ??=
          ListBuilder<CreateDescriptionProblemReq>();
  set descriptionProblems(
          ListBuilder<CreateDescriptionProblemReq>? descriptionProblems) =>
      _$this._descriptionProblems = descriptionProblems;

  ListBuilder<CreateSelectionProblemReq>? _selectionProblems;
  ListBuilder<CreateSelectionProblemReq> get selectionProblems =>
      _$this._selectionProblems ??= ListBuilder<CreateSelectionProblemReq>();
  set selectionProblems(
          ListBuilder<CreateSelectionProblemReq>? selectionProblems) =>
      _$this._selectionProblems = selectionProblems;

  ListBuilder<CreateTrueOrFalseProblemReq>? _trueOrFalseProblems;
  ListBuilder<CreateTrueOrFalseProblemReq> get trueOrFalseProblems =>
      _$this._trueOrFalseProblems ??=
          ListBuilder<CreateTrueOrFalseProblemReq>();
  set trueOrFalseProblems(
          ListBuilder<CreateTrueOrFalseProblemReq>? trueOrFalseProblems) =>
      _$this._trueOrFalseProblems = trueOrFalseProblems;

  CreateProblemReqBuilder() {
    CreateProblemReq._defaults(this);
  }

  CreateProblemReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _descriptionProblems = $v.descriptionProblems.toBuilder();
      _selectionProblems = $v.selectionProblems.toBuilder();
      _trueOrFalseProblems = $v.trueOrFalseProblems.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateProblemReq other) {
    _$v = other as _$CreateProblemReq;
  }

  @override
  void update(void Function(CreateProblemReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateProblemReq build() => _build();

  _$CreateProblemReq _build() {
    _$CreateProblemReq _$result;
    try {
      _$result = _$v ??
          _$CreateProblemReq._(
            descriptionProblems: descriptionProblems.build(),
            selectionProblems: selectionProblems.build(),
            trueOrFalseProblems: trueOrFalseProblems.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'descriptionProblems';
        descriptionProblems.build();
        _$failedField = 'selectionProblems';
        selectionProblems.build();
        _$failedField = 'trueOrFalseProblems';
        trueOrFalseProblems.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateProblemReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

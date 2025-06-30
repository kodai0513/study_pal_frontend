// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem_resp.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProblemResp extends ProblemResp {
  @override
  final BuiltList<DescriptionProblemResp> descriptionProblems;
  @override
  final BuiltList<SelectionProblemResp> selectionProblems;
  @override
  final BuiltList<TrueOrFalseProblemResp> trueOrFalseProblems;

  factory _$ProblemResp([void Function(ProblemRespBuilder)? updates]) =>
      (ProblemRespBuilder()..update(updates))._build();

  _$ProblemResp._(
      {required this.descriptionProblems,
      required this.selectionProblems,
      required this.trueOrFalseProblems})
      : super._();
  @override
  ProblemResp rebuild(void Function(ProblemRespBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProblemRespBuilder toBuilder() => ProblemRespBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProblemResp &&
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
    return (newBuiltValueToStringHelper(r'ProblemResp')
          ..add('descriptionProblems', descriptionProblems)
          ..add('selectionProblems', selectionProblems)
          ..add('trueOrFalseProblems', trueOrFalseProblems))
        .toString();
  }
}

class ProblemRespBuilder implements Builder<ProblemResp, ProblemRespBuilder> {
  _$ProblemResp? _$v;

  ListBuilder<DescriptionProblemResp>? _descriptionProblems;
  ListBuilder<DescriptionProblemResp> get descriptionProblems =>
      _$this._descriptionProblems ??= ListBuilder<DescriptionProblemResp>();
  set descriptionProblems(
          ListBuilder<DescriptionProblemResp>? descriptionProblems) =>
      _$this._descriptionProblems = descriptionProblems;

  ListBuilder<SelectionProblemResp>? _selectionProblems;
  ListBuilder<SelectionProblemResp> get selectionProblems =>
      _$this._selectionProblems ??= ListBuilder<SelectionProblemResp>();
  set selectionProblems(ListBuilder<SelectionProblemResp>? selectionProblems) =>
      _$this._selectionProblems = selectionProblems;

  ListBuilder<TrueOrFalseProblemResp>? _trueOrFalseProblems;
  ListBuilder<TrueOrFalseProblemResp> get trueOrFalseProblems =>
      _$this._trueOrFalseProblems ??= ListBuilder<TrueOrFalseProblemResp>();
  set trueOrFalseProblems(
          ListBuilder<TrueOrFalseProblemResp>? trueOrFalseProblems) =>
      _$this._trueOrFalseProblems = trueOrFalseProblems;

  ProblemRespBuilder() {
    ProblemResp._defaults(this);
  }

  ProblemRespBuilder get _$this {
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
  void replace(ProblemResp other) {
    _$v = other as _$ProblemResp;
  }

  @override
  void update(void Function(ProblemRespBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProblemResp build() => _build();

  _$ProblemResp _build() {
    _$ProblemResp _$result;
    try {
      _$result = _$v ??
          _$ProblemResp._(
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
            r'ProblemResp', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

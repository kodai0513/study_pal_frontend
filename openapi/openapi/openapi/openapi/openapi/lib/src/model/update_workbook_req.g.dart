// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_workbook_req.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateWorkbookReq extends UpdateWorkbookReq {
  @override
  final String title;
  @override
  final String description;

  factory _$UpdateWorkbookReq(
          [void Function(UpdateWorkbookReqBuilder)? updates]) =>
      (UpdateWorkbookReqBuilder()..update(updates))._build();

  _$UpdateWorkbookReq._({required this.title, required this.description})
      : super._();
  @override
  UpdateWorkbookReq rebuild(void Function(UpdateWorkbookReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateWorkbookReqBuilder toBuilder() =>
      UpdateWorkbookReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateWorkbookReq &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateWorkbookReq')
          ..add('title', title)
          ..add('description', description))
        .toString();
  }
}

class UpdateWorkbookReqBuilder
    implements Builder<UpdateWorkbookReq, UpdateWorkbookReqBuilder> {
  _$UpdateWorkbookReq? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  UpdateWorkbookReqBuilder() {
    UpdateWorkbookReq._defaults(this);
  }

  UpdateWorkbookReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateWorkbookReq other) {
    _$v = other as _$UpdateWorkbookReq;
  }

  @override
  void update(void Function(UpdateWorkbookReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateWorkbookReq build() => _build();

  _$UpdateWorkbookReq _build() {
    final _$result = _$v ??
        _$UpdateWorkbookReq._(
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'UpdateWorkbookReq', 'title'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'UpdateWorkbookReq', 'description'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

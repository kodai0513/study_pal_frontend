// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workbook_list_content.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkbookListContent extends WorkbookListContent {
  @override
  final String id;
  @override
  final String description;
  @override
  final String title;

  factory _$WorkbookListContent(
          [void Function(WorkbookListContentBuilder)? updates]) =>
      (WorkbookListContentBuilder()..update(updates))._build();

  _$WorkbookListContent._(
      {required this.id, required this.description, required this.title})
      : super._();
  @override
  WorkbookListContent rebuild(
          void Function(WorkbookListContentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkbookListContentBuilder toBuilder() =>
      WorkbookListContentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkbookListContent &&
        id == other.id &&
        description == other.description &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkbookListContent')
          ..add('id', id)
          ..add('description', description)
          ..add('title', title))
        .toString();
  }
}

class WorkbookListContentBuilder
    implements Builder<WorkbookListContent, WorkbookListContentBuilder> {
  _$WorkbookListContent? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  WorkbookListContentBuilder() {
    WorkbookListContent._defaults(this);
  }

  WorkbookListContentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _description = $v.description;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkbookListContent other) {
    _$v = other as _$WorkbookListContent;
  }

  @override
  void update(void Function(WorkbookListContentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkbookListContent build() => _build();

  _$WorkbookListContent _build() {
    final _$result = _$v ??
        _$WorkbookListContent._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'WorkbookListContent', 'id'),
          description: BuiltValueNullFieldError.checkNotNull(
              description, r'WorkbookListContent', 'description'),
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'WorkbookListContent', 'title'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workbook_list_content.g.dart';

/// WorkbookListContent
///
/// Properties:
/// * [id]
/// * [description]
/// * [title]
@BuiltValue()
abstract class WorkbookListContent
    implements Built<WorkbookListContent, WorkbookListContentBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'title')
  String get title;

  WorkbookListContent._();

  factory WorkbookListContent([void updates(WorkbookListContentBuilder b)]) =
      _$WorkbookListContent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkbookListContentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkbookListContent> get serializer =>
      _$WorkbookListContentSerializer();
}

class _$WorkbookListContentSerializer
    implements PrimitiveSerializer<WorkbookListContent> {
  @override
  final Iterable<Type> types = const [
    WorkbookListContent,
    _$WorkbookListContent
  ];

  @override
  final String wireName = r'WorkbookListContent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkbookListContent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkbookListContent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkbookListContentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkbookListContent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkbookListContentBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

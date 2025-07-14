//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_workbook_req.g.dart';

/// CreateWorkbookReq
///
/// Properties:
/// * [title]
/// * [description]
@BuiltValue()
abstract class CreateWorkbookReq
    implements Built<CreateWorkbookReq, CreateWorkbookReqBuilder> {
  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'description')
  String get description;

  CreateWorkbookReq._();

  factory CreateWorkbookReq([void updates(CreateWorkbookReqBuilder b)]) =
      _$CreateWorkbookReq;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateWorkbookReqBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateWorkbookReq> get serializer =>
      _$CreateWorkbookReqSerializer();
}

class _$CreateWorkbookReqSerializer
    implements PrimitiveSerializer<CreateWorkbookReq> {
  @override
  final Iterable<Type> types = const [CreateWorkbookReq, _$CreateWorkbookReq];

  @override
  final String wireName = r'CreateWorkbookReq';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateWorkbookReq object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateWorkbookReq object, {
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
    required CreateWorkbookReqBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateWorkbookReq deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateWorkbookReqBuilder();
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_workbook_req.g.dart';

/// UpdateWorkbookReq
///
/// Properties:
/// * [title]
/// * [description]
@BuiltValue()
abstract class UpdateWorkbookReq
    implements Built<UpdateWorkbookReq, UpdateWorkbookReqBuilder> {
  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'description')
  String get description;

  UpdateWorkbookReq._();

  factory UpdateWorkbookReq([void updates(UpdateWorkbookReqBuilder b)]) =
      _$UpdateWorkbookReq;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateWorkbookReqBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateWorkbookReq> get serializer =>
      _$UpdateWorkbookReqSerializer();
}

class _$UpdateWorkbookReqSerializer
    implements PrimitiveSerializer<UpdateWorkbookReq> {
  @override
  final Iterable<Type> types = const [UpdateWorkbookReq, _$UpdateWorkbookReq];

  @override
  final String wireName = r'UpdateWorkbookReq';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateWorkbookReq object, {
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
    UpdateWorkbookReq object, {
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
    required UpdateWorkbookReqBuilder result,
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
  UpdateWorkbookReq deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateWorkbookReqBuilder();
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

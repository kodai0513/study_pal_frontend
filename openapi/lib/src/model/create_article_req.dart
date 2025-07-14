//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_article_req.g.dart';

/// CreateArticleReq
///
/// Properties:
/// * [description]
@BuiltValue()
abstract class CreateArticleReq
    implements Built<CreateArticleReq, CreateArticleReqBuilder> {
  @BuiltValueField(wireName: r'description')
  String get description;

  CreateArticleReq._();

  factory CreateArticleReq([void updates(CreateArticleReqBuilder b)]) =
      _$CreateArticleReq;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateArticleReqBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateArticleReq> get serializer =>
      _$CreateArticleReqSerializer();
}

class _$CreateArticleReqSerializer
    implements PrimitiveSerializer<CreateArticleReq> {
  @override
  final Iterable<Type> types = const [CreateArticleReq, _$CreateArticleReq];

  @override
  final String wireName = r'CreateArticleReq';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateArticleReq object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateArticleReq object, {
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
    required CreateArticleReqBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  CreateArticleReq deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateArticleReqBuilder();
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

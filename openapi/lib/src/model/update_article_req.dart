//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_article_req.g.dart';

/// UpdateArticleReq
///
/// Properties:
/// * [description]
@BuiltValue()
abstract class UpdateArticleReq
    implements Built<UpdateArticleReq, UpdateArticleReqBuilder> {
  @BuiltValueField(wireName: r'description')
  String get description;

  UpdateArticleReq._();

  factory UpdateArticleReq([void updates(UpdateArticleReqBuilder b)]) =
      _$UpdateArticleReq;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateArticleReqBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateArticleReq> get serializer =>
      _$UpdateArticleReqSerializer();
}

class _$UpdateArticleReqSerializer
    implements PrimitiveSerializer<UpdateArticleReq> {
  @override
  final Iterable<Type> types = const [UpdateArticleReq, _$UpdateArticleReq];

  @override
  final String wireName = r'UpdateArticleReq';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateArticleReq object, {
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
    UpdateArticleReq object, {
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
    required UpdateArticleReqBuilder result,
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
  UpdateArticleReq deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateArticleReqBuilder();
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_description_problem_req.g.dart';

/// CreateDescriptionProblemReq
///
/// Properties:
/// * [correctStatement] 
/// * [statement] 
/// * [workbookCategoryId] 
@BuiltValue()
abstract class CreateDescriptionProblemReq implements Built<CreateDescriptionProblemReq, CreateDescriptionProblemReqBuilder> {
  @BuiltValueField(wireName: r'correctStatement')
  String get correctStatement;

  @BuiltValueField(wireName: r'statement')
  String get statement;

  @BuiltValueField(wireName: r'workbookCategoryId')
  String? get workbookCategoryId;

  CreateDescriptionProblemReq._();

  factory CreateDescriptionProblemReq([void updates(CreateDescriptionProblemReqBuilder b)]) = _$CreateDescriptionProblemReq;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateDescriptionProblemReqBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateDescriptionProblemReq> get serializer => _$CreateDescriptionProblemReqSerializer();
}

class _$CreateDescriptionProblemReqSerializer implements PrimitiveSerializer<CreateDescriptionProblemReq> {
  @override
  final Iterable<Type> types = const [CreateDescriptionProblemReq, _$CreateDescriptionProblemReq];

  @override
  final String wireName = r'CreateDescriptionProblemReq';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateDescriptionProblemReq object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'correctStatement';
    yield serializers.serialize(
      object.correctStatement,
      specifiedType: const FullType(String),
    );
    yield r'statement';
    yield serializers.serialize(
      object.statement,
      specifiedType: const FullType(String),
    );
    yield r'workbookCategoryId';
    yield object.workbookCategoryId == null ? null : serializers.serialize(
      object.workbookCategoryId,
      specifiedType: const FullType.nullable(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateDescriptionProblemReq object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateDescriptionProblemReqBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'correctStatement':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.correctStatement = valueDes;
          break;
        case r'statement':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statement = valueDes;
          break;
        case r'workbookCategoryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.workbookCategoryId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateDescriptionProblemReq deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDescriptionProblemReqBuilder();
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


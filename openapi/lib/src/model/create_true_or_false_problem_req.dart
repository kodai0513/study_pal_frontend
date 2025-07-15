//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_true_or_false_problem_req.g.dart';

/// CreateTrueOrFalseProblemReq
///
/// Properties:
/// * [isCorrect] 
/// * [statement] 
/// * [workbookCategoryId] 
@BuiltValue()
abstract class CreateTrueOrFalseProblemReq implements Built<CreateTrueOrFalseProblemReq, CreateTrueOrFalseProblemReqBuilder> {
  @BuiltValueField(wireName: r'isCorrect')
  bool get isCorrect;

  @BuiltValueField(wireName: r'statement')
  String get statement;

  @BuiltValueField(wireName: r'workbookCategoryId')
  String? get workbookCategoryId;

  CreateTrueOrFalseProblemReq._();

  factory CreateTrueOrFalseProblemReq([void updates(CreateTrueOrFalseProblemReqBuilder b)]) = _$CreateTrueOrFalseProblemReq;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateTrueOrFalseProblemReqBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateTrueOrFalseProblemReq> get serializer => _$CreateTrueOrFalseProblemReqSerializer();
}

class _$CreateTrueOrFalseProblemReqSerializer implements PrimitiveSerializer<CreateTrueOrFalseProblemReq> {
  @override
  final Iterable<Type> types = const [CreateTrueOrFalseProblemReq, _$CreateTrueOrFalseProblemReq];

  @override
  final String wireName = r'CreateTrueOrFalseProblemReq';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateTrueOrFalseProblemReq object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'isCorrect';
    yield serializers.serialize(
      object.isCorrect,
      specifiedType: const FullType(bool),
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
    CreateTrueOrFalseProblemReq object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateTrueOrFalseProblemReqBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'isCorrect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isCorrect = valueDes;
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
  CreateTrueOrFalseProblemReq deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTrueOrFalseProblemReqBuilder();
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


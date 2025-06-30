//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_selection_problem_answer_req.g.dart';

/// CreateSelectionProblemAnswerReq
///
/// Properties:
/// * [isCorrect] 
/// * [statement] 
@BuiltValue()
abstract class CreateSelectionProblemAnswerReq implements Built<CreateSelectionProblemAnswerReq, CreateSelectionProblemAnswerReqBuilder> {
  @BuiltValueField(wireName: r'isCorrect')
  bool get isCorrect;

  @BuiltValueField(wireName: r'statement')
  String get statement;

  CreateSelectionProblemAnswerReq._();

  factory CreateSelectionProblemAnswerReq([void updates(CreateSelectionProblemAnswerReqBuilder b)]) = _$CreateSelectionProblemAnswerReq;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateSelectionProblemAnswerReqBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateSelectionProblemAnswerReq> get serializer => _$CreateSelectionProblemAnswerReqSerializer();
}

class _$CreateSelectionProblemAnswerReqSerializer implements PrimitiveSerializer<CreateSelectionProblemAnswerReq> {
  @override
  final Iterable<Type> types = const [CreateSelectionProblemAnswerReq, _$CreateSelectionProblemAnswerReq];

  @override
  final String wireName = r'CreateSelectionProblemAnswerReq';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateSelectionProblemAnswerReq object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateSelectionProblemAnswerReq object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateSelectionProblemAnswerReqBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateSelectionProblemAnswerReq deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSelectionProblemAnswerReqBuilder();
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


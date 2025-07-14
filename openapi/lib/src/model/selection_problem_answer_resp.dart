//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'selection_problem_answer_resp.g.dart';

/// SelectionProblemAnswerResp
///
/// Properties:
/// * [createdAt]
/// * [updatedAt]
/// * [id]
/// * [isCorrect]
/// * [statement]
@BuiltValue()
abstract class SelectionProblemAnswerResp
    implements
        Built<SelectionProblemAnswerResp, SelectionProblemAnswerRespBuilder> {
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'isCorrect')
  bool get isCorrect;

  @BuiltValueField(wireName: r'statement')
  String get statement;

  SelectionProblemAnswerResp._();

  factory SelectionProblemAnswerResp(
          [void updates(SelectionProblemAnswerRespBuilder b)]) =
      _$SelectionProblemAnswerResp;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SelectionProblemAnswerRespBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SelectionProblemAnswerResp> get serializer =>
      _$SelectionProblemAnswerRespSerializer();
}

class _$SelectionProblemAnswerRespSerializer
    implements PrimitiveSerializer<SelectionProblemAnswerResp> {
  @override
  final Iterable<Type> types = const [
    SelectionProblemAnswerResp,
    _$SelectionProblemAnswerResp
  ];

  @override
  final String wireName = r'SelectionProblemAnswerResp';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SelectionProblemAnswerResp object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
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
    SelectionProblemAnswerResp object, {
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
    required SelectionProblemAnswerRespBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
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
  SelectionProblemAnswerResp deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SelectionProblemAnswerRespBuilder();
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

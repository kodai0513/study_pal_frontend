//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_selection_problem_answer_req.g.dart';

/// UpdateSelectionProblemAnswerReq
///
/// Properties:
/// * [id]
/// * [isCorrect]
/// * [isDelete]
/// * [statement]
@BuiltValue()
abstract class UpdateSelectionProblemAnswerReq
    implements
        Built<UpdateSelectionProblemAnswerReq,
            UpdateSelectionProblemAnswerReqBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'isCorrect')
  bool get isCorrect;

  @BuiltValueField(wireName: r'isDelete')
  bool get isDelete;

  @BuiltValueField(wireName: r'statement')
  String get statement;

  UpdateSelectionProblemAnswerReq._();

  factory UpdateSelectionProblemAnswerReq(
          [void updates(UpdateSelectionProblemAnswerReqBuilder b)]) =
      _$UpdateSelectionProblemAnswerReq;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateSelectionProblemAnswerReqBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateSelectionProblemAnswerReq> get serializer =>
      _$UpdateSelectionProblemAnswerReqSerializer();
}

class _$UpdateSelectionProblemAnswerReqSerializer
    implements PrimitiveSerializer<UpdateSelectionProblemAnswerReq> {
  @override
  final Iterable<Type> types = const [
    UpdateSelectionProblemAnswerReq,
    _$UpdateSelectionProblemAnswerReq
  ];

  @override
  final String wireName = r'UpdateSelectionProblemAnswerReq';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateSelectionProblemAnswerReq object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield object.id == null
        ? null
        : serializers.serialize(
            object.id,
            specifiedType: const FullType.nullable(String),
          );
    yield r'isCorrect';
    yield serializers.serialize(
      object.isCorrect,
      specifiedType: const FullType(bool),
    );
    yield r'isDelete';
    yield serializers.serialize(
      object.isDelete,
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
    UpdateSelectionProblemAnswerReq object, {
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
    required UpdateSelectionProblemAnswerReqBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'isCorrect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isCorrect = valueDes;
          break;
        case r'isDelete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isDelete = valueDes;
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
  UpdateSelectionProblemAnswerReq deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateSelectionProblemAnswerReqBuilder();
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

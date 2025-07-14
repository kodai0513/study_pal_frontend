//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/update_selection_problem_answer_req.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_selection_problem_req.g.dart';

/// UpdateSelectionProblemReq
///
/// Properties:
/// * [selectionProblemAnswers]
/// * [statement]
/// * [workbookCategoryId]
@BuiltValue()
abstract class UpdateSelectionProblemReq
    implements
        Built<UpdateSelectionProblemReq, UpdateSelectionProblemReqBuilder> {
  @BuiltValueField(wireName: r'selectionProblemAnswers')
  BuiltList<UpdateSelectionProblemAnswerReq> get selectionProblemAnswers;

  @BuiltValueField(wireName: r'statement')
  String get statement;

  @BuiltValueField(wireName: r'workbookCategoryId')
  String? get workbookCategoryId;

  UpdateSelectionProblemReq._();

  factory UpdateSelectionProblemReq(
          [void updates(UpdateSelectionProblemReqBuilder b)]) =
      _$UpdateSelectionProblemReq;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateSelectionProblemReqBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateSelectionProblemReq> get serializer =>
      _$UpdateSelectionProblemReqSerializer();
}

class _$UpdateSelectionProblemReqSerializer
    implements PrimitiveSerializer<UpdateSelectionProblemReq> {
  @override
  final Iterable<Type> types = const [
    UpdateSelectionProblemReq,
    _$UpdateSelectionProblemReq
  ];

  @override
  final String wireName = r'UpdateSelectionProblemReq';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateSelectionProblemReq object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'selectionProblemAnswers';
    yield serializers.serialize(
      object.selectionProblemAnswers,
      specifiedType: const FullType(
          BuiltList, [FullType(UpdateSelectionProblemAnswerReq)]),
    );
    yield r'statement';
    yield serializers.serialize(
      object.statement,
      specifiedType: const FullType(String),
    );
    yield r'workbookCategoryId';
    yield object.workbookCategoryId == null
        ? null
        : serializers.serialize(
            object.workbookCategoryId,
            specifiedType: const FullType.nullable(String),
          );
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateSelectionProblemReq object, {
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
    required UpdateSelectionProblemReqBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'selectionProblemAnswers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(UpdateSelectionProblemAnswerReq)]),
          ) as BuiltList<UpdateSelectionProblemAnswerReq>;
          result.selectionProblemAnswers.replace(valueDes);
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
  UpdateSelectionProblemReq deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateSelectionProblemReqBuilder();
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

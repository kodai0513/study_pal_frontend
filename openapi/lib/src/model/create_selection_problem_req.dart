//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/create_selection_problem_answer_req.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_selection_problem_req.g.dart';

/// CreateSelectionProblemReq
///
/// Properties:
/// * [selectionProblemAnswers] 
/// * [statement] 
/// * [workbookCategoryId] 
@BuiltValue()
abstract class CreateSelectionProblemReq implements Built<CreateSelectionProblemReq, CreateSelectionProblemReqBuilder> {
  @BuiltValueField(wireName: r'selectionProblemAnswers')
  BuiltList<CreateSelectionProblemAnswerReq> get selectionProblemAnswers;

  @BuiltValueField(wireName: r'statement')
  String get statement;

  @BuiltValueField(wireName: r'workbookCategoryId')
  String? get workbookCategoryId;

  CreateSelectionProblemReq._();

  factory CreateSelectionProblemReq([void updates(CreateSelectionProblemReqBuilder b)]) = _$CreateSelectionProblemReq;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateSelectionProblemReqBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateSelectionProblemReq> get serializer => _$CreateSelectionProblemReqSerializer();
}

class _$CreateSelectionProblemReqSerializer implements PrimitiveSerializer<CreateSelectionProblemReq> {
  @override
  final Iterable<Type> types = const [CreateSelectionProblemReq, _$CreateSelectionProblemReq];

  @override
  final String wireName = r'CreateSelectionProblemReq';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateSelectionProblemReq object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'selectionProblemAnswers';
    yield serializers.serialize(
      object.selectionProblemAnswers,
      specifiedType: const FullType(BuiltList, [FullType(CreateSelectionProblemAnswerReq)]),
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
    CreateSelectionProblemReq object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateSelectionProblemReqBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'selectionProblemAnswers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CreateSelectionProblemAnswerReq)]),
          ) as BuiltList<CreateSelectionProblemAnswerReq>;
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
  CreateSelectionProblemReq deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSelectionProblemReqBuilder();
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


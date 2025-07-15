//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/create_true_or_false_problem_req.dart';
import 'package:openapi/src/model/create_selection_problem_req.dart';
import 'package:openapi/src/model/create_description_problem_req.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_problem_req.g.dart';

/// CreateProblemReq
///
/// Properties:
/// * [descriptionProblems] 
/// * [selectionProblems] 
/// * [trueOrFalseProblems] 
@BuiltValue()
abstract class CreateProblemReq implements Built<CreateProblemReq, CreateProblemReqBuilder> {
  @BuiltValueField(wireName: r'descriptionProblems')
  BuiltList<CreateDescriptionProblemReq> get descriptionProblems;

  @BuiltValueField(wireName: r'selectionProblems')
  BuiltList<CreateSelectionProblemReq> get selectionProblems;

  @BuiltValueField(wireName: r'trueOrFalseProblems')
  BuiltList<CreateTrueOrFalseProblemReq> get trueOrFalseProblems;

  CreateProblemReq._();

  factory CreateProblemReq([void updates(CreateProblemReqBuilder b)]) = _$CreateProblemReq;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateProblemReqBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateProblemReq> get serializer => _$CreateProblemReqSerializer();
}

class _$CreateProblemReqSerializer implements PrimitiveSerializer<CreateProblemReq> {
  @override
  final Iterable<Type> types = const [CreateProblemReq, _$CreateProblemReq];

  @override
  final String wireName = r'CreateProblemReq';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateProblemReq object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'descriptionProblems';
    yield serializers.serialize(
      object.descriptionProblems,
      specifiedType: const FullType(BuiltList, [FullType(CreateDescriptionProblemReq)]),
    );
    yield r'selectionProblems';
    yield serializers.serialize(
      object.selectionProblems,
      specifiedType: const FullType(BuiltList, [FullType(CreateSelectionProblemReq)]),
    );
    yield r'trueOrFalseProblems';
    yield serializers.serialize(
      object.trueOrFalseProblems,
      specifiedType: const FullType(BuiltList, [FullType(CreateTrueOrFalseProblemReq)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateProblemReq object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateProblemReqBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'descriptionProblems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CreateDescriptionProblemReq)]),
          ) as BuiltList<CreateDescriptionProblemReq>;
          result.descriptionProblems.replace(valueDes);
          break;
        case r'selectionProblems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CreateSelectionProblemReq)]),
          ) as BuiltList<CreateSelectionProblemReq>;
          result.selectionProblems.replace(valueDes);
          break;
        case r'trueOrFalseProblems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CreateTrueOrFalseProblemReq)]),
          ) as BuiltList<CreateTrueOrFalseProblemReq>;
          result.trueOrFalseProblems.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateProblemReq deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateProblemReqBuilder();
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


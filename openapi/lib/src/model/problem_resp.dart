//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/description_problem_resp.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/true_or_false_problem_resp.dart';
import 'package:openapi/src/model/selection_problem_resp.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'problem_resp.g.dart';

/// ProblemResp
///
/// Properties:
/// * [descriptionProblems]
/// * [selectionProblems]
/// * [trueOrFalseProblems]
@BuiltValue()
abstract class ProblemResp implements Built<ProblemResp, ProblemRespBuilder> {
  @BuiltValueField(wireName: r'descriptionProblems')
  BuiltList<DescriptionProblemResp> get descriptionProblems;

  @BuiltValueField(wireName: r'selectionProblems')
  BuiltList<SelectionProblemResp> get selectionProblems;

  @BuiltValueField(wireName: r'trueOrFalseProblems')
  BuiltList<TrueOrFalseProblemResp> get trueOrFalseProblems;

  ProblemResp._();

  factory ProblemResp([void updates(ProblemRespBuilder b)]) = _$ProblemResp;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProblemRespBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProblemResp> get serializer => _$ProblemRespSerializer();
}

class _$ProblemRespSerializer implements PrimitiveSerializer<ProblemResp> {
  @override
  final Iterable<Type> types = const [ProblemResp, _$ProblemResp];

  @override
  final String wireName = r'ProblemResp';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProblemResp object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'descriptionProblems';
    yield serializers.serialize(
      object.descriptionProblems,
      specifiedType:
          const FullType(BuiltList, [FullType(DescriptionProblemResp)]),
    );
    yield r'selectionProblems';
    yield serializers.serialize(
      object.selectionProblems,
      specifiedType:
          const FullType(BuiltList, [FullType(SelectionProblemResp)]),
    );
    yield r'trueOrFalseProblems';
    yield serializers.serialize(
      object.trueOrFalseProblems,
      specifiedType:
          const FullType(BuiltList, [FullType(TrueOrFalseProblemResp)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProblemResp object, {
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
    required ProblemRespBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'descriptionProblems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(DescriptionProblemResp)]),
          ) as BuiltList<DescriptionProblemResp>;
          result.descriptionProblems.replace(valueDes);
          break;
        case r'selectionProblems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(SelectionProblemResp)]),
          ) as BuiltList<SelectionProblemResp>;
          result.selectionProblems.replace(valueDes);
          break;
        case r'trueOrFalseProblems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(TrueOrFalseProblemResp)]),
          ) as BuiltList<TrueOrFalseProblemResp>;
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
  ProblemResp deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProblemRespBuilder();
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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/selection_problem_answer_resp.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'selection_problem_resp.g.dart';

/// SelectionProblemResp
///
/// Properties:
/// * [createdAt] 
/// * [updatedAt] 
/// * [id] 
/// * [selectionProblemAnswers] 
/// * [statement] 
/// * [workbookId] 
/// * [workbookCategoryId] 
@BuiltValue()
abstract class SelectionProblemResp implements Built<SelectionProblemResp, SelectionProblemRespBuilder> {
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'selectionProblemAnswers')
  BuiltList<SelectionProblemAnswerResp> get selectionProblemAnswers;

  @BuiltValueField(wireName: r'statement')
  String get statement;

  @BuiltValueField(wireName: r'workbookId')
  String get workbookId;

  @BuiltValueField(wireName: r'workbookCategoryId')
  String? get workbookCategoryId;

  SelectionProblemResp._();

  factory SelectionProblemResp([void updates(SelectionProblemRespBuilder b)]) = _$SelectionProblemResp;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SelectionProblemRespBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SelectionProblemResp> get serializer => _$SelectionProblemRespSerializer();
}

class _$SelectionProblemRespSerializer implements PrimitiveSerializer<SelectionProblemResp> {
  @override
  final Iterable<Type> types = const [SelectionProblemResp, _$SelectionProblemResp];

  @override
  final String wireName = r'SelectionProblemResp';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SelectionProblemResp object, {
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
    yield r'selectionProblemAnswers';
    yield serializers.serialize(
      object.selectionProblemAnswers,
      specifiedType: const FullType(BuiltList, [FullType(SelectionProblemAnswerResp)]),
    );
    yield r'statement';
    yield serializers.serialize(
      object.statement,
      specifiedType: const FullType(String),
    );
    yield r'workbookId';
    yield serializers.serialize(
      object.workbookId,
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
    SelectionProblemResp object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SelectionProblemRespBuilder result,
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
        case r'selectionProblemAnswers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SelectionProblemAnswerResp)]),
          ) as BuiltList<SelectionProblemAnswerResp>;
          result.selectionProblemAnswers.replace(valueDes);
          break;
        case r'statement':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statement = valueDes;
          break;
        case r'workbookId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.workbookId = valueDes;
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
  SelectionProblemResp deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SelectionProblemRespBuilder();
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


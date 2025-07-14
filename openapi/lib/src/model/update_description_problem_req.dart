//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_description_problem_req.g.dart';

/// UpdateDescriptionProblemReq
///
/// Properties:
/// * [correctStatement]
/// * [statement]
/// * [workbookCategoryId]
@BuiltValue()
abstract class UpdateDescriptionProblemReq
    implements
        Built<UpdateDescriptionProblemReq, UpdateDescriptionProblemReqBuilder> {
  @BuiltValueField(wireName: r'correctStatement')
  String get correctStatement;

  @BuiltValueField(wireName: r'statement')
  String get statement;

  @BuiltValueField(wireName: r'workbookCategoryId')
  String? get workbookCategoryId;

  UpdateDescriptionProblemReq._();

  factory UpdateDescriptionProblemReq(
          [void updates(UpdateDescriptionProblemReqBuilder b)]) =
      _$UpdateDescriptionProblemReq;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateDescriptionProblemReqBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateDescriptionProblemReq> get serializer =>
      _$UpdateDescriptionProblemReqSerializer();
}

class _$UpdateDescriptionProblemReqSerializer
    implements PrimitiveSerializer<UpdateDescriptionProblemReq> {
  @override
  final Iterable<Type> types = const [
    UpdateDescriptionProblemReq,
    _$UpdateDescriptionProblemReq
  ];

  @override
  final String wireName = r'UpdateDescriptionProblemReq';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateDescriptionProblemReq object, {
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
    UpdateDescriptionProblemReq object, {
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
    required UpdateDescriptionProblemReqBuilder result,
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
  UpdateDescriptionProblemReq deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateDescriptionProblemReqBuilder();
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

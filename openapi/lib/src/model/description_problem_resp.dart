//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'description_problem_resp.g.dart';

/// DescriptionProblemResp
///
/// Properties:
/// * [createdAt]
/// * [updatedAt]
/// * [id]
/// * [correctStatement]
/// * [statement]
/// * [workbookId]
/// * [workbookCategoryId]
@BuiltValue()
abstract class DescriptionProblemResp
    implements Built<DescriptionProblemResp, DescriptionProblemRespBuilder> {
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'correctStatement')
  String get correctStatement;

  @BuiltValueField(wireName: r'statement')
  String get statement;

  @BuiltValueField(wireName: r'workbookId')
  String get workbookId;

  @BuiltValueField(wireName: r'workbookCategoryId')
  String? get workbookCategoryId;

  DescriptionProblemResp._();

  factory DescriptionProblemResp(
          [void updates(DescriptionProblemRespBuilder b)]) =
      _$DescriptionProblemResp;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DescriptionProblemRespBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DescriptionProblemResp> get serializer =>
      _$DescriptionProblemRespSerializer();
}

class _$DescriptionProblemRespSerializer
    implements PrimitiveSerializer<DescriptionProblemResp> {
  @override
  final Iterable<Type> types = const [
    DescriptionProblemResp,
    _$DescriptionProblemResp
  ];

  @override
  final String wireName = r'DescriptionProblemResp';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DescriptionProblemResp object, {
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
    yield r'workbookId';
    yield serializers.serialize(
      object.workbookId,
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
    DescriptionProblemResp object, {
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
    required DescriptionProblemRespBuilder result,
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
  DescriptionProblemResp deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescriptionProblemRespBuilder();
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

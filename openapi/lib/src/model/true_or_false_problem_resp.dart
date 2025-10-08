//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'true_or_false_problem_resp.g.dart';

/// TrueOrFalseProblemResp
///
/// Properties:
/// * [createdAt] 
/// * [updatedAt] 
/// * [id] 
/// * [isCorrect] 
/// * [statement] 
/// * [workbookId] 
/// * [workbookCategoryId] 
@BuiltValue()
abstract class TrueOrFalseProblemResp implements Built<TrueOrFalseProblemResp, TrueOrFalseProblemRespBuilder> {
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

  @BuiltValueField(wireName: r'workbookId')
  String get workbookId;

  @BuiltValueField(wireName: r'workbookCategoryId')
  String? get workbookCategoryId;

  TrueOrFalseProblemResp._();

  factory TrueOrFalseProblemResp([void updates(TrueOrFalseProblemRespBuilder b)]) = _$TrueOrFalseProblemResp;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrueOrFalseProblemRespBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrueOrFalseProblemResp> get serializer => _$TrueOrFalseProblemRespSerializer();
}

class _$TrueOrFalseProblemRespSerializer implements PrimitiveSerializer<TrueOrFalseProblemResp> {
  @override
  final Iterable<Type> types = const [TrueOrFalseProblemResp, _$TrueOrFalseProblemResp];

  @override
  final String wireName = r'TrueOrFalseProblemResp';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrueOrFalseProblemResp object, {
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
    TrueOrFalseProblemResp object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrueOrFalseProblemRespBuilder result,
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
  TrueOrFalseProblemResp deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrueOrFalseProblemRespBuilder();
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


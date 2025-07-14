//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'article_content.g.dart';

/// ArticleContent
///
/// Properties:
/// * [id]
/// * [description]
/// * [userId]
/// * [userName]
/// * [userNickname]
@BuiltValue()
abstract class ArticleContent
    implements Built<ArticleContent, ArticleContentBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'description')
  String get description;

  @BuiltValueField(wireName: r'userId')
  String get userId;

  @BuiltValueField(wireName: r'userName')
  String get userName;

  @BuiltValueField(wireName: r'userNickname')
  String? get userNickname;

  ArticleContent._();

  factory ArticleContent([void updates(ArticleContentBuilder b)]) =
      _$ArticleContent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ArticleContentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ArticleContent> get serializer =>
      _$ArticleContentSerializer();
}

class _$ArticleContentSerializer
    implements PrimitiveSerializer<ArticleContent> {
  @override
  final Iterable<Type> types = const [ArticleContent, _$ArticleContent];

  @override
  final String wireName = r'ArticleContent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ArticleContent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
    yield r'userName';
    yield serializers.serialize(
      object.userName,
      specifiedType: const FullType(String),
    );
    yield r'userNickname';
    yield object.userNickname == null
        ? null
        : serializers.serialize(
            object.userNickname,
            specifiedType: const FullType.nullable(String),
          );
  }

  @override
  Object serialize(
    Serializers serializers,
    ArticleContent object, {
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
    required ArticleContentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'userName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userName = valueDes;
          break;
        case r'userNickname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userNickname = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ArticleContent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ArticleContentBuilder();
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

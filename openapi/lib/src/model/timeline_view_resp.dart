//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/article_content.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/page_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timeline_view_resp.g.dart';

/// TimelineViewResp
///
/// Properties:
/// * [data]
/// * [pageInfo]
@BuiltValue()
abstract class TimelineViewResp
    implements Built<TimelineViewResp, TimelineViewRespBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ArticleContent> get data;

  @BuiltValueField(wireName: r'pageInfo')
  PageInfo get pageInfo;

  TimelineViewResp._();

  factory TimelineViewResp([void updates(TimelineViewRespBuilder b)]) =
      _$TimelineViewResp;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimelineViewRespBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimelineViewResp> get serializer =>
      _$TimelineViewRespSerializer();
}

class _$TimelineViewRespSerializer
    implements PrimitiveSerializer<TimelineViewResp> {
  @override
  final Iterable<Type> types = const [TimelineViewResp, _$TimelineViewResp];

  @override
  final String wireName = r'TimelineViewResp';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimelineViewResp object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(ArticleContent)]),
    );
    yield r'pageInfo';
    yield serializers.serialize(
      object.pageInfo,
      specifiedType: const FullType(PageInfo),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TimelineViewResp object, {
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
    required TimelineViewRespBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(ArticleContent)]),
          ) as BuiltList<ArticleContent>;
          result.data.replace(valueDes);
          break;
        case r'pageInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PageInfo),
          ) as PageInfo;
          result.pageInfo.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimelineViewResp deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimelineViewRespBuilder();
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

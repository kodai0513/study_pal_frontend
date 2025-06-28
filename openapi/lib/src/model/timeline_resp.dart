//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/page_info.dart';
import 'package:openapi/src/model/article_view.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'timeline_resp.g.dart';

/// TimelineResp
///
/// Properties:
/// * [data] 
/// * [pageInfo] 
@BuiltValue()
abstract class TimelineResp implements Built<TimelineResp, TimelineRespBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<ArticleView> get data;

  @BuiltValueField(wireName: r'pageInfo')
  PageInfo get pageInfo;

  TimelineResp._();

  factory TimelineResp([void updates(TimelineRespBuilder b)]) = _$TimelineResp;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimelineRespBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimelineResp> get serializer => _$TimelineRespSerializer();
}

class _$TimelineRespSerializer implements PrimitiveSerializer<TimelineResp> {
  @override
  final Iterable<Type> types = const [TimelineResp, _$TimelineResp];

  @override
  final String wireName = r'TimelineResp';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimelineResp object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(ArticleView)]),
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
    TimelineResp object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TimelineRespBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ArticleView)]),
          ) as BuiltList<ArticleView>;
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
  TimelineResp deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimelineRespBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/workbook_list_content.dart';
import 'package:openapi/src/model/page_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workbook_list_view_resp.g.dart';

/// WorkbookListViewResp
///
/// Properties:
/// * [data]
/// * [pageInfo]
@BuiltValue()
abstract class WorkbookListViewResp
    implements Built<WorkbookListViewResp, WorkbookListViewRespBuilder> {
  @BuiltValueField(wireName: r'data')
  BuiltList<WorkbookListContent> get data;

  @BuiltValueField(wireName: r'pageInfo')
  PageInfo get pageInfo;

  WorkbookListViewResp._();

  factory WorkbookListViewResp([void updates(WorkbookListViewRespBuilder b)]) =
      _$WorkbookListViewResp;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkbookListViewRespBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkbookListViewResp> get serializer =>
      _$WorkbookListViewRespSerializer();
}

class _$WorkbookListViewRespSerializer
    implements PrimitiveSerializer<WorkbookListViewResp> {
  @override
  final Iterable<Type> types = const [
    WorkbookListViewResp,
    _$WorkbookListViewResp
  ];

  @override
  final String wireName = r'WorkbookListViewResp';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkbookListViewResp object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltList, [FullType(WorkbookListContent)]),
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
    WorkbookListViewResp object, {
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
    required WorkbookListViewRespBuilder result,
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
                const FullType(BuiltList, [FullType(WorkbookListContent)]),
          ) as BuiltList<WorkbookListContent>;
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
  WorkbookListViewResp deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkbookListViewRespBuilder();
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

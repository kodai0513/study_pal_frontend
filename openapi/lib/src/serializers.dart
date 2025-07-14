//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:openapi/src/date_serializer.dart';
import 'package:openapi/src/model/date.dart';

import 'package:openapi/src/model/article_content.dart';
import 'package:openapi/src/model/article_resp.dart';
import 'package:openapi/src/model/create_article_req.dart';
import 'package:openapi/src/model/create_description_problem_req.dart';
import 'package:openapi/src/model/create_problem_req.dart';
import 'package:openapi/src/model/create_selection_problem_answer_req.dart';
import 'package:openapi/src/model/create_selection_problem_req.dart';
import 'package:openapi/src/model/create_true_or_false_problem_req.dart';
import 'package:openapi/src/model/create_workbook_req.dart';
import 'package:openapi/src/model/description_problem_resp.dart';
import 'package:openapi/src/model/http_validation_error.dart';
import 'package:openapi/src/model/page_info.dart';
import 'package:openapi/src/model/problem_resp.dart';
import 'package:openapi/src/model/selection_problem_answer_resp.dart';
import 'package:openapi/src/model/selection_problem_resp.dart';
import 'package:openapi/src/model/timeline_view_resp.dart';
import 'package:openapi/src/model/true_or_false_problem_resp.dart';
import 'package:openapi/src/model/update_article_req.dart';
import 'package:openapi/src/model/update_description_problem_req.dart';
import 'package:openapi/src/model/update_selection_problem_answer_req.dart';
import 'package:openapi/src/model/update_selection_problem_req.dart';
import 'package:openapi/src/model/update_true_or_false_problem_req.dart';
import 'package:openapi/src/model/update_workbook_req.dart';
import 'package:openapi/src/model/validation_error.dart';
import 'package:openapi/src/model/validation_error_loc_inner.dart';
import 'package:openapi/src/model/workbook_list_content.dart';
import 'package:openapi/src/model/workbook_list_view_resp.dart';
import 'package:openapi/src/model/workbook_resp.dart';

part 'serializers.g.dart';

@SerializersFor([
  ArticleContent,
  ArticleResp,
  CreateArticleReq,
  CreateDescriptionProblemReq,
  CreateProblemReq,
  CreateSelectionProblemAnswerReq,
  CreateSelectionProblemReq,
  CreateTrueOrFalseProblemReq,
  CreateWorkbookReq,
  DescriptionProblemResp,
  HTTPValidationError,
  PageInfo,
  ProblemResp,
  SelectionProblemAnswerResp,
  SelectionProblemResp,
  TimelineViewResp,
  TrueOrFalseProblemResp,
  UpdateArticleReq,
  UpdateDescriptionProblemReq,
  UpdateSelectionProblemAnswerReq,
  UpdateSelectionProblemReq,
  UpdateTrueOrFalseProblemReq,
  UpdateWorkbookReq,
  ValidationError,
  ValidationErrorLocInner,
  WorkbookListContent,
  WorkbookListViewResp,
  WorkbookResp,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

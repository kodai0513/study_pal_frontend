import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for DefaultApi
void main() {
  final instance = Openapi().getDefaultApi();

  group(DefaultApi, () {
    // Create
    //
    //Future<ArticleResp> createApiV1ArticlesPost(CreateArticleReq createArticleReq) async
    test('test createApiV1ArticlesPost', () async {
      // TODO
    });

    // Create
    //
    //Future<ProblemResp> createApiV1ProblemsWorkbookIdPost(String workbookId, CreateProblemReq createProblemReq) async
    test('test createApiV1ProblemsWorkbookIdPost', () async {
      // TODO
    });

    // Create
    //
    //Future<WorkbookResp> createApiV1WorkbooksPost(CreateWorkbookReq createWorkbookReq) async
    test('test createApiV1WorkbooksPost', () async {
      // TODO
    });

    // Delete
    //
    //Future deleteApiV1ArticlesArticleIdDelete(String articleId) async
    test('test deleteApiV1ArticlesArticleIdDelete', () async {
      // TODO
    });

    // Delete
    //
    //Future deleteApiV1WorkbooksWorkbookIdDelete(String workbookId) async
    test('test deleteApiV1WorkbooksWorkbookIdDelete', () async {
      // TODO
    });

    // Delete
    //
    //Future deleteApiV1WorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdDelete(String descriptionProblemId, String workbookId) async
    test('test deleteApiV1WorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdDelete', () async {
      // TODO
    });

    // Delete
    //
    //Future deleteApiV1WorkbooksWorkbookIdSelectionProblemsSelectionProblemIdDelete(String selectionProblemId, String workbookId) async
    test('test deleteApiV1WorkbooksWorkbookIdSelectionProblemsSelectionProblemIdDelete', () async {
      // TODO
    });

    // Delete
    //
    //Future deleteApiV1WorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdDelete(String trueOrFalseProblemId, String workbookId) async
    test('test deleteApiV1WorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdDelete', () async {
      // TODO
    });

    // Index
    //
    //Future<TimelineResp> indexApiV1TimelinesGet({ String nextPageToken, int pageSize, String prevPageToken }) async
    test('test indexApiV1TimelinesGet', () async {
      // TODO
    });

    // Update
    //
    //Future<ArticleResp> updateApiV1ArticlesArticleIdPut(String articleId, UpdateArticleReq updateArticleReq) async
    test('test updateApiV1ArticlesArticleIdPut', () async {
      // TODO
    });

    // Update
    //
    //Future<DescriptionProblemResp> updateApiV1WorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdPut(String descriptionProblemId, String workbookId, UpdateDescriptionProblemReq updateDescriptionProblemReq) async
    test('test updateApiV1WorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdPut', () async {
      // TODO
    });

    // Update
    //
    //Future<WorkbookResp> updateApiV1WorkbooksWorkbookIdPut(String workbookId, UpdateWorkbookReq updateWorkbookReq) async
    test('test updateApiV1WorkbooksWorkbookIdPut', () async {
      // TODO
    });

    // Update
    //
    //Future<SelectionProblemResp> updateApiV1WorkbooksWorkbookIdSelectionProblemsSelectionProblemIdPut(String selectionProblemId, String workbookId, UpdateSelectionProblemReq updateSelectionProblemReq) async
    test('test updateApiV1WorkbooksWorkbookIdSelectionProblemsSelectionProblemIdPut', () async {
      // TODO
    });

    // Update
    //
    //Future<TrueOrFalseProblemResp> updateApiV1WorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdPut(String trueOrFalseProblemId, String workbookId, UpdateTrueOrFalseProblemReq updateTrueOrFalseProblemReq) async
    test('test updateApiV1WorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdPut', () async {
      // TODO
    });

  });
}

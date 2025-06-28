# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createApiV1ArticlesPost**](DefaultApi.md#createapiv1articlespost) | **POST** /api/v1/articles/ | Create
[**createApiV1ProblemsWorkbookIdPost**](DefaultApi.md#createapiv1problemsworkbookidpost) | **POST** /api/v1/problems/{workbook_id} | Create
[**createApiV1WorkbooksPost**](DefaultApi.md#createapiv1workbookspost) | **POST** /api/v1/workbooks/ | Create
[**deleteApiV1ArticlesArticleIdDelete**](DefaultApi.md#deleteapiv1articlesarticleiddelete) | **DELETE** /api/v1/articles/{article_id} | Delete
[**deleteApiV1WorkbooksWorkbookIdDelete**](DefaultApi.md#deleteapiv1workbooksworkbookiddelete) | **DELETE** /api/v1/workbooks/{workbook_id} | Delete
[**deleteApiV1WorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdDelete**](DefaultApi.md#deleteapiv1workbooksworkbookiddescriptionproblemsdescriptionproblemiddelete) | **DELETE** /api/v1/workbooks/{workbook_id}/description-problems/{description_problem_id} | Delete
[**deleteApiV1WorkbooksWorkbookIdSelectionProblemsSelectionProblemIdDelete**](DefaultApi.md#deleteapiv1workbooksworkbookidselectionproblemsselectionproblemiddelete) | **DELETE** /api/v1/workbooks/{workbook_id}/selection-problems/{selection_problem_id} | Delete
[**deleteApiV1WorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdDelete**](DefaultApi.md#deleteapiv1workbooksworkbookidtrueorfalseproblemstrueorfalseproblemiddelete) | **DELETE** /api/v1/workbooks/{workbook_id}/true-or-false-problems/{true_or_false_problem_id} | Delete
[**indexApiV1TimelinesGet**](DefaultApi.md#indexapiv1timelinesget) | **GET** /api/v1/timelines | Index
[**updateApiV1ArticlesArticleIdPut**](DefaultApi.md#updateapiv1articlesarticleidput) | **PUT** /api/v1/articles/{article_id} | Update
[**updateApiV1WorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdPut**](DefaultApi.md#updateapiv1workbooksworkbookiddescriptionproblemsdescriptionproblemidput) | **PUT** /api/v1/workbooks/{workbook_id}/description-problems/{description_problem_id} | Update
[**updateApiV1WorkbooksWorkbookIdPut**](DefaultApi.md#updateapiv1workbooksworkbookidput) | **PUT** /api/v1/workbooks/{workbook_id} | Update
[**updateApiV1WorkbooksWorkbookIdSelectionProblemsSelectionProblemIdPut**](DefaultApi.md#updateapiv1workbooksworkbookidselectionproblemsselectionproblemidput) | **PUT** /api/v1/workbooks/{workbook_id}/selection-problems/{selection_problem_id} | Update
[**updateApiV1WorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdPut**](DefaultApi.md#updateapiv1workbooksworkbookidtrueorfalseproblemstrueorfalseproblemidput) | **PUT** /api/v1/workbooks/{workbook_id}/true-or-false-problems/{true_or_false_problem_id} | Update


# **createApiV1ArticlesPost**
> ArticleResp createApiV1ArticlesPost(createArticleReq)

Create

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final CreateArticleReq createArticleReq = ; // CreateArticleReq | 

try {
    final response = api.createApiV1ArticlesPost(createArticleReq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->createApiV1ArticlesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createArticleReq** | [**CreateArticleReq**](CreateArticleReq.md)|  | 

### Return type

[**ArticleResp**](ArticleResp.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createApiV1ProblemsWorkbookIdPost**
> ProblemResp createApiV1ProblemsWorkbookIdPost(workbookId, createProblemReq)

Create

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String workbookId = workbookId_example; // String | 
final CreateProblemReq createProblemReq = ; // CreateProblemReq | 

try {
    final response = api.createApiV1ProblemsWorkbookIdPost(workbookId, createProblemReq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->createApiV1ProblemsWorkbookIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workbookId** | **String**|  | 
 **createProblemReq** | [**CreateProblemReq**](CreateProblemReq.md)|  | 

### Return type

[**ProblemResp**](ProblemResp.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createApiV1WorkbooksPost**
> WorkbookResp createApiV1WorkbooksPost(createWorkbookReq)

Create

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final CreateWorkbookReq createWorkbookReq = ; // CreateWorkbookReq | 

try {
    final response = api.createApiV1WorkbooksPost(createWorkbookReq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->createApiV1WorkbooksPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createWorkbookReq** | [**CreateWorkbookReq**](CreateWorkbookReq.md)|  | 

### Return type

[**WorkbookResp**](WorkbookResp.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteApiV1ArticlesArticleIdDelete**
> deleteApiV1ArticlesArticleIdDelete(articleId)

Delete

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String articleId = articleId_example; // String | 

try {
    api.deleteApiV1ArticlesArticleIdDelete(articleId);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->deleteApiV1ArticlesArticleIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteApiV1WorkbooksWorkbookIdDelete**
> deleteApiV1WorkbooksWorkbookIdDelete(workbookId)

Delete

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String workbookId = workbookId_example; // String | 

try {
    api.deleteApiV1WorkbooksWorkbookIdDelete(workbookId);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->deleteApiV1WorkbooksWorkbookIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workbookId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteApiV1WorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdDelete**
> deleteApiV1WorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdDelete(descriptionProblemId, workbookId)

Delete

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String descriptionProblemId = descriptionProblemId_example; // String | 
final String workbookId = workbookId_example; // String | 

try {
    api.deleteApiV1WorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdDelete(descriptionProblemId, workbookId);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->deleteApiV1WorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **descriptionProblemId** | **String**|  | 
 **workbookId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteApiV1WorkbooksWorkbookIdSelectionProblemsSelectionProblemIdDelete**
> deleteApiV1WorkbooksWorkbookIdSelectionProblemsSelectionProblemIdDelete(selectionProblemId, workbookId)

Delete

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String selectionProblemId = selectionProblemId_example; // String | 
final String workbookId = workbookId_example; // String | 

try {
    api.deleteApiV1WorkbooksWorkbookIdSelectionProblemsSelectionProblemIdDelete(selectionProblemId, workbookId);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->deleteApiV1WorkbooksWorkbookIdSelectionProblemsSelectionProblemIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **selectionProblemId** | **String**|  | 
 **workbookId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteApiV1WorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdDelete**
> deleteApiV1WorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdDelete(trueOrFalseProblemId, workbookId)

Delete

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String trueOrFalseProblemId = trueOrFalseProblemId_example; // String | 
final String workbookId = workbookId_example; // String | 

try {
    api.deleteApiV1WorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdDelete(trueOrFalseProblemId, workbookId);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->deleteApiV1WorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trueOrFalseProblemId** | **String**|  | 
 **workbookId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **indexApiV1TimelinesGet**
> TimelineResp indexApiV1TimelinesGet(nextPageToken, pageSize, prevPageToken)

Index

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String nextPageToken = nextPageToken_example; // String | 
final int pageSize = 56; // int | 
final String prevPageToken = prevPageToken_example; // String | 

try {
    final response = api.indexApiV1TimelinesGet(nextPageToken, pageSize, prevPageToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->indexApiV1TimelinesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nextPageToken** | **String**|  | [optional] 
 **pageSize** | **int**|  | [optional] [default to 20]
 **prevPageToken** | **String**|  | [optional] 

### Return type

[**TimelineResp**](TimelineResp.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateApiV1ArticlesArticleIdPut**
> ArticleResp updateApiV1ArticlesArticleIdPut(articleId, updateArticleReq)

Update

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String articleId = articleId_example; // String | 
final UpdateArticleReq updateArticleReq = ; // UpdateArticleReq | 

try {
    final response = api.updateApiV1ArticlesArticleIdPut(articleId, updateArticleReq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->updateApiV1ArticlesArticleIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleId** | **String**|  | 
 **updateArticleReq** | [**UpdateArticleReq**](UpdateArticleReq.md)|  | 

### Return type

[**ArticleResp**](ArticleResp.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateApiV1WorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdPut**
> DescriptionProblemResp updateApiV1WorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdPut(descriptionProblemId, workbookId, updateDescriptionProblemReq)

Update

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String descriptionProblemId = descriptionProblemId_example; // String | 
final String workbookId = workbookId_example; // String | 
final UpdateDescriptionProblemReq updateDescriptionProblemReq = ; // UpdateDescriptionProblemReq | 

try {
    final response = api.updateApiV1WorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdPut(descriptionProblemId, workbookId, updateDescriptionProblemReq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->updateApiV1WorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **descriptionProblemId** | **String**|  | 
 **workbookId** | **String**|  | 
 **updateDescriptionProblemReq** | [**UpdateDescriptionProblemReq**](UpdateDescriptionProblemReq.md)|  | 

### Return type

[**DescriptionProblemResp**](DescriptionProblemResp.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateApiV1WorkbooksWorkbookIdPut**
> WorkbookResp updateApiV1WorkbooksWorkbookIdPut(workbookId, updateWorkbookReq)

Update

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String workbookId = workbookId_example; // String | 
final UpdateWorkbookReq updateWorkbookReq = ; // UpdateWorkbookReq | 

try {
    final response = api.updateApiV1WorkbooksWorkbookIdPut(workbookId, updateWorkbookReq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->updateApiV1WorkbooksWorkbookIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workbookId** | **String**|  | 
 **updateWorkbookReq** | [**UpdateWorkbookReq**](UpdateWorkbookReq.md)|  | 

### Return type

[**WorkbookResp**](WorkbookResp.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateApiV1WorkbooksWorkbookIdSelectionProblemsSelectionProblemIdPut**
> SelectionProblemResp updateApiV1WorkbooksWorkbookIdSelectionProblemsSelectionProblemIdPut(selectionProblemId, workbookId, updateSelectionProblemReq)

Update

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String selectionProblemId = selectionProblemId_example; // String | 
final String workbookId = workbookId_example; // String | 
final UpdateSelectionProblemReq updateSelectionProblemReq = ; // UpdateSelectionProblemReq | 

try {
    final response = api.updateApiV1WorkbooksWorkbookIdSelectionProblemsSelectionProblemIdPut(selectionProblemId, workbookId, updateSelectionProblemReq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->updateApiV1WorkbooksWorkbookIdSelectionProblemsSelectionProblemIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **selectionProblemId** | **String**|  | 
 **workbookId** | **String**|  | 
 **updateSelectionProblemReq** | [**UpdateSelectionProblemReq**](UpdateSelectionProblemReq.md)|  | 

### Return type

[**SelectionProblemResp**](SelectionProblemResp.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateApiV1WorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdPut**
> TrueOrFalseProblemResp updateApiV1WorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdPut(trueOrFalseProblemId, workbookId, updateTrueOrFalseProblemReq)

Update

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String trueOrFalseProblemId = trueOrFalseProblemId_example; // String | 
final String workbookId = workbookId_example; // String | 
final UpdateTrueOrFalseProblemReq updateTrueOrFalseProblemReq = ; // UpdateTrueOrFalseProblemReq | 

try {
    final response = api.updateApiV1WorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdPut(trueOrFalseProblemId, workbookId, updateTrueOrFalseProblemReq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->updateApiV1WorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trueOrFalseProblemId** | **String**|  | 
 **workbookId** | **String**|  | 
 **updateTrueOrFalseProblemReq** | [**UpdateTrueOrFalseProblemReq**](UpdateTrueOrFalseProblemReq.md)|  | 

### Return type

[**TrueOrFalseProblemResp**](TrueOrFalseProblemResp.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


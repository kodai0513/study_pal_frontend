# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createArticlesPost**](DefaultApi.md#createarticlespost) | **POST** /articles/ | Create
[**createProblemsWorkbookIdPost**](DefaultApi.md#createproblemsworkbookidpost) | **POST** /problems/{workbook_id} | Create
[**createWorkbooksPost**](DefaultApi.md#createworkbookspost) | **POST** /workbooks/ | Create
[**deleteArticlesArticleIdDelete**](DefaultApi.md#deletearticlesarticleiddelete) | **DELETE** /articles/{article_id} | Delete
[**deleteWorkbooksWorkbookIdDelete**](DefaultApi.md#deleteworkbooksworkbookiddelete) | **DELETE** /workbooks/{workbook_id} | Delete
[**deleteWorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdDelete**](DefaultApi.md#deleteworkbooksworkbookiddescriptionproblemsdescriptionproblemiddelete) | **DELETE** /workbooks/{workbook_id}/description-problems/{description_problem_id} | Delete
[**deleteWorkbooksWorkbookIdSelectionProblemsSelectionProblemIdDelete**](DefaultApi.md#deleteworkbooksworkbookidselectionproblemsselectionproblemiddelete) | **DELETE** /workbooks/{workbook_id}/selection-problems/{selection_problem_id} | Delete
[**deleteWorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdDelete**](DefaultApi.md#deleteworkbooksworkbookidtrueorfalseproblemstrueorfalseproblemiddelete) | **DELETE** /workbooks/{workbook_id}/true-or-false-problems/{true_or_false_problem_id} | Delete
[**indexTimelinesGet**](DefaultApi.md#indextimelinesget) | **GET** /timelines | Index
[**updateArticlesArticleIdPut**](DefaultApi.md#updatearticlesarticleidput) | **PUT** /articles/{article_id} | Update
[**updateWorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdPut**](DefaultApi.md#updateworkbooksworkbookiddescriptionproblemsdescriptionproblemidput) | **PUT** /workbooks/{workbook_id}/description-problems/{description_problem_id} | Update
[**updateWorkbooksWorkbookIdPut**](DefaultApi.md#updateworkbooksworkbookidput) | **PUT** /workbooks/{workbook_id} | Update
[**updateWorkbooksWorkbookIdSelectionProblemsSelectionProblemIdPut**](DefaultApi.md#updateworkbooksworkbookidselectionproblemsselectionproblemidput) | **PUT** /workbooks/{workbook_id}/selection-problems/{selection_problem_id} | Update
[**updateWorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdPut**](DefaultApi.md#updateworkbooksworkbookidtrueorfalseproblemstrueorfalseproblemidput) | **PUT** /workbooks/{workbook_id}/true-or-false-problems/{true_or_false_problem_id} | Update


# **createArticlesPost**
> ArticleResp createArticlesPost(createArticleReq)

Create

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final CreateArticleReq createArticleReq = ; // CreateArticleReq | 

try {
    final response = api.createArticlesPost(createArticleReq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->createArticlesPost: $e\n');
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

# **createProblemsWorkbookIdPost**
> ProblemResp createProblemsWorkbookIdPost(workbookId, createProblemReq)

Create

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String workbookId = workbookId_example; // String | 
final CreateProblemReq createProblemReq = ; // CreateProblemReq | 

try {
    final response = api.createProblemsWorkbookIdPost(workbookId, createProblemReq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->createProblemsWorkbookIdPost: $e\n');
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

# **createWorkbooksPost**
> WorkbookResp createWorkbooksPost(createWorkbookReq)

Create

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final CreateWorkbookReq createWorkbookReq = ; // CreateWorkbookReq | 

try {
    final response = api.createWorkbooksPost(createWorkbookReq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->createWorkbooksPost: $e\n');
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

# **deleteArticlesArticleIdDelete**
> deleteArticlesArticleIdDelete(articleId)

Delete

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String articleId = articleId_example; // String | 

try {
    api.deleteArticlesArticleIdDelete(articleId);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->deleteArticlesArticleIdDelete: $e\n');
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

# **deleteWorkbooksWorkbookIdDelete**
> deleteWorkbooksWorkbookIdDelete(workbookId)

Delete

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String workbookId = workbookId_example; // String | 

try {
    api.deleteWorkbooksWorkbookIdDelete(workbookId);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->deleteWorkbooksWorkbookIdDelete: $e\n');
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

# **deleteWorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdDelete**
> deleteWorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdDelete(descriptionProblemId, workbookId)

Delete

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String descriptionProblemId = descriptionProblemId_example; // String | 
final String workbookId = workbookId_example; // String | 

try {
    api.deleteWorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdDelete(descriptionProblemId, workbookId);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->deleteWorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdDelete: $e\n');
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

# **deleteWorkbooksWorkbookIdSelectionProblemsSelectionProblemIdDelete**
> deleteWorkbooksWorkbookIdSelectionProblemsSelectionProblemIdDelete(selectionProblemId, workbookId)

Delete

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String selectionProblemId = selectionProblemId_example; // String | 
final String workbookId = workbookId_example; // String | 

try {
    api.deleteWorkbooksWorkbookIdSelectionProblemsSelectionProblemIdDelete(selectionProblemId, workbookId);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->deleteWorkbooksWorkbookIdSelectionProblemsSelectionProblemIdDelete: $e\n');
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

# **deleteWorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdDelete**
> deleteWorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdDelete(trueOrFalseProblemId, workbookId)

Delete

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String trueOrFalseProblemId = trueOrFalseProblemId_example; // String | 
final String workbookId = workbookId_example; // String | 

try {
    api.deleteWorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdDelete(trueOrFalseProblemId, workbookId);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->deleteWorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdDelete: $e\n');
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

# **indexTimelinesGet**
> TimelineResp indexTimelinesGet(nextPageToken, pageSize, prevPageToken)

Index

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String nextPageToken = nextPageToken_example; // String | 
final int pageSize = 56; // int | 
final String prevPageToken = prevPageToken_example; // String | 

try {
    final response = api.indexTimelinesGet(nextPageToken, pageSize, prevPageToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->indexTimelinesGet: $e\n');
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

# **updateArticlesArticleIdPut**
> ArticleResp updateArticlesArticleIdPut(articleId, updateArticleReq)

Update

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String articleId = articleId_example; // String | 
final UpdateArticleReq updateArticleReq = ; // UpdateArticleReq | 

try {
    final response = api.updateArticlesArticleIdPut(articleId, updateArticleReq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->updateArticlesArticleIdPut: $e\n');
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

# **updateWorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdPut**
> DescriptionProblemResp updateWorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdPut(descriptionProblemId, workbookId, updateDescriptionProblemReq)

Update

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String descriptionProblemId = descriptionProblemId_example; // String | 
final String workbookId = workbookId_example; // String | 
final UpdateDescriptionProblemReq updateDescriptionProblemReq = ; // UpdateDescriptionProblemReq | 

try {
    final response = api.updateWorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdPut(descriptionProblemId, workbookId, updateDescriptionProblemReq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->updateWorkbooksWorkbookIdDescriptionProblemsDescriptionProblemIdPut: $e\n');
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

# **updateWorkbooksWorkbookIdPut**
> WorkbookResp updateWorkbooksWorkbookIdPut(workbookId, updateWorkbookReq)

Update

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String workbookId = workbookId_example; // String | 
final UpdateWorkbookReq updateWorkbookReq = ; // UpdateWorkbookReq | 

try {
    final response = api.updateWorkbooksWorkbookIdPut(workbookId, updateWorkbookReq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->updateWorkbooksWorkbookIdPut: $e\n');
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

# **updateWorkbooksWorkbookIdSelectionProblemsSelectionProblemIdPut**
> SelectionProblemResp updateWorkbooksWorkbookIdSelectionProblemsSelectionProblemIdPut(selectionProblemId, workbookId, updateSelectionProblemReq)

Update

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String selectionProblemId = selectionProblemId_example; // String | 
final String workbookId = workbookId_example; // String | 
final UpdateSelectionProblemReq updateSelectionProblemReq = ; // UpdateSelectionProblemReq | 

try {
    final response = api.updateWorkbooksWorkbookIdSelectionProblemsSelectionProblemIdPut(selectionProblemId, workbookId, updateSelectionProblemReq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->updateWorkbooksWorkbookIdSelectionProblemsSelectionProblemIdPut: $e\n');
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

# **updateWorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdPut**
> TrueOrFalseProblemResp updateWorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdPut(trueOrFalseProblemId, workbookId, updateTrueOrFalseProblemReq)

Update

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getDefaultApi();
final String trueOrFalseProblemId = trueOrFalseProblemId_example; // String | 
final String workbookId = workbookId_example; // String | 
final UpdateTrueOrFalseProblemReq updateTrueOrFalseProblemReq = ; // UpdateTrueOrFalseProblemReq | 

try {
    final response = api.updateWorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdPut(trueOrFalseProblemId, workbookId, updateTrueOrFalseProblemReq);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->updateWorkbooksWorkbookIdTrueOrFalseProblemsTrueOrFalseProblemIdPut: $e\n');
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


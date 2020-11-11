# JCAPIv2::GSuiteImportApi

All URIs are relative to *https://console.jumpcloud.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**g_et_gsuites_gsuite_id_import_users**](GSuiteImportApi.md#g_et_gsuites_gsuite_id_import_users) | **GET** /gsuites/{gsuite_id}/import/users | Get a list of users to import


# **g_et_gsuites_gsuite_id_import_users**
> InlineResponse2002 g_et_gsuites_gsuite_id_import_users(gsuite_id, accept, content_type, opts)

Get a list of users to import

Lists G Suite users available for import.

### Example
```ruby
# load the gem
require 'jcapiv2'
# setup authorization
JCAPIv2.configure do |config|
  # Configure API key authorization: x-api-key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = JCAPIv2::GSuiteImportApi.new

gsuite_id = "gsuite_id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  page_token: "page_token_example" # String | Token used to access next page of results.
}

begin
  #Get a list of users to import
  result = api_instance.g_et_gsuites_gsuite_id_import_users(gsuite_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling GSuiteImportApi->g_et_gsuites_gsuite_id_import_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gsuite_id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **limit** | **Integer**| The number of records to return at once. Limited to 100. | [optional] [default to 10]
 **page_token** | **String**| Token used to access next page of results. | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




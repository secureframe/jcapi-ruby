# JCAPIv2::ProvidersApi

All URIs are relative to *https://console.jumpcloud.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**g_et_providers_provider_id_administrators**](ProvidersApi.md#g_et_providers_provider_id_administrators) | **GET** /providers/{provider_id}/administrators | List Provider Administrators
[**p_ost_providers_provider_id_administrators**](ProvidersApi.md#p_ost_providers_provider_id_administrators) | **POST** /providers/{provider_id}/administrators | Create a new Provider Administrator


# **g_et_providers_provider_id_administrators**
> InlineResponse200 g_et_providers_provider_id_administrators(provider_id, accept, content_type, opts)

List Provider Administrators

This endpoint returns a list of the Administrators associated with the Provider. You must be associated with the provider to use this route.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/v2/providers/{ProviderID}/administrators \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' ```

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

api_instance = JCAPIv2::ProvidersApi.new

provider_id = "provider_id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  fields: ["fields_example"], # Array<String> | The comma separated fields included in the returned records. If omitted, the default list of fields will be returned. 
  filter: ["filter_example"], # Array<String> | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  sort: ["sort_example"] # Array<String> | The comma separated fields used to sort the collection. Default sort is ascending, prefix with `-` to sort descending. 
}

begin
  #List Provider Administrators
  result = api_instance.g_et_providers_provider_id_administrators(provider_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling ProvidersApi->g_et_providers_provider_id_administrators: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider_id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **fields** | [**Array&lt;String&gt;**](String.md)| The comma separated fields included in the returned records. If omitted, the default list of fields will be returned.  | [optional] 
 **filter** | [**Array&lt;String&gt;**](String.md)| A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60; | [optional] 
 **limit** | **Integer**| The number of records to return at once. Limited to 100. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_providers_provider_id_administrators**
> Administrator p_ost_providers_provider_id_administrators(provider_id, accept, content_type, opts)

Create a new Provider Administrator

This endpoint allows you to create a provider administrator. You must be associated with the provider to use this route.  #### Sample Request ``` curl -X POST https://console.jumpcloud.com/api/v2/providers/{ProviderID}/administrators \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{     \"email\":\"{ADMIN_EMAIL}\"   }' ```

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

api_instance = JCAPIv2::ProvidersApi.new

provider_id = "provider_id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv2::ProviderAdminReq.new # ProviderAdminReq | 
}

begin
  #Create a new Provider Administrator
  result = api_instance.p_ost_providers_provider_id_administrators(provider_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling ProvidersApi->p_ost_providers_provider_id_administrators: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider_id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**ProviderAdminReq**](ProviderAdminReq.md)|  | [optional] 

### Return type

[**Administrator**](Administrator.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




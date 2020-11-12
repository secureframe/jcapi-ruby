# JCAPIv1::ApplicationTemplatesApi

All URIs are relative to *https://console.jumpcloud.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_application_templates**](ApplicationTemplatesApi.md#get_application_templates) | **GET** /application-templates | List Application Templates
[**get_application_templates_id**](ApplicationTemplatesApi.md#get_application_templates_id) | **GET** /application-templates/{id} | Get an Application Template


# **get_application_templates**
> Applicationtemplateslist get_application_templates(accept, content_type, opts)

List Application Templates

The endpoint returns all the SSO / SAML Application Templates.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/application-templates \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

### Example
```ruby
# load the gem
require 'jcapiv1'
# setup authorization
JCAPIv1.configure do |config|
  # Configure API key authorization: x-api-key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = JCAPIv1::ApplicationTemplatesApi.new

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  fields: "fields_example", # String | The comma separated fields included in the returned records. If omitted the default list of fields will be returned.
  limit: 56, # Integer | The number of records to return at once.
  skip: 56, # Integer | The offset into the records to return.
  sort: "The comma separated fields used to sort the collection. Default sort is ascending, prefix with - to sort descending.", # String | 
  filter: "filter_example", # String | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  x_org_id: "" # String | 
}

begin
  #List Application Templates
  result = api_instance.get_application_templates(accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling ApplicationTemplatesApi->get_application_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**|  | [default to application/json]
 **content_type** | **String**|  | [default to application/json]
 **fields** | **String**| The comma separated fields included in the returned records. If omitted the default list of fields will be returned. | [optional] 
 **limit** | **Integer**| The number of records to return at once. | [optional] 
 **skip** | **Integer**| The offset into the records to return. | [optional] 
 **sort** | **String**|  | [optional] [default to The comma separated fields used to sort the collection. Default sort is ascending, prefix with - to sort descending.]
 **filter** | **String**| A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60; | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Applicationtemplateslist**](Applicationtemplateslist.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_application_templates_id**
> Applicationtemplate get_application_templates_id(id, accept, content_type, opts)

Get an Application Template

The endpoint returns a specific SSO / SAML Application Template.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/application-templates/{id} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

### Example
```ruby
# load the gem
require 'jcapiv1'
# setup authorization
JCAPIv1.configure do |config|
  # Configure API key authorization: x-api-key
  config.api_key['x-api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-api-key'] = 'Bearer'
end

api_instance = JCAPIv1::ApplicationTemplatesApi.new

id = "id_example" # String | 

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  fields: "fields_example", # String | The comma separated fields included in the returned records. If omitted the default list of fields will be returned.
  limit: 56, # Integer | The number of records to return at once.
  skip: 56, # Integer | The offset into the records to return.
  sort: "The comma separated fields used to sort the collection. Default sort is ascending, prefix with - to sort descending.", # String | 
  filter: "filter_example", # String | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  x_org_id: "" # String | 
}

begin
  #Get an Application Template
  result = api_instance.get_application_templates_id(id, accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling ApplicationTemplatesApi->get_application_templates_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **accept** | **String**|  | [default to application/json]
 **content_type** | **String**|  | [default to application/json]
 **fields** | **String**| The comma separated fields included in the returned records. If omitted the default list of fields will be returned. | [optional] 
 **limit** | **Integer**| The number of records to return at once. | [optional] 
 **skip** | **Integer**| The offset into the records to return. | [optional] 
 **sort** | **String**|  | [optional] [default to The comma separated fields used to sort the collection. Default sort is ascending, prefix with - to sort descending.]
 **filter** | **String**| A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60; | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Applicationtemplate**](Applicationtemplate.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined




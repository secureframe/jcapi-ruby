# JCAPIv1::ApplicationsApi

All URIs are relative to *https://console.jumpcloud.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_elete_applications_id**](ApplicationsApi.md#d_elete_applications_id) | **DELETE** /applications/{id} | Delete an Application
[**get_applications**](ApplicationsApi.md#get_applications) | **GET** /applications | Applications
[**get_applications_id**](ApplicationsApi.md#get_applications_id) | **GET** /applications/{id} | Get an Application
[**p_ost_applications**](ApplicationsApi.md#p_ost_applications) | **POST** /applications | Create an Application
[**p_ut_applications_id**](ApplicationsApi.md#p_ut_applications_id) | **PUT** /applications/{id} | Update an Application


# **d_elete_applications_id**
> Application d_elete_applications_id(id, opts)

Delete an Application

The endpoint deletes an SSO / SAML Application.

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

api_instance = JCAPIv1::ApplicationsApi.new

id = "id_example" # String | 

opts = { 
  content_type: "content_type_example", # String | 
  accept: "accept_example", # String | 
  x_org_id: "x_org_id_example" # String | 
}

begin
  #Delete an Application
  result = api_instance.d_elete_applications_id(id, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling ApplicationsApi->d_elete_applications_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **content_type** | **String**|  | [optional] 
 **accept** | **String**|  | [optional] 
 **x_org_id** | **String**|  | [optional] 

### Return type

[**Application**](Application.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_applications**
> Applicationslist get_applications(accept, content_type, opts)

Applications

The endpoint returns all your SSO / SAML Applications.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/applications \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

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

api_instance = JCAPIv1::ApplicationsApi.new

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
  #Applications
  result = api_instance.get_applications(accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling ApplicationsApi->get_applications: #{e}"
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

[**Applicationslist**](Applicationslist.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_applications_id**
> Application get_applications_id(id, opts)

Get an Application

The endpoint retrieves an SSO / SAML Application.

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

api_instance = JCAPIv1::ApplicationsApi.new

id = "id_example" # String | 

opts = { 
  content_type: "content_type_example", # String | 
  accept: "accept_example", # String | 
  x_org_id: "x_org_id_example" # String | 
}

begin
  #Get an Application
  result = api_instance.get_applications_id(id, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling ApplicationsApi->get_applications_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **content_type** | **String**|  | [optional] 
 **accept** | **String**|  | [optional] 
 **x_org_id** | **String**|  | [optional] 

### Return type

[**Application**](Application.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **p_ost_applications**
> Application p_ost_applications(opts)

Create an Application

The endpoint adds a new SSO / SAML Applications.

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

api_instance = JCAPIv1::ApplicationsApi.new

opts = { 
  body: JCAPIv1::Application.new, # Application | 
  content_type: "content_type_example", # String | 
  accept: "accept_example", # String | 
  x_org_id: "x_org_id_example" # String | 
}

begin
  #Create an Application
  result = api_instance.p_ost_applications(opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling ApplicationsApi->p_ost_applications: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Application**](Application.md)|  | [optional] 
 **content_type** | **String**|  | [optional] 
 **accept** | **String**|  | [optional] 
 **x_org_id** | **String**|  | [optional] 

### Return type

[**Application**](Application.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **p_ut_applications_id**
> Application p_ut_applications_id(id, opts)

Update an Application

The endpoint updates a SSO / SAML Application.

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

api_instance = JCAPIv1::ApplicationsApi.new

id = "id_example" # String | 

opts = { 
  body: JCAPIv1::Application.new, # Application | 
  content_type: "content_type_example", # String | 
  accept: "accept_example", # String | 
  x_org_id: "x_org_id_example" # String | 
}

begin
  #Update an Application
  result = api_instance.p_ut_applications_id(id, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling ApplicationsApi->p_ut_applications_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**Application**](Application.md)|  | [optional] 
 **content_type** | **String**|  | [optional] 
 **accept** | **String**|  | [optional] 
 **x_org_id** | **String**|  | [optional] 

### Return type

[**Application**](Application.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined




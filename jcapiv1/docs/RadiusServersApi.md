# JCAPIv1::RadiusServersApi

All URIs are relative to *https://console.jumpcloud.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_elete_radiusservers_id**](RadiusServersApi.md#d_elete_radiusservers_id) | **DELETE** /radiusservers/{id} | Delete Radius Server
[**g_et_radiusservers**](RadiusServersApi.md#g_et_radiusservers) | **GET** /radiusservers | List Radius Servers
[**g_et_radiusservers_id**](RadiusServersApi.md#g_et_radiusservers_id) | **GET** /radiusservers/{id} | Get Radius Server
[**p_ost_radiusservers**](RadiusServersApi.md#p_ost_radiusservers) | **POST** /radiusservers | Create a Radius Server
[**p_ut_radiusservers_id**](RadiusServersApi.md#p_ut_radiusservers_id) | **PUT** /radiusservers/{id} | Update Radius Servers


# **d_elete_radiusservers_id**
> Radiusserverput d_elete_radiusservers_id(id, accept, content_type, opts)

Delete Radius Server

This endpoint allows you to delete RADIUS servers in your organization. ``` curl -X DELETE https://console.jumpcloud.com/api/radiusservers/{ServerID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\ ```

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

api_instance = JCAPIv1::RadiusServersApi.new

id = "id_example" # String | 

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Delete Radius Server
  result = api_instance.d_elete_radiusservers_id(id, accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling RadiusServersApi->d_elete_radiusservers_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **accept** | **String**|  | [default to application/json]
 **content_type** | **String**|  | [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Radiusserverput**](Radiusserverput.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **g_et_radiusservers**
> Radiusserverslist g_et_radiusservers(accept, content_type, opts)

List Radius Servers

This endpoint allows you to get a list of all RADIUS servers in your organization.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/radiusservers/ \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\ ```

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

api_instance = JCAPIv1::RadiusServersApi.new

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  fields: "", # String | Use a space seperated string of field parameters to include the data in the response. If omitted, the default list of fields will be returned. 
  filter: "filter_example", # String | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  sort: "", # String | Use space separated sort parameters to sort the collection. Default sort is ascending. Prefix with `-` to sort descending. 
  x_org_id: "" # String | 
}

begin
  #List Radius Servers
  result = api_instance.g_et_radiusservers(accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling RadiusServersApi->g_et_radiusservers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**|  | [default to application/json]
 **content_type** | **String**|  | [default to application/json]
 **fields** | **String**| Use a space seperated string of field parameters to include the data in the response. If omitted, the default list of fields will be returned.  | [optional] [default to ]
 **filter** | **String**| A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60; | [optional] 
 **limit** | **Integer**| The number of records to return at once. Limited to 100. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **sort** | **String**| Use space separated sort parameters to sort the collection. Default sort is ascending. Prefix with &#x60;-&#x60; to sort descending.  | [optional] [default to ]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Radiusserverslist**](Radiusserverslist.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **g_et_radiusservers_id**
> Radiusserver g_et_radiusservers_id(id, accept, content_type, opts)

Get Radius Server

This endpoint allows you to get a RADIUS server in your organization.  ####  ``` curl -X PUT https://console.jumpcloud.com/api/radiusservers/{ServerID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\ ```

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

api_instance = JCAPIv1::RadiusServersApi.new

id = "id_example" # String | 

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Get Radius Server
  result = api_instance.g_et_radiusservers_id(id, accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling RadiusServersApi->g_et_radiusservers_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **accept** | **String**|  | [default to application/json]
 **content_type** | **String**|  | [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Radiusserver**](Radiusserver.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **p_ost_radiusservers**
> Radiusserver p_ost_radiusservers(accept, content_type, opts)

Create a Radius Server

This endpoint allows you to create RADIUS servers in your organization.  #### Sample Request ``` curl -X POST https://console.jumpcloud.com/api/radiusservers/ \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{     \"name\": \"{test_radius}\",     \"networkSourceIp\": \"{0.0.0.0}\",     \"sharedSecret\":\"{secretpassword}\",     \"userLockoutAction\": \"REMOVE\",     \"userPasswordExpirationAction\": \"MAINTAIN\" }' ```

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

api_instance = JCAPIv1::RadiusServersApi.new

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv1::Radiusserverpost.new, # Radiusserverpost | 
  x_org_id: "" # String | 
}

begin
  #Create a Radius Server
  result = api_instance.p_ost_radiusservers(accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling RadiusServersApi->p_ost_radiusservers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**|  | [default to application/json]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**Radiusserverpost**](Radiusserverpost.md)|  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Radiusserver**](Radiusserver.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **p_ut_radiusservers_id**
> Radiusserverput p_ut_radiusservers_id(id, accept, content_type, opts)

Update Radius Servers

This endpoint allows you to update RADIUS servers in your organization.  ####  ``` curl -X PUT https://console.jumpcloud.com/api/radiusservers/{ServerID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{     \"name\": \"{name_update}\",     \"networkSourceIp\": \"{0.0.0.0}\",     \"sharedSecret\": \"{secret_password}\",     \"userLockoutAction\": \"REMOVE\",     \"userPasswordExpirationAction\": \"MAINTAIN\" }' ```

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

api_instance = JCAPIv1::RadiusServersApi.new

id = "id_example" # String | 

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv1::Body.new, # Body | 
  x_org_id: "" # String | 
}

begin
  #Update Radius Servers
  result = api_instance.p_ut_radiusservers_id(id, accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling RadiusServersApi->p_ut_radiusservers_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **accept** | **String**|  | [default to application/json]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**Body**](Body.md)|  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Radiusserverput**](Radiusserverput.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined




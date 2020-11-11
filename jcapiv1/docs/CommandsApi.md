# JCAPIv1::CommandsApi

All URIs are relative to *https://console.jumpcloud.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_elete_commands_id**](CommandsApi.md#d_elete_commands_id) | **DELETE** /commands/{id} | Delete a Command
[**g_et_commands**](CommandsApi.md#g_et_commands) | **GET** /commands | List All Commands
[**g_et_commands_id**](CommandsApi.md#g_et_commands_id) | **GET** /commands/{id} | List an individual Command
[**g_et_files_command_id**](CommandsApi.md#g_et_files_command_id) | **GET** /files/command/{id} | Get a Command File
[**p_ost_commands**](CommandsApi.md#p_ost_commands) | **POST** /commands | Create A Command
[**p_ut_commands_id**](CommandsApi.md#p_ut_commands_id) | **PUT** /commands/{id} | Update a Command


# **d_elete_commands_id**
> d_elete_commands_id(id, accept, content_type, opts)

Delete a Command

This endpoint deletes a specific command based on the Command ID.  #### Sample Request ``` curl -X DELETE https://console.jumpcloud.com/api/commands/{CommandID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'  ```

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

api_instance = JCAPIv1::CommandsApi.new

id = "id_example" # String | 

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Delete a Command
  api_instance.d_elete_commands_id(id, accept, content_type, opts)
rescue JCAPIv1::ApiError => e
  puts "Exception when calling CommandsApi->d_elete_commands_id: #{e}"
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

nil (empty response body)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **g_et_commands**
> Commandslist g_et_commands(accept, content_type, opts)

List All Commands

This endpoint returns all commands.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/commands/ \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'  ```

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

api_instance = JCAPIv1::CommandsApi.new

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
  #List All Commands
  result = api_instance.g_et_commands(accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling CommandsApi->g_et_commands: #{e}"
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

[**Commandslist**](Commandslist.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **g_et_commands_id**
> Command g_et_commands_id(id, accept, content_type, opts)

List an individual Command

This endpoint returns a specific command based on the command ID.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/commands/{CommandID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'  ```

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

api_instance = JCAPIv1::CommandsApi.new

id = "id_example" # String | 

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  fields: "", # String | Use a space seperated string of field parameters to include the data in the response. If omitted, the default list of fields will be returned. 
  x_org_id: "" # String | 
}

begin
  #List an individual Command
  result = api_instance.g_et_commands_id(id, accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling CommandsApi->g_et_commands_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **accept** | **String**|  | [default to application/json]
 **content_type** | **String**|  | [default to application/json]
 **fields** | **String**| Use a space seperated string of field parameters to include the data in the response. If omitted, the default list of fields will be returned.  | [optional] [default to ]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Command**](Command.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **g_et_files_command_id**
> Commandfilereturn g_et_files_command_id(id, accept, content_type, opts)

Get a Command File

This endpoint returns the uploaded file(s) associated with a specific command.  #### Sample Request  ``` curl -X GET https://console.jumpcloud.com/api/files/command/{commandID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'    ```

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

api_instance = JCAPIv1::CommandsApi.new

id = "id_example" # String | 

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  fields: "", # String | Use a space seperated string of field parameters to include the data in the response. If omitted, the default list of fields will be returned. 
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  x_org_id: "" # String | 
}

begin
  #Get a Command File
  result = api_instance.g_et_files_command_id(id, accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling CommandsApi->g_et_files_command_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **accept** | **String**|  | [default to application/json]
 **content_type** | **String**|  | [default to application/json]
 **fields** | **String**| Use a space seperated string of field parameters to include the data in the response. If omitted, the default list of fields will be returned.  | [optional] [default to ]
 **limit** | **Integer**| The number of records to return at once. Limited to 100. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Commandfilereturn**](Commandfilereturn.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **p_ost_commands**
> Command p_ost_commands(accept, content_type, opts)

Create A Command

This endpoint allows you to create a new command.  #### Sample Request  ``` curl -X POST https://console.jumpcloud.com/api/commands/ \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{  \"name\":\"Test API Command\",  \"command\":\"String\",  \"user\":\"{UserID}\",  \"schedule\":\"\",  \"timeout\":\"100\" }'  ```

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

api_instance = JCAPIv1::CommandsApi.new

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv1::Command.new, # Command | 
  x_org_id: "" # String | 
}

begin
  #Create A Command
  result = api_instance.p_ost_commands(accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling CommandsApi->p_ost_commands: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**|  | [default to application/json]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**Command**](Command.md)|  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Command**](Command.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **p_ut_commands_id**
> Command p_ut_commands_id(id, accept, content_type, opts)

Update a Command

This endpoint Updates a command based on the command ID and returns the modified command record.  #### Sample Request ``` curl -X PUT https://console.jumpcloud.com/api/commands/{CommandID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{  \"name\":\"Test API Command\",  \"command\":\"String\",  \"user\":\"{UserID}\",  \"schedule\":\"\",  \"timeout\":\"100\" }'  ```

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

api_instance = JCAPIv1::CommandsApi.new

id = "id_example" # String | 

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv1::Command.new, # Command | 
  x_org_id: "" # String | 
}

begin
  #Update a Command
  result = api_instance.p_ut_commands_id(id, accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling CommandsApi->p_ut_commands_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **accept** | **String**|  | [default to application/json]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**Command**](Command.md)|  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Command**](Command.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined




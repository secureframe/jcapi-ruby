# JCAPIv2::Office365Api

All URIs are relative to *https://console.jumpcloud.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_elete_office365s_office365_id_translationrules_id**](Office365Api.md#d_elete_office365s_office365_id_translationrules_id) | **DELETE** /office365s/{office365_id}/translationrules/{id} | Deletes a Office 365 translation rule
[**g_et_office365s_office365_id**](Office365Api.md#g_et_office365s_office365_id) | **GET** /office365s/{office365_id} | Get Office 365 instance
[**g_et_office365s_office365_id_associations**](Office365Api.md#g_et_office365s_office365_id_associations) | **GET** /office365s/{office365_id}/associations | List the associations of an Office 365 instance
[**g_et_office365s_office365_id_translationrules**](Office365Api.md#g_et_office365s_office365_id_translationrules) | **GET** /office365s/{office365_id}/translationrules | List all the Office 365 Translation Rules
[**g_et_office365s_office365_id_translationrules_id**](Office365Api.md#g_et_office365s_office365_id_translationrules_id) | **GET** /office365s/{office365_id}/translationrules/{id} | Gets a specific Office 365 translation rule
[**g_et_office365s_office365_id_usergroups**](Office365Api.md#g_et_office365s_office365_id_usergroups) | **GET** /office365s/{office365_id}/usergroups | List the User Groups bound to an Office 365 instance
[**g_et_office365s_office365_id_users**](Office365Api.md#g_et_office365s_office365_id_users) | **GET** /office365s/{office365_id}/users | List the Users bound to an Office 365 instance
[**p_atch_office365s_office365_id**](Office365Api.md#p_atch_office365s_office365_id) | **PATCH** /office365s/{office365_id} | Update existing Office 365 instance.
[**p_ost_office365s_office365_id_associations**](Office365Api.md#p_ost_office365s_office365_id_associations) | **POST** /office365s/{office365_id}/associations | Manage the associations of an Office 365 instance
[**p_ost_office365s_office365_id_translationrules**](Office365Api.md#p_ost_office365s_office365_id_translationrules) | **POST** /office365s/{office365_id}/translationrules | Create a new Office 365 Translation Rule


# **d_elete_office365s_office365_id_translationrules_id**
> d_elete_office365s_office365_id_translationrules_id(office365_id, id, accept, content_type)

Deletes a Office 365 translation rule

This endpoint allows you to delete a translation rule for a specific Office 365 instance. These rules specify how JumpCloud attributes translate to [Microsoft Graph](https://developer.microsoft.com/en-us/graph) attributes.  #### Sample Request  ``` curl -X DELETE https://console.jumpcloud.com/api/v2/office365s/{office365_id}/translationrules/{id} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

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

api_instance = JCAPIv2::Office365Api.new

office365_id = "office365_id_example" # String | 

id = "id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 


begin
  #Deletes a Office 365 translation rule
  api_instance.d_elete_office365s_office365_id_translationrules_id(office365_id, id, accept, content_type)
rescue JCAPIv2::ApiError => e
  puts "Exception when calling Office365Api->d_elete_office365s_office365_id_translationrules_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **office365_id** | **String**|  | 
 **id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]

### Return type

nil (empty response body)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_office365s_office365_id**
> Office365Output g_et_office365s_office365_id(office365_id, accept, content_type, opts)

Get Office 365 instance

This endpoint returns a specific Office 365 instance.  #####  Sample Request  ``` curl -X GET https://console.jumpcloud.com/api/v2/office365s/{OFFICE365_ID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'  ```

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

api_instance = JCAPIv2::Office365Api.new

office365_id = "office365_id_example" # String | ObjectID of the Office 365 instance.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Get Office 365 instance
  result = api_instance.g_et_office365s_office365_id(office365_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling Office365Api->g_et_office365s_office365_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **office365_id** | **String**| ObjectID of the Office 365 instance. | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Office365Output**](Office365Output.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_office365s_office365_id_associations**
> Array&lt;GraphConnection&gt; g_et_office365s_office365_id_associations(office365_id, targets, accept, content_type, opts)

List the associations of an Office 365 instance

This endpoint returns _direct_ associations of an Office 365 instance.   A direct association can be a non-homogeneous relationship between 2 different objects, for example Office 365 and Users.  #### Sample Request ``` curl -X GET 'https://console.jumpcloud.com/api/v2/office365s/{OFFICE365_ID}/associations?targets=user_group' \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'  ```

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

api_instance = JCAPIv2::Office365Api.new

office365_id = "office365_id_example" # String | ObjectID of the Office 365 instance.

targets = ["targets_example"] # Array<String> | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  x_org_id: "" # String | 
}

begin
  #List the associations of an Office 365 instance
  result = api_instance.g_et_office365s_office365_id_associations(office365_id, targets, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling Office365Api->g_et_office365s_office365_id_associations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **office365_id** | **String**| ObjectID of the Office 365 instance. | 
 **targets** | [**Array&lt;String&gt;**](String.md)|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **limit** | **Integer**| The number of records to return at once. Limited to 100. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Array&lt;GraphConnection&gt;**](GraphConnection.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_office365s_office365_id_translationrules**
> Array&lt;Office365TranslationRule&gt; g_et_office365s_office365_id_translationrules(office365_id, accept, content_type, opts)

List all the Office 365 Translation Rules

This endpoint returns all translation rules for a specific Office 365 instance. These rules specify how JumpCloud attributes translate to [Microsoft Graph](https://developer.microsoft.com/en-us/graph) attributes.  ##### Sample Request  ```  curl -X GET  https://console.jumpcloud.com/api/v2/office365s/{office365_id}/translationrules \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

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

api_instance = JCAPIv2::Office365Api.new

office365_id = "office365_id_example" # String | 

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
  #List all the Office 365 Translation Rules
  result = api_instance.g_et_office365s_office365_id_translationrules(office365_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling Office365Api->g_et_office365s_office365_id_translationrules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **office365_id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **fields** | [**Array&lt;String&gt;**](String.md)| The comma separated fields included in the returned records. If omitted, the default list of fields will be returned.  | [optional] 
 **filter** | [**Array&lt;String&gt;**](String.md)| A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60; | [optional] 
 **limit** | **Integer**| The number of records to return at once. Limited to 100. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  | [optional] 

### Return type

[**Array&lt;Office365TranslationRule&gt;**](Office365TranslationRule.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_office365s_office365_id_translationrules_id**
> Office365TranslationRule g_et_office365s_office365_id_translationrules_id(office365_id, id, accept, content_type)

Gets a specific Office 365 translation rule

This endpoint returns a specific translation rule for a specific Office 365 instance. These rules specify how JumpCloud attributes translate to [Microsoft Graph](https://developer.microsoft.com/en-us/graph) attributes.  ###### Sample Request  ```   curl -X GET https://console.jumpcloud.com/api/v2/office365s/{office365_id}/translationrules/{id} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

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

api_instance = JCAPIv2::Office365Api.new

office365_id = "office365_id_example" # String | 

id = "id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 


begin
  #Gets a specific Office 365 translation rule
  result = api_instance.g_et_office365s_office365_id_translationrules_id(office365_id, id, accept, content_type)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling Office365Api->g_et_office365s_office365_id_translationrules_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **office365_id** | **String**|  | 
 **id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]

### Return type

[**Office365TranslationRule**](Office365TranslationRule.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_office365s_office365_id_usergroups**
> Array&lt;GraphObjectWithPaths&gt; g_et_office365s_office365_id_usergroups(office365_id, accept, content_type, opts)

List the User Groups bound to an Office 365 instance

This endpoint will return all Users Groups bound to an Office 365 instance, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.  Each element will contain the group's type, id, attributes and paths.  The `attributes` object is a key/value hash of compiled graph attributes for all paths followed.  The `paths` array enumerates each path from this Office 365 instance to the corresponding User Group; this array represents all grouping and/or associations that would have to be removed to deprovision the User Group from this Office 365 instance.  See `/members` and `/associations` endpoints to manage those collections.  #### Sample Request ```   curl -X GET https://console.jumpcloud.com/api/v2/office365s/{OFFICE365_ID/usergroups \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' ```

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

api_instance = JCAPIv2::Office365Api.new

office365_id = "office365_id_example" # String | ObjectID of the Office 365 suite.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  filter: ["filter_example"], # Array<String> | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  x_org_id: "" # String | 
}

begin
  #List the User Groups bound to an Office 365 instance
  result = api_instance.g_et_office365s_office365_id_usergroups(office365_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling Office365Api->g_et_office365s_office365_id_usergroups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **office365_id** | **String**| ObjectID of the Office 365 suite. | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **limit** | **Integer**| The number of records to return at once. Limited to 100. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **filter** | [**Array&lt;String&gt;**](String.md)| A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60; | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Array&lt;GraphObjectWithPaths&gt;**](GraphObjectWithPaths.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_office365s_office365_id_users**
> Array&lt;GraphObjectWithPaths&gt; g_et_office365s_office365_id_users(office365_id, accept, content_type, opts)

List the Users bound to an Office 365 instance

This endpoint will return all Users bound to an Office 365 instance, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.  Each element will contain the type, id, attributes and paths.  The `attributes` object is a key/value hash of compiled graph attributes for all paths followed.  The `paths` array enumerates each path from this Office 365 instance to the corresponding User; this array represents all grouping and/or associations that would have to be removed to deprovision the User from this Office 365 instance.  See `/members` and `/associations` endpoints to manage those collections.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/v2/office365s/{OFFICE365_ID}/users \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' ```

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

api_instance = JCAPIv2::Office365Api.new

office365_id = "office365_id_example" # String | ObjectID of the Office 365 suite.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  filter: ["filter_example"], # Array<String> | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  x_org_id: "" # String | 
}

begin
  #List the Users bound to an Office 365 instance
  result = api_instance.g_et_office365s_office365_id_users(office365_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling Office365Api->g_et_office365s_office365_id_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **office365_id** | **String**| ObjectID of the Office 365 suite. | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **limit** | **Integer**| The number of records to return at once. Limited to 100. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **filter** | [**Array&lt;String&gt;**](String.md)| A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60; | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Array&lt;GraphObjectWithPaths&gt;**](GraphObjectWithPaths.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_atch_office365s_office365_id**
> Office365Output p_atch_office365s_office365_id(office365_id, accept, content_type, opts)

Update existing Office 365 instance.

This endpoint allows updating some attributes of an Office 365 instance.  #####  Sample Request  ``` curl -X PATCH https://console.jumpcloud.com/api/v2/office365s/{OFFICE365_ID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{     \"userLockoutAction\": \"maintain\",     \"userPasswordExpirationAction\": \"suspend\"   }'  ```

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

api_instance = JCAPIv2::Office365Api.new

office365_id = "office365_id_example" # String | ObjectID of the Office 365 instance.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv2::Office365PatchInput.new, # Office365PatchInput | 
  x_org_id: "" # String | 
}

begin
  #Update existing Office 365 instance.
  result = api_instance.p_atch_office365s_office365_id(office365_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling Office365Api->p_atch_office365s_office365_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **office365_id** | **String**| ObjectID of the Office 365 instance. | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**Office365PatchInput**](Office365PatchInput.md)|  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Office365Output**](Office365Output.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_office365s_office365_id_associations**
> p_ost_office365s_office365_id_associations(office365_id, accept, content_type, opts)

Manage the associations of an Office 365 instance

This endpoint allows you to manage the _direct_ associations of a Office 365 instance.  A direct association can be a non-homogeneous relationship between 2 different objects, for example Office 365 and Users.  #### Sample Request ``` curl -X POST https://console.jumpcloud.com/api/v2/office365s/{OFFICE365_ID}/associations \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{     \"op\": \"add\",     \"type\": \"user_group\",     \"id\": \"{Group_ID}\" }' ```

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

api_instance = JCAPIv2::Office365Api.new

office365_id = "office365_id_example" # String | ObjectID of the Office 365 instance.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv2::GraphManagementReq.new, # GraphManagementReq | 
  x_org_id: "" # String | 
}

begin
  #Manage the associations of an Office 365 instance
  api_instance.p_ost_office365s_office365_id_associations(office365_id, accept, content_type, opts)
rescue JCAPIv2::ApiError => e
  puts "Exception when calling Office365Api->p_ost_office365s_office365_id_associations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **office365_id** | **String**| ObjectID of the Office 365 instance. | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**GraphManagementReq**](GraphManagementReq.md)|  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_office365s_office365_id_translationrules**
> Office365TranslationRule p_ost_office365s_office365_id_translationrules(office365_id, accept, content_type, opts)

Create a new Office 365 Translation Rule

This endpoint allows you to create a translation rule for a specific Office 365 instance. These rules specify how JumpCloud attributes translate to [Microsoft Graph](https://developer.microsoft.com/en-us/graph) attributes.  ##### Sample Request ``` curl -X POST https://console.jumpcloud.com/api/v2/office365s/{office365_id}/translationrules \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{   {Translation Rule Parameters} }'  ```

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

api_instance = JCAPIv2::Office365Api.new

office365_id = "office365_id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv2::Office365TranslationRuleRequest.new # Office365TranslationRuleRequest | 
}

begin
  #Create a new Office 365 Translation Rule
  result = api_instance.p_ost_office365s_office365_id_translationrules(office365_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling Office365Api->p_ost_office365s_office365_id_translationrules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **office365_id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**Office365TranslationRuleRequest**](Office365TranslationRuleRequest.md)|  | [optional] 

### Return type

[**Office365TranslationRule**](Office365TranslationRule.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




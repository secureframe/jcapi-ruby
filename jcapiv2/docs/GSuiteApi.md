# JCAPIv2::GSuiteApi

All URIs are relative to *https://console.jumpcloud.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_elete_gsuites_gsuite_id_translationrules_id**](GSuiteApi.md#d_elete_gsuites_gsuite_id_translationrules_id) | **DELETE** /gsuites/{gsuite_id}/translationrules/{id} | Deletes a G Suite translation rule
[**g_et_gsuites_gsuite_id_associations**](GSuiteApi.md#g_et_gsuites_gsuite_id_associations) | **GET** /gsuites/{gsuite_id}/associations | List the associations of a G Suite instance
[**g_et_gsuites_gsuite_id_import_users**](GSuiteApi.md#g_et_gsuites_gsuite_id_import_users) | **GET** /gsuites/{gsuite_id}/import/users | Get a list of users to import
[**g_et_gsuites_gsuite_id_translationrules**](GSuiteApi.md#g_et_gsuites_gsuite_id_translationrules) | **GET** /gsuites/{gsuite_id}/translationrules | List all the G Suite Translation Rules
[**g_et_gsuites_gsuite_id_translationrules_id**](GSuiteApi.md#g_et_gsuites_gsuite_id_translationrules_id) | **GET** /gsuites/{gsuite_id}/translationrules/{id} | Gets a specific G Suite translation rule
[**g_et_gsuites_gsuite_id_usergroups**](GSuiteApi.md#g_et_gsuites_gsuite_id_usergroups) | **GET** /gsuites/{gsuite_id}/usergroups | List the User Groups bound to a G Suite instance
[**g_et_gsuites_gsuite_id_users**](GSuiteApi.md#g_et_gsuites_gsuite_id_users) | **GET** /gsuites/{gsuite_id}/users | List the Users bound to a G Suite instance
[**g_et_gsuites_id**](GSuiteApi.md#g_et_gsuites_id) | **GET** /gsuites/{id} | Get G Suite
[**p_atch_gsuites_id**](GSuiteApi.md#p_atch_gsuites_id) | **PATCH** /gsuites/{id} | Update existing G Suite
[**p_ost_gsuites_gsuite_id_associations**](GSuiteApi.md#p_ost_gsuites_gsuite_id_associations) | **POST** /gsuites/{gsuite_id}/associations | Manage the associations of a G Suite instance
[**p_ost_gsuites_gsuite_id_translationrules**](GSuiteApi.md#p_ost_gsuites_gsuite_id_translationrules) | **POST** /gsuites/{gsuite_id}/translationrules | Create a new G Suite Translation Rule


# **d_elete_gsuites_gsuite_id_translationrules_id**
> d_elete_gsuites_gsuite_id_translationrules_id(gsuite_id, id, accept, content_type)

Deletes a G Suite translation rule

This endpoint allows you to delete a translation rule for a specific G Suite instance. These rules specify how JumpCloud attributes translate to [G Suite Admin SDK](https://developers.google.com/admin-sdk/directory/) attributes.  #### Sample Request  ``` curl -X DELETE https://console.jumpcloud.com/api/v2/gsuites/{gsuite_id}/translationrules/{id} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

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

api_instance = JCAPIv2::GSuiteApi.new

gsuite_id = "gsuite_id_example" # String | 

id = "id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 


begin
  #Deletes a G Suite translation rule
  api_instance.d_elete_gsuites_gsuite_id_translationrules_id(gsuite_id, id, accept, content_type)
rescue JCAPIv2::ApiError => e
  puts "Exception when calling GSuiteApi->d_elete_gsuites_gsuite_id_translationrules_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gsuite_id** | **String**|  | 
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



# **g_et_gsuites_gsuite_id_associations**
> Array&lt;GraphConnection&gt; g_et_gsuites_gsuite_id_associations(gsuite_idtargets, accept, content_type, opts)

List the associations of a G Suite instance

This endpoint returns the _direct_ associations of this G Suite instance.  A direct association can be a non-homogeneous relationship between 2 different objects, for example G Suite and Users.   #### Sample Request ``` curl -X GET 'https://console.jumpcloud.com/api/v2/gsuites/{Gsuite_ID}/associations?targets=user_group \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' ```

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

api_instance = JCAPIv2::GSuiteApi.new

gsuite_id = "gsuite_id_example" # String | ObjectID of the G Suite instance.

targets = ["targets_example"] # Array<String> | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  x_org_id: "" # String | 
}

begin
  #List the associations of a G Suite instance
  result = api_instance.g_et_gsuites_gsuite_id_associations(gsuite_idtargets, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling GSuiteApi->g_et_gsuites_gsuite_id_associations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gsuite_id** | **String**| ObjectID of the G Suite instance. | 
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

api_instance = JCAPIv2::GSuiteApi.new

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
  puts "Exception when calling GSuiteApi->g_et_gsuites_gsuite_id_import_users: #{e}"
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



# **g_et_gsuites_gsuite_id_translationrules**
> Array&lt;GSuiteTranslationRule&gt; g_et_gsuites_gsuite_id_translationrules(gsuite_id, accept, content_type, opts)

List all the G Suite Translation Rules

This endpoint returns all graph translation rules for a specific G Suite instance. These rules specify how JumpCloud attributes translate to [G Suite Admin SDK](https://developers.google.com/admin-sdk/directory/) attributes.  ##### Sample Request  ```  curl -X GET  https://console.jumpcloud.com/api/v2/gsuites/{gsuite_id}/translationrules \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

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

api_instance = JCAPIv2::GSuiteApi.new

gsuite_id = "gsuite_id_example" # String | 

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
  #List all the G Suite Translation Rules
  result = api_instance.g_et_gsuites_gsuite_id_translationrules(gsuite_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling GSuiteApi->g_et_gsuites_gsuite_id_translationrules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gsuite_id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **fields** | [**Array&lt;String&gt;**](String.md)| The comma separated fields included in the returned records. If omitted, the default list of fields will be returned.  | [optional] 
 **filter** | [**Array&lt;String&gt;**](String.md)| A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60; | [optional] 
 **limit** | **Integer**| The number of records to return at once. Limited to 100. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  | [optional] 

### Return type

[**Array&lt;GSuiteTranslationRule&gt;**](GSuiteTranslationRule.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_gsuites_gsuite_id_translationrules_id**
> GSuiteTranslationRule g_et_gsuites_gsuite_id_translationrules_id(gsuite_id, id, accept, content_type)

Gets a specific G Suite translation rule

This endpoint returns a specific translation rule for a specific G Suite instance. These rules specify how JumpCloud attributes translate to [G Suite Admin SDK](https://developers.google.com/admin-sdk/directory/) attributes.  ###### Sample Request  ```   curl -X GET https://console.jumpcloud.com/api/v2/gsuites/{gsuite_id}/translationrules/{id} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

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

api_instance = JCAPIv2::GSuiteApi.new

gsuite_id = "gsuite_id_example" # String | 

id = "id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 


begin
  #Gets a specific G Suite translation rule
  result = api_instance.g_et_gsuites_gsuite_id_translationrules_id(gsuite_id, id, accept, content_type)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling GSuiteApi->g_et_gsuites_gsuite_id_translationrules_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gsuite_id** | **String**|  | 
 **id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]

### Return type

[**GSuiteTranslationRule**](GSuiteTranslationRule.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_gsuites_gsuite_id_usergroups**
> Array&lt;GraphObjectWithPaths&gt; g_et_gsuites_gsuite_id_usergroups(gsuite_id, accept, content_type, opts)

List the User Groups bound to a G Suite instance

This endpoint will return all User Groups bound to an G Suite instance, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.  Each element will contain the group's type, id, attributes and paths.  The `attributes` object is a key/value hash of compiled graph attributes for all paths followed.  The `paths` array enumerates each path from this G Suite instance to the corresponding User Group; this array represents all grouping and/or associations that would have to be removed to deprovision the User Group from this G Suite instance.  See `/members` and `/associations` endpoints to manage those collections.  #### Sample Request ```   curl -X GET https://console.jumpcloud.com/api/v2/gsuites/{GSuite_ID}/usergroups \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' ```

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

api_instance = JCAPIv2::GSuiteApi.new

gsuite_id = "gsuite_id_example" # String | ObjectID of the G Suite instance.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  filter: ["filter_example"], # Array<String> | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  x_org_id: "" # String | 
}

begin
  #List the User Groups bound to a G Suite instance
  result = api_instance.g_et_gsuites_gsuite_id_usergroups(gsuite_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling GSuiteApi->g_et_gsuites_gsuite_id_usergroups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gsuite_id** | **String**| ObjectID of the G Suite instance. | 
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



# **g_et_gsuites_gsuite_id_users**
> Array&lt;GraphObjectWithPaths&gt; g_et_gsuites_gsuite_id_users(gsuite_id, accept, content_type, opts)

List the Users bound to a G Suite instance

This endpoint will return all Users bound to a G Suite instance, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.  Each element will contain the type, id, attributes and paths.  The `attributes` object is a key/value hash of compiled graph attributes for all paths followed.  The `paths` array enumerates each path from this G Suite instance to the corresponding User; this array represents all grouping and/or associations that would have to be removed to deprovision the User from this G Suite instance.  See `/members` and `/associations` endpoints to manage those collections.  #### Sample Request ```   curl -X GET https://console.jumpcloud.com/api/v2/gsuites/{Gsuite_ID}/users \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' ```

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

api_instance = JCAPIv2::GSuiteApi.new

gsuite_id = "gsuite_id_example" # String | ObjectID of the G Suite instance.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  filter: ["filter_example"], # Array<String> | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  x_org_id: "" # String | 
}

begin
  #List the Users bound to a G Suite instance
  result = api_instance.g_et_gsuites_gsuite_id_users(gsuite_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling GSuiteApi->g_et_gsuites_gsuite_id_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gsuite_id** | **String**| ObjectID of the G Suite instance. | 
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



# **g_et_gsuites_id**
> GsuiteOutput g_et_gsuites_id(id, accept, content_type, opts)

Get G Suite

This endpoint returns a specific G Suite.  ##### Sample Request  ```  curl -X GET https://console.jumpcloud.com/api/v2/gsuites/{GSUITE_ID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' ```

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

api_instance = JCAPIv2::GSuiteApi.new

id = "id_example" # String | Unique identifier of the GSuite.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Get G Suite
  result = api_instance.g_et_gsuites_id(id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling GSuiteApi->g_et_gsuites_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique identifier of the GSuite. | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**GsuiteOutput**](GsuiteOutput.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_atch_gsuites_id**
> GsuiteOutput p_atch_gsuites_id(id, accept, content_type, opts)

Update existing G Suite

This endpoint allows updating some attributes of a G Suite.  ##### Sample Request  ``` curl -X PATCH https://console.jumpcloud.com/api/v2/gsuites/{GSUITE_ID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{     \"userLockoutAction\": \"suspend\",     \"userPasswordExpirationAction\": \"maintain\"   }' ```

### Example
```ruby
# load the gem
require 'jcapiv2'

api_instance = JCAPIv2::GSuiteApi.new

id = "id_example" # String | Unique identifier of the GSuite.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv2::GsuitePatchInput.new, # GsuitePatchInput | 
  x_org_id: "" # String | 
}

begin
  #Update existing G Suite
  result = api_instance.p_atch_gsuites_id(id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling GSuiteApi->p_atch_gsuites_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Unique identifier of the GSuite. | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**GsuitePatchInput**](GsuitePatchInput.md)|  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**GsuiteOutput**](GsuiteOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_gsuites_gsuite_id_associations**
> p_ost_gsuites_gsuite_id_associations(gsuite_id, opts)

Manage the associations of a G Suite instance

This endpoint returns the _direct_ associations of this G Suite instance.  A direct association can be a non-homogeneous relationship between 2 different objects, for example G Suite and Users.   #### Sample Request ``` curl -X POST https://console.jumpcloud.com/api/v2/gsuites/{Gsuite_ID}/associations \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{     \"op\": \"add\",     \"type\": \"user_group\",     \"id\": \"{Group_ID}\" }' ```

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

api_instance = JCAPIv2::GSuiteApi.new

gsuite_id = "gsuite_id_example" # String | ObjectID of the G Suite instance.

opts = { 
  body: JCAPIv2::GraphManagementReq.new, # GraphManagementReq | 
  x_org_id: "" # String | 
}

begin
  #Manage the associations of a G Suite instance
  api_instance.p_ost_gsuites_gsuite_id_associations(gsuite_id, opts)
rescue JCAPIv2::ApiError => e
  puts "Exception when calling GSuiteApi->p_ost_gsuites_gsuite_id_associations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gsuite_id** | **String**| ObjectID of the G Suite instance. | 
 **body** | [**GraphManagementReq**](GraphManagementReq.md)|  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_gsuites_gsuite_id_translationrules**
> GSuiteTranslationRule p_ost_gsuites_gsuite_id_translationrules(gsuite_id, accept, content_type, opts)

Create a new G Suite Translation Rule

This endpoint allows you to create a translation rule for a specific G Suite instance. These rules specify how JumpCloud attributes translate to [G Suite Admin SDK](https://developers.google.com/admin-sdk/directory/) attributes.  ##### Sample Request ``` curl -X POST https://console.jumpcloud.com/api/v2/gsuites/{gsuite_id}/translationrules \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{   {Translation Rule Parameters} }'  ```

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

api_instance = JCAPIv2::GSuiteApi.new

gsuite_id = "gsuite_id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv2::GSuiteTranslationRuleRequest.new # GSuiteTranslationRuleRequest | 
}

begin
  #Create a new G Suite Translation Rule
  result = api_instance.p_ost_gsuites_gsuite_id_translationrules(gsuite_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling GSuiteApi->p_ost_gsuites_gsuite_id_translationrules: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **gsuite_id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**GSuiteTranslationRuleRequest**](GSuiteTranslationRuleRequest.md)|  | [optional] 

### Return type

[**GSuiteTranslationRule**](GSuiteTranslationRule.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




# JCAPIv2::PoliciesApi

All URIs are relative to *https://console.jumpcloud.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_elete_policies_id**](PoliciesApi.md#d_elete_policies_id) | **DELETE** /policies/{id} | Deletes a Policy
[**g_et_policies**](PoliciesApi.md#g_et_policies) | **GET** /policies | Lists all the Policies
[**g_et_policies_id**](PoliciesApi.md#g_et_policies_id) | **GET** /policies/{id} | Gets a specific Policy.
[**g_et_policies_policy_id_associations**](PoliciesApi.md#g_et_policies_policy_id_associations) | **GET** /policies/{policy_id}/associations | List the associations of a Policy
[**g_et_policies_policy_id_policyresults**](PoliciesApi.md#g_et_policies_policy_id_policyresults) | **GET** /policies/{policy_id}/policyresults | Lists all the policy results of a policy.
[**g_et_policies_policy_id_policystatuses**](PoliciesApi.md#g_et_policies_policy_id_policystatuses) | **GET** /policies/{policy_id}/policystatuses | Lists the latest policy results of a policy.
[**g_et_policies_policy_id_systemgroups**](PoliciesApi.md#g_et_policies_policy_id_systemgroups) | **GET** /policies/{policy_id}/systemgroups | List the System Groups bound to a Policy
[**g_et_policies_policy_id_systems**](PoliciesApi.md#g_et_policies_policy_id_systems) | **GET** /policies/{policy_id}/systems | List the Systems bound to a Policy
[**g_et_policyresults**](PoliciesApi.md#g_et_policyresults) | **GET** /policyresults | Lists all the policy results for an organization.
[**g_et_policyresults_id**](PoliciesApi.md#g_et_policyresults_id) | **GET** /policyresults/{id} | Get a specific Policy Result.
[**g_et_policytemplates**](PoliciesApi.md#g_et_policytemplates) | **GET** /policytemplates | Lists all of the Policy Templates
[**g_et_policytemplates_id**](PoliciesApi.md#g_et_policytemplates_id) | **GET** /policytemplates/{id} | Get a specific Policy Template
[**g_et_systems_system_id_policystatuses**](PoliciesApi.md#g_et_systems_system_id_policystatuses) | **GET** /systems/{system_id}/policystatuses | List the policy statuses for a system
[**p_ost_policies**](PoliciesApi.md#p_ost_policies) | **POST** /policies | Create a new Policy
[**p_ost_policies_policy_id_associations**](PoliciesApi.md#p_ost_policies_policy_id_associations) | **POST** /policies/{policy_id}/associations | Manage the associations of a Policy
[**p_ut_policies_id**](PoliciesApi.md#p_ut_policies_id) | **PUT** /policies/{id} | Update an existing Policy


# **d_elete_policies_id**
> d_elete_policies_id(id, accept, content_type, opts)

Deletes a Policy

This endpoint allows you to delete a policy.  #### Sample Request  ``` curl -X DELETE https://console.jumpcloud.com/api/v2/policies/5a837ecd232e110d4291e6b9 \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

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

api_instance = JCAPIv2::PoliciesApi.new

id = "id_example" # String | ObjectID of the Policy object.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Deletes a Policy
  api_instance.d_elete_policies_id(id, accept, content_type, opts)
rescue JCAPIv2::ApiError => e
  puts "Exception when calling PoliciesApi->d_elete_policies_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ObjectID of the Policy object. | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_policies**
> Array&lt;Policy&gt; g_et_policies(accept, content_type, opts)

Lists all the Policies

This endpoint returns all policies.  ##### Sample Request  ```  curl -X GET  https://console.jumpcloud.com/api/v2/policies \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

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

api_instance = JCAPIv2::PoliciesApi.new

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  fields: ["fields_example"], # Array<String> | The comma separated fields included in the returned records. If omitted, the default list of fields will be returned. 
  filter: ["filter_example"], # Array<String> | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  sort: ["sort_example"], # Array<String> | The comma separated fields used to sort the collection. Default sort is ascending, prefix with `-` to sort descending. 
  x_org_id: "" # String | 
}

begin
  #Lists all the Policies
  result = api_instance.g_et_policies(accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling PoliciesApi->g_et_policies: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **fields** | [**Array&lt;String&gt;**](String.md)| The comma separated fields included in the returned records. If omitted, the default list of fields will be returned.  | [optional] 
 **filter** | [**Array&lt;String&gt;**](String.md)| A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60; | [optional] 
 **limit** | **Integer**| The number of records to return at once. Limited to 100. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Array&lt;Policy&gt;**](Policy.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_policies_id**
> PolicyWithDetails g_et_policies_id(id, accept, content_type, opts)

Gets a specific Policy.

This endpoint returns a specific policy.  ###### Sample Request  ```   curl -X GET https://console.jumpcloud.com/api/v2/policies/{PolicyID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

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

api_instance = JCAPIv2::PoliciesApi.new

id = "id_example" # String | ObjectID of the Policy object.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Gets a specific Policy.
  result = api_instance.g_et_policies_id(id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling PoliciesApi->g_et_policies_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ObjectID of the Policy object. | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**PolicyWithDetails**](PolicyWithDetails.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_policies_policy_id_associations**
> Array&lt;GraphConnection&gt; g_et_policies_policy_id_associations(policy_id, targets, accept, content_type, opts)

List the associations of a Policy

This endpoint returns the _direct_ associations of a Policy.  A direct association can be a non-homogeneous relationship between 2 different objects, for example Policies and Systems.  #### Sample Request ``` curl -X GET 'https://console.jumpcloud.com/api/v2/policies/{Policy_ID}/associations?targets=system_group \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' ```

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

api_instance = JCAPIv2::PoliciesApi.new

policy_id = "policy_id_example" # String | ObjectID of the Policy.

targets = ["targets_example"] # Array<String> | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  x_org_id: "" # String | 
}

begin
  #List the associations of a Policy
  result = api_instance.g_et_policies_policy_id_associations(policy_id, targets, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling PoliciesApi->g_et_policies_policy_id_associations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **String**| ObjectID of the Policy. | 
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



# **g_et_policies_policy_id_policyresults**
> Array&lt;PolicyResult&gt; g_et_policies_policy_id_policyresults(policy_id, accept, content_type, opts)

Lists all the policy results of a policy.

This endpoint returns all policies results for a specific policy.  ##### Sample Request  ```  curl -X GET https://console.jumpcloud.com/api/v2/policies/{Policy_ID}/policyresults \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

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

api_instance = JCAPIv2::PoliciesApi.new

policy_id = "policy_id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  fields: ["fields_example"], # Array<String> | The comma separated fields included in the returned records. If omitted, the default list of fields will be returned. 
  filter: ["filter_example"], # Array<String> | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  sort: ["sort_example"], # Array<String> | The comma separated fields used to sort the collection. Default sort is ascending, prefix with `-` to sort descending. 
  x_org_id: "" # String | 
}

begin
  #Lists all the policy results of a policy.
  result = api_instance.g_et_policies_policy_id_policyresults(policy_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling PoliciesApi->g_et_policies_policy_id_policyresults: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **fields** | [**Array&lt;String&gt;**](String.md)| The comma separated fields included in the returned records. If omitted, the default list of fields will be returned.  | [optional] 
 **filter** | [**Array&lt;String&gt;**](String.md)| A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60; | [optional] 
 **limit** | **Integer**| The number of records to return at once. Limited to 100. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Array&lt;PolicyResult&gt;**](PolicyResult.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_policies_policy_id_policystatuses**
> Array&lt;PolicyResult&gt; g_et_policies_policy_id_policystatuses(policy_id, accept, content_type, opts)

Lists the latest policy results of a policy.

This endpoint returns the latest policies results for a specific policy.  ##### Sample Request  ```  curl -X GET https://console.jumpcloud.com/api/v2/policies/{Policy_ID}/policystatuses \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

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

api_instance = JCAPIv2::PoliciesApi.new

policy_id = "policy_id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  fields: ["fields_example"], # Array<String> | The comma separated fields included in the returned records. If omitted, the default list of fields will be returned. 
  filter: ["filter_example"], # Array<String> | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  sort: ["sort_example"], # Array<String> | The comma separated fields used to sort the collection. Default sort is ascending, prefix with `-` to sort descending. 
  x_org_id: "" # String | 
}

begin
  #Lists the latest policy results of a policy.
  result = api_instance.g_et_policies_policy_id_policystatuses(policy_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling PoliciesApi->g_et_policies_policy_id_policystatuses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **fields** | [**Array&lt;String&gt;**](String.md)| The comma separated fields included in the returned records. If omitted, the default list of fields will be returned.  | [optional] 
 **filter** | [**Array&lt;String&gt;**](String.md)| A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60; | [optional] 
 **limit** | **Integer**| The number of records to return at once. Limited to 100. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Array&lt;PolicyResult&gt;**](PolicyResult.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_policies_policy_id_systemgroups**
> Array&lt;GraphObjectWithPaths&gt; g_et_policies_policy_id_systemgroups(policy_id, accept, content_type, opts)

List the System Groups bound to a Policy

This endpoint will return all Systems Groups bound to a Policy, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.  Each element will contain the group's type, id, attributes and paths.  The `attributes` object is a key/value hash of compiled graph attributes for all paths followed.  The `paths` array enumerates each path from this Policy to the corresponding System Group; this array represents all grouping and/or associations that would have to be removed to deprovision the System Group from this Policy.  See `/members` and `/associations` endpoints to manage those collections.  #### Sample Request ``` curl -X GET  https://console.jumpcloud.com/api/v2/policies/{Policy_ID}/systemgroups \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' ```

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

api_instance = JCAPIv2::PoliciesApi.new

policy_id = "policy_id_example" # String | ObjectID of the Command.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  filter: ["filter_example"], # Array<String> | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  x_org_id: "" # String | 
}

begin
  #List the System Groups bound to a Policy
  result = api_instance.g_et_policies_policy_id_systemgroups(policy_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling PoliciesApi->g_et_policies_policy_id_systemgroups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **String**| ObjectID of the Command. | 
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



# **g_et_policies_policy_id_systems**
> Array&lt;GraphObjectWithPaths&gt; g_et_policies_policy_id_systems(policy_id, accept, content_type, opts)

List the Systems bound to a Policy

This endpoint will return all Systems bound to a Policy, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.  Each element will contain the type, id, attributes and paths.  The `attributes` object is a key/value hash of compiled graph attributes for all paths followed.  The `paths` array enumerates each path from this Policy to the corresponding System; this array represents all grouping and/or associations that would have to be removed to deprovision the System from this Policy.  See `/members` and `/associations` endpoints to manage those collections.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/v2/policies/{Policy_ID}/systems \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' ```

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

api_instance = JCAPIv2::PoliciesApi.new

policy_id = "policy_id_example" # String | ObjectID of the Command.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  filter: ["filter_example"], # Array<String> | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  x_org_id: "" # String | 
}

begin
  #List the Systems bound to a Policy
  result = api_instance.g_et_policies_policy_id_systems(policy_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling PoliciesApi->g_et_policies_policy_id_systems: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **String**| ObjectID of the Command. | 
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



# **g_et_policyresults**
> Array&lt;PolicyResult&gt; g_et_policyresults(accept, content_type, opts)

Lists all the policy results for an organization.

This endpoint returns all policies results for an organization.  ##### Sample Request  ```  curl -X GET https://console.jumpcloud.com/api/v2/policyresults \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

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

api_instance = JCAPIv2::PoliciesApi.new

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  fields: ["fields_example"], # Array<String> | The comma separated fields included in the returned records. If omitted, the default list of fields will be returned. 
  filter: ["filter_example"], # Array<String> | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  sort: ["sort_example"], # Array<String> | The comma separated fields used to sort the collection. Default sort is ascending, prefix with `-` to sort descending. 
  x_org_id: "" # String | 
}

begin
  #Lists all the policy results for an organization.
  result = api_instance.g_et_policyresults(accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling PoliciesApi->g_et_policyresults: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **fields** | [**Array&lt;String&gt;**](String.md)| The comma separated fields included in the returned records. If omitted, the default list of fields will be returned.  | [optional] 
 **filter** | [**Array&lt;String&gt;**](String.md)| A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60; | [optional] 
 **limit** | **Integer**| The number of records to return at once. Limited to 100. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Array&lt;PolicyResult&gt;**](PolicyResult.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_policyresults_id**
> PolicyResult g_et_policyresults_id(id, accept, content_type, opts)

Get a specific Policy Result.

This endpoint will return the policy results for a specific policy.  ##### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/v2/policyresults/{Policy_ID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

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

api_instance = JCAPIv2::PoliciesApi.new

id = "id_example" # String | ObjectID of the Policy Result.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Get a specific Policy Result.
  result = api_instance.g_et_policyresults_id(id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling PoliciesApi->g_et_policyresults_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ObjectID of the Policy Result. | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**PolicyResult**](PolicyResult.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_policytemplates**
> Array&lt;PolicyTemplate&gt; g_et_policytemplates(accept, content_type, opts)

Lists all of the Policy Templates

This endpoint returns all policy templates.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/v2/policytemplates \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

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

api_instance = JCAPIv2::PoliciesApi.new

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  fields: ["fields_example"], # Array<String> | The comma separated fields included in the returned records. If omitted, the default list of fields will be returned. 
  filter: ["filter_example"], # Array<String> | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  sort: ["sort_example"], # Array<String> | The comma separated fields used to sort the collection. Default sort is ascending, prefix with `-` to sort descending. 
  x_org_id: "" # String | 
}

begin
  #Lists all of the Policy Templates
  result = api_instance.g_et_policytemplates(accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling PoliciesApi->g_et_policytemplates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **fields** | [**Array&lt;String&gt;**](String.md)| The comma separated fields included in the returned records. If omitted, the default list of fields will be returned.  | [optional] 
 **filter** | [**Array&lt;String&gt;**](String.md)| A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60; | [optional] 
 **limit** | **Integer**| The number of records to return at once. Limited to 100. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Array&lt;PolicyTemplate&gt;**](PolicyTemplate.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_policytemplates_id**
> PolicyTemplateWithDetails g_et_policytemplates_id(id, accept, content_type, opts)

Get a specific Policy Template

This endpoint returns a specific policy template.  #### Sample Request ```  curl -X GET https://console.jumpcloud.com/api/v2/policies/{Policy_ID}\\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' ```

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

api_instance = JCAPIv2::PoliciesApi.new

id = "id_example" # String | ObjectID of the Policy Template.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Get a specific Policy Template
  result = api_instance.g_et_policytemplates_id(id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling PoliciesApi->g_et_policytemplates_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ObjectID of the Policy Template. | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**PolicyTemplateWithDetails**](PolicyTemplateWithDetails.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_systems_system_id_policystatuses**
> Array&lt;PolicyResult&gt; g_et_systems_system_id_policystatuses(system_id, accept, content_type, opts)

List the policy statuses for a system

This endpoint returns the policy results for a particular system.  ##### Sample Request  ``` curl -X GET https://console.jumpcloud.com/api/v2/systems/{System_ID}/policystatuses \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'  ```

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

api_instance = JCAPIv2::PoliciesApi.new

system_id = "system_id_example" # String | ObjectID of the System.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  fields: ["fields_example"], # Array<String> | The comma separated fields included in the returned records. If omitted, the default list of fields will be returned. 
  filter: ["filter_example"], # Array<String> | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  sort: ["sort_example"], # Array<String> | The comma separated fields used to sort the collection. Default sort is ascending, prefix with `-` to sort descending. 
  x_org_id: "" # String | 
}

begin
  #List the policy statuses for a system
  result = api_instance.g_et_systems_system_id_policystatuses(system_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling PoliciesApi->g_et_systems_system_id_policystatuses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system_id** | **String**| ObjectID of the System. | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **fields** | [**Array&lt;String&gt;**](String.md)| The comma separated fields included in the returned records. If omitted, the default list of fields will be returned.  | [optional] 
 **filter** | [**Array&lt;String&gt;**](String.md)| A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60; | [optional] 
 **limit** | **Integer**| The number of records to return at once. Limited to 100. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Array&lt;PolicyResult&gt;**](PolicyResult.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_policies**
> PolicyWithDetails p_ost_policies(accept, content_type, opts)

Create a new Policy

This endpoint allows you to create a policy. Given the amount of configurable parameters required to create a Policy, we suggest you use the JumpCloud Admin Console to create new policies.  ##### Sample Request ``` curl -X POST https://console.jumpcloud.com/api/v2/policies \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{   {Policy_Parameters} }'  ```

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

api_instance = JCAPIv2::PoliciesApi.new

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv2::PolicyRequest.new, # PolicyRequest | 
  x_org_id: "" # String | 
}

begin
  #Create a new Policy
  result = api_instance.p_ost_policies(accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling PoliciesApi->p_ost_policies: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**PolicyRequest**](PolicyRequest.md)|  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**PolicyWithDetails**](PolicyWithDetails.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_policies_policy_id_associations**
> p_ost_policies_policy_id_associations(policy_id, accept, content_type, opts)

Manage the associations of a Policy

This endpoint allows you to manage the _direct_ associations of a Policy.  A direct association can be a non-homogeneous relationship between 2 different objects, for example Policies and Systems.  #### Sample Request ``` curl -X POST https://console.jumpcloud.com/api/v2/policies/{Policy_ID}/associations/ \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{     \"op\": \"add\",     \"type\": \"system_group\",     \"id\": \"{Group_ID}\" }' ```

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

api_instance = JCAPIv2::PoliciesApi.new

policy_id = "policy_id_example" # String | ObjectID of the Policy.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv2::GraphManagementReq.new, # GraphManagementReq | 
  x_org_id: "" # String | 
}

begin
  #Manage the associations of a Policy
  api_instance.p_ost_policies_policy_id_associations(policy_id, accept, content_type, opts)
rescue JCAPIv2::ApiError => e
  puts "Exception when calling PoliciesApi->p_ost_policies_policy_id_associations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policy_id** | **String**| ObjectID of the Policy. | 
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



# **p_ut_policies_id**
> Policy p_ut_policies_id(id, , opts)

Update an existing Policy

This endpoint allows you to update a policy. Given the amount of configurable parameters required to update a Policy, we suggest you use the JumpCloud Admin Console to create new policies.   ##### Sample Request ``` curl -X PUT https://console.jumpcloud.com/api/v2/policies/59fced45c9118022172547ff \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY' \\   -d '{     {Policy_Parameters} }' ```

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

api_instance = JCAPIv2::PoliciesApi.new

id = "id_example" # String | ObjectID of the Policy object.

opts = { 
  body: JCAPIv2::PolicyRequest.new, # PolicyRequest | 
  x_org_id: "" # String | 
}

begin
  #Update an existing Policy
  result = api_instance.p_ut_policies_id(id, , opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling PoliciesApi->p_ut_policies_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ObjectID of the Policy object. | 
 **body** | [**PolicyRequest**](PolicyRequest.md)|  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Policy**](Policy.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




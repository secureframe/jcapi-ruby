# JCAPIv2::SystemGroupMembersMembershipApi

All URIs are relative to *https://console.jumpcloud.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**g_et_systemgroups_group_id_members**](SystemGroupMembersMembershipApi.md#g_et_systemgroups_group_id_members) | **GET** /systemgroups/{group_id}/members | List the members of a System Group
[**g_et_systemgroups_group_id_membership**](SystemGroupMembersMembershipApi.md#g_et_systemgroups_group_id_membership) | **GET** /systemgroups/{group_id}/membership | List the System Group&#39;s membership
[**p_ost_systemgroups_group_id_members**](SystemGroupMembersMembershipApi.md#p_ost_systemgroups_group_id_members) | **POST** /systemgroups/{group_id}/members | Manage the members of a System Group


# **g_et_systemgroups_group_id_members**
> Array&lt;GraphConnection&gt; g_et_systemgroups_group_id_members(group_id, accept, content_type, opts)

List the members of a System Group

This endpoint returns the system members of a System Group.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/v2/systemgroups/{Group_ID}/members \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'  ```

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

api_instance = JCAPIv2::SystemGroupMembersMembershipApi.new

group_id = "group_id_example" # String | ObjectID of the System Group.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  x_org_id: "" # String | 
}

begin
  #List the members of a System Group
  result = api_instance.g_et_systemgroups_group_id_members(group_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling SystemGroupMembersMembershipApi->g_et_systemgroups_group_id_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| ObjectID of the System Group. | 
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



# **g_et_systemgroups_group_id_membership**
> Array&lt;GraphObjectWithPaths&gt; g_et_systemgroups_group_id_membership(group_id, accept, content_type, opts)

List the System Group's membership

This endpoint returns all Systems that are a member of this System Group.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/v2/systemgroups/{Group_ID/membership \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'  ```

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

api_instance = JCAPIv2::SystemGroupMembersMembershipApi.new

group_id = "group_id_example" # String | ObjectID of the System Group.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  sort: ["sort_example"], # Array<String> | The comma separated fields used to sort the collection. Default sort is ascending, prefix with `-` to sort descending. 
  filter: ["filter_example"], # Array<String> | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  x_org_id: "" # String | 
}

begin
  #List the System Group's membership
  result = api_instance.g_et_systemgroups_group_id_membership(group_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling SystemGroupMembersMembershipApi->g_et_systemgroups_group_id_membership: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| ObjectID of the System Group. | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **limit** | **Integer**| The number of records to return at once. Limited to 100. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  | [optional] 
 **filter** | [**Array&lt;String&gt;**](String.md)| A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60; | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Array&lt;GraphObjectWithPaths&gt;**](GraphObjectWithPaths.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_systemgroups_group_id_members**
> p_ost_systemgroups_group_id_members(group_id, accept, content_type, opts)

Manage the members of a System Group

This endpoint allows you to manage the system members of a System Group.  #### Sample Request ``` curl -X POST https://console.jumpcloud.com/api/v2/systemgroups/{Group_ID}/members \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{     \"op\": \"add\",     \"type\": \"system\",     \"id\": \"{System_ID}\" }' ```

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

api_instance = JCAPIv2::SystemGroupMembersMembershipApi.new

group_id = "group_id_example" # String | ObjectID of the System Group.

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv2::SystemGroupMembersReq.new, # SystemGroupMembersReq | 
  authorization: "authorization_example", # String | Authorization header for the System Context API
  date: "date_example" # String | Current date header for the System Context API
  x_org_id: "" # String | 
}

begin
  #Manage the members of a System Group
  api_instance.p_ost_systemgroups_group_id_members(group_id, accept, content_type, opts)
rescue JCAPIv2::ApiError => e
  puts "Exception when calling SystemGroupMembersMembershipApi->p_ost_systemgroups_group_id_members: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **String**| ObjectID of the System Group. | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**SystemGroupMembersReq**](SystemGroupMembersReq.md)|  | [optional] 
 **authorization** | **String**| Authorization header for the System Context API | [optional] 
 **date** | **String**| Current date header for the System Context API | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




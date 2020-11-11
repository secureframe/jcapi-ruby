# JCAPIv2::BulkJobRequestsApi

All URIs are relative to *https://console.jumpcloud.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**g_et_bulk_users_job_id_results**](BulkJobRequestsApi.md#g_et_bulk_users_job_id_results) | **GET** /bulk/users/{job_id}/results | List Bulk Users Results
[**p_atch_bulk_users**](BulkJobRequestsApi.md#p_atch_bulk_users) | **PATCH** /bulk/users | Bulk Users Update
[**p_ost_bulk_users**](BulkJobRequestsApi.md#p_ost_bulk_users) | **POST** /bulk/users | Bulk Users Create


# **g_et_bulk_users_job_id_results**
> Array&lt;JobWorkresult&gt; g_et_bulk_users_job_id_results(job_id, accept, content_type, opts)

List Bulk Users Results

This endpoint will return the results of particular user import or update job request.  #### Sample Request ``` curl -X GET \\   https://console.jumpcloud.com/api/v2/bulk/users/{ImportJobID}/results \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

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

api_instance = JCAPIv2::BulkJobRequestsApi.new

job_id = "job_id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  x_org_id: "" # String | 
}

begin
  #List Bulk Users Results
  result = api_instance.g_et_bulk_users_job_id_results(job_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling BulkJobRequestsApi->g_et_bulk_users_job_id_results: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **limit** | **Integer**| The number of records to return at once. Limited to 100. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Array&lt;JobWorkresult&gt;**](JobWorkresult.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_atch_bulk_users**
> JobId p_atch_bulk_users(accept, content_type, opts)

Bulk Users Update

The endpoint allows you to create a bulk job to asynchronously update users. See [Update a System User](https://docs.jumpcloud.com/1.0/systemusers/update-a-system-user) for full list of attributes.  #### Sample Request  ``` curl -X PATCH https://console.jumpcloud.com/api/v2/bulk/users \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '[  {    \"id\":\"5be9fb4ddb01290001e85109\",   \"firstname\":\"{UPDATED_FIRSTNAME}\",   \"department\":\"{UPDATED_DEPARTMENT}\",   \"attributes\":[    {\"name\":\"Custom\",\"value\":\"{ATTRIBUTE_VALUE}\"}   ]  },  {    \"id\":\"5be9fb4ddb01290001e85109\",   \"firstname\":\"{UPDATED_FIRSTNAME}\",   \"costCenter\":\"{UPDATED_COST_CENTER}\",   \"phoneNumbers\":[    {\"type\":\"home\",\"number\":\"{HOME_PHONE_NUMBER}\"},    {\"type\":\"work\",\"number\":\"{WORK_PHONE_NUMBER}\"}   ]  } ] ```

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

api_instance = JCAPIv2::BulkJobRequestsApi.new

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  body: [JCAPIv2::BulkUserUpdate.new], # Array<BulkUserUpdate> | 
  x_org_id: "" # String | 
}

begin
  #Bulk Users Update
  result = api_instance.p_atch_bulk_users(accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling BulkJobRequestsApi->p_atch_bulk_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**Array&lt;BulkUserUpdate&gt;**](BulkUserUpdate.md)|  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**JobId**](JobId.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_bulk_users**
> JobId p_ost_bulk_users(accept, content_type, opts)

Bulk Users Create

The endpoint allows you to create a bulk job to asynchronously create users. See [Create a System User](https://docs.jumpcloud.com/1.0/systemusers/create-a-system-user) for full list of attributes.  #### Sample Request  ``` curl -X POST https://console.jumpcloud.com/api/v2/bulk/users \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '[  {   \"email\":\"{email}\",   \"firstname\":\"{firstname}\",   \"lastname\":\"{firstname}\",   \"username\":\"{username}\",   \"attributes\":[    {\"name\":\"EmployeeID\",\"value\":\"0000\"},    {\"name\":\"Custom\",\"value\":\"attribute\"}   ]  } ] ```

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

api_instance = JCAPIv2::BulkJobRequestsApi.new

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  body: [JCAPIv2::BulkUserCreate.new], # Array<BulkUserCreate> | 
  x_org_id: "" # String | 
}

begin
  #Bulk Users Create
  result = api_instance.p_ost_bulk_users(accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling BulkJobRequestsApi->p_ost_bulk_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**Array&lt;BulkUserCreate&gt;**](BulkUserCreate.md)|  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**JobId**](JobId.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




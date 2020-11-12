# JCAPIv2::SambaDomainsApi

All URIs are relative to *https://console.jumpcloud.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_elete_ldapservers_ldapserver_id_sambadomains_id**](SambaDomainsApi.md#d_elete_ldapservers_ldapserver_id_sambadomains_id) | **DELETE** /ldapservers/{ldapserver_id}/sambadomains/{id} | Delete Samba Domain
[**get_ldapservers_ldapserver_id_sambadomains**](SambaDomainsApi.md#get_ldapservers_ldapserver_id_sambadomains) | **GET** /ldapservers/{ldapserver_id}/sambadomains | List Samba Domains
[**get_ldapservers_ldapserver_id_sambadomains_id**](SambaDomainsApi.md#get_ldapservers_ldapserver_id_sambadomains_id) | **GET** /ldapservers/{ldapserver_id}/sambadomains/{id} | Get Samba Domain
[**p_ost_ldapservers_ldapserver_id_sambadomains**](SambaDomainsApi.md#p_ost_ldapservers_ldapserver_id_sambadomains) | **POST** /ldapservers/{ldapserver_id}/sambadomains | Create Samba Domain
[**p_ut_ldapservers_ldapserver_id_sambadomains_id**](SambaDomainsApi.md#p_ut_ldapservers_ldapserver_id_sambadomains_id) | **PUT** /ldapservers/{ldapserver_id}/sambadomains/{id} | Update Samba Domain


# **d_elete_ldapservers_ldapserver_id_sambadomains_id**
> String d_elete_ldapservers_ldapserver_id_sambadomains_id(ldapserver_id, id, opts)

Delete Samba Domain

This endpoint allows you to delete a samba domain from an LDAP server.  ##### Sample Request ``` curl -X DELETE https://console.jumpcloud.com/api/v2/ldapservers/{LDAP_ID}/sambadomains/{SAMBA_ID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' ```

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

api_instance = JCAPIv2::SambaDomainsApi.new

ldapserver_id = "ldapserver_id_example" # String | Unique identifier of the LDAP server.

id = "id_example" # String | Unique identifier of the samba domain.

opts = { 
  content_type: "application/json", # String | 
  accept: "application/json", # String | 
  x_org_id: "" # String | 
}

begin
  #Delete Samba Domain
  result = api_instance.d_elete_ldapservers_ldapserver_id_sambadomains_id(ldapserver_id, id, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling SambaDomainsApi->d_elete_ldapservers_ldapserver_id_sambadomains_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ldapserver_id** | **String**| Unique identifier of the LDAP server. | 
 **id** | **String**| Unique identifier of the samba domain. | 
 **content_type** | **String**|  | [optional] [default to application/json]
 **accept** | **String**|  | [optional] [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

**String**

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_ldapservers_ldapserver_id_sambadomains**
> Array&lt;SambaDomainOutput&gt; get_ldapservers_ldapserver_id_sambadomains(ldapserver_id, opts)

List Samba Domains

This endpoint returns all samba domains for an LDAP server.  ##### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/v2/ldapservers/{LDAP_ID}/sambadomains \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

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

api_instance = JCAPIv2::SambaDomainsApi.new

ldapserver_id = "ldapserver_id_example" # String | Unique identifier of the LDAP server.

opts = { 
  fields: ["fields_example"], # Array<String> | The comma separated fields included in the returned records. If omitted, the default list of fields will be returned. 
  filter: ["filter_example"], # Array<String> | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  sort: ["sort_example"], # Array<String> | The comma separated fields used to sort the collection. Default sort is ascending, prefix with `-` to sort descending. 
  content_type: "application/json", # String | 
  accept: "application/json", # String | 
  x_org_id: "" # String | 
}

begin
  #List Samba Domains
  result = api_instance.get_ldapservers_ldapserver_id_sambadomains(ldapserver_id, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling SambaDomainsApi->get_ldapservers_ldapserver_id_sambadomains: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ldapserver_id** | **String**| Unique identifier of the LDAP server. | 
 **fields** | [**Array&lt;String&gt;**](String.md)| The comma separated fields included in the returned records. If omitted, the default list of fields will be returned.  | [optional] 
 **filter** | [**Array&lt;String&gt;**](String.md)| A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60; | [optional] 
 **limit** | **Integer**| The number of records to return at once. Limited to 100. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **sort** | [**Array&lt;String&gt;**](String.md)| The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  | [optional] 
 **content_type** | **String**|  | [optional] [default to application/json]
 **accept** | **String**|  | [optional] [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Array&lt;SambaDomainOutput&gt;**](SambaDomainOutput.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_ldapservers_ldapserver_id_sambadomains_id**
> SambaDomainOutput get_ldapservers_ldapserver_id_sambadomains_id(ldapserver_id, id, opts)

Get Samba Domain

This endpoint returns a specific samba domain for an LDAP server.  ##### Sample Request ``` curl -X GET \\   https://console.jumpcloud.com/api/v2/ldapservers/ldapservers/{LDAP_ID}/sambadomains/{SAMBA_ID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```

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

api_instance = JCAPIv2::SambaDomainsApi.new

ldapserver_id = "ldapserver_id_example" # String | Unique identifier of the LDAP server.

id = "id_example" # String | Unique identifier of the samba domain.

opts = { 
  content_type: "application/json", # String | 
  accept: "application/json", # String | 
  x_org_id: "" # String | 
}

begin
  #Get Samba Domain
  result = api_instance.get_ldapservers_ldapserver_id_sambadomains_id(ldapserver_id, id, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling SambaDomainsApi->get_ldapservers_ldapserver_id_sambadomains_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ldapserver_id** | **String**| Unique identifier of the LDAP server. | 
 **id** | **String**| Unique identifier of the samba domain. | 
 **content_type** | **String**|  | [optional] [default to application/json]
 **accept** | **String**|  | [optional] [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**SambaDomainOutput**](SambaDomainOutput.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_ldapservers_ldapserver_id_sambadomains**
> SambaDomainOutput p_ost_ldapservers_ldapserver_id_sambadomains(ldapserver_id, opts)

Create Samba Domain

This endpoint allows you to create a samba domain for an LDAP server.  ##### Sample Request ``` curl -X POST https://console.jumpcloud.com/api/v2/ldapservers/{LDAP_ID}/sambadomains \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{ \"sid\":\"{SID_ID}\", \"name\":\"{WORKGROUP_NAME}\" }' ```

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

api_instance = JCAPIv2::SambaDomainsApi.new

ldapserver_id = "ldapserver_id_example" # String | Unique identifier of the LDAP server.

opts = { 
  body: JCAPIv2::SambaDomainInput.new, # SambaDomainInput | 
  content_type: "application/json", # String | 
  accept: "application/json", # String | 
  x_org_id: "" # String | 
}

begin
  #Create Samba Domain
  result = api_instance.p_ost_ldapservers_ldapserver_id_sambadomains(ldapserver_id, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling SambaDomainsApi->p_ost_ldapservers_ldapserver_id_sambadomains: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ldapserver_id** | **String**| Unique identifier of the LDAP server. | 
 **body** | [**SambaDomainInput**](SambaDomainInput.md)|  | [optional] 
 **content_type** | **String**|  | [optional] [default to application/json]
 **accept** | **String**|  | [optional] [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**SambaDomainOutput**](SambaDomainOutput.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ut_ldapservers_ldapserver_id_sambadomains_id**
> SambaDomainOutput p_ut_ldapservers_ldapserver_id_sambadomains_id(ldapserver_id, id, opts)

Update Samba Domain

This endpoint allows you to update the samba domain information for an LDAP server.  ##### Sample Request ``` curl -X PUT https://console.jumpcloud.com/api/v2/ldapservers/{LDAP_ID}/sambadomains/{SAMBA_ID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{ \"sid\":\"{SID_ID}\", \"name\":\"{WORKGROUP_NAME}\" }'  ```

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

api_instance = JCAPIv2::SambaDomainsApi.new

ldapserver_id = "ldapserver_id_example" # String | Unique identifier of the LDAP server.

id = "id_example" # String | Unique identifier of the samba domain.

opts = { 
  body: JCAPIv2::SambaDomainInput.new, # SambaDomainInput | 
  content_type: "application/json", # String | 
  accept: "application/json", # String | 
  x_org_id: "" # String | 
}

begin
  #Update Samba Domain
  result = api_instance.p_ut_ldapservers_ldapserver_id_sambadomains_id(ldapserver_id, id, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling SambaDomainsApi->p_ut_ldapservers_ldapserver_id_sambadomains_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ldapserver_id** | **String**| Unique identifier of the LDAP server. | 
 **id** | **String**| Unique identifier of the samba domain. | 
 **body** | [**SambaDomainInput**](SambaDomainInput.md)|  | [optional] 
 **content_type** | **String**|  | [optional] [default to application/json]
 **accept** | **String**|  | [optional] [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**SambaDomainOutput**](SambaDomainOutput.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




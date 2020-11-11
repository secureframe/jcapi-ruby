# JCAPIv1::SystemusersApi

All URIs are relative to *https://console.jumpcloud.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_elete_systemusers_id**](SystemusersApi.md#d_elete_systemusers_id) | **DELETE** /systemusers/{id} | Delete a system user
[**d_elete_systemusers_systemuser_id_sshkeys_id**](SystemusersApi.md#d_elete_systemusers_systemuser_id_sshkeys_id) | **DELETE** /systemusers/{systemuser_id}/sshkeys/{id} | Delete a system user&#39;s Public SSH Keys
[**g_et_systemusers**](SystemusersApi.md#g_et_systemusers) | **GET** /systemusers | List all system users
[**g_et_systemusers_id**](SystemusersApi.md#g_et_systemusers_id) | **GET** /systemusers/{id} | List a system user
[**g_et_systemusers_id_sshkeys**](SystemusersApi.md#g_et_systemusers_id_sshkeys) | **GET** /systemusers/{id}/sshkeys | List a system user&#39;s public SSH keys
[**p_ost_systemusers**](SystemusersApi.md#p_ost_systemusers) | **POST** /systemusers | Create a system user
[**p_ost_systemusers_id_expire**](SystemusersApi.md#p_ost_systemusers_id_expire) | **POST** /systemusers/{id}/expire | Expire a system user&#39;s password
[**p_ost_systemusers_id_resetmfa**](SystemusersApi.md#p_ost_systemusers_id_resetmfa) | **POST** /systemusers/{id}/resetmfa | Reset a system user&#39;s MFA token
[**p_ost_systemusers_id_sshkeys**](SystemusersApi.md#p_ost_systemusers_id_sshkeys) | **POST** /systemusers/{id}/sshkeys | Create a system user&#39;s Public SSH Key
[**p_ost_systemusers_id_unlock**](SystemusersApi.md#p_ost_systemusers_id_unlock) | **POST** /systemusers/{id}/unlock | Unlock a system user
[**p_ut_systemusers_id**](SystemusersApi.md#p_ut_systemusers_id) | **PUT** /systemusers/{id} | Update a system user


# **d_elete_systemusers_id**
> Systemuserreturn d_elete_systemusers_id(id, accept, content_type, opts)

Delete a system user

This endpoint allows you to delete a particular system user.  #### Sample Request ``` curl -X DELETE https://console.jumpcloud.com/api/systemusers/{UserID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'  ```

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

api_instance = JCAPIv1::SystemusersApi.new

id = "id_example" # String | 

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Delete a system user
  result = api_instance.d_elete_systemusers_id(id, accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling SystemusersApi->d_elete_systemusers_id: #{e}"
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

[**Systemuserreturn**](Systemuserreturn.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **d_elete_systemusers_systemuser_id_sshkeys_id**
> d_elete_systemusers_systemuser_id_sshkeys_id(systemuser_id, id, accept, content_type, opts)

Delete a system user's Public SSH Keys

This endpoint will delete a specific System User's SSH Key.

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

api_instance = JCAPIv1::SystemusersApi.new

systemuser_id = "systemuser_id_example" # String | 

id = "id_example" # String | 

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Delete a system user's Public SSH Keys
  api_instance.d_elete_systemusers_systemuser_id_sshkeys_id(systemuser_id, id, accept, content_type, opts)
rescue JCAPIv1::ApiError => e
  puts "Exception when calling SystemusersApi->d_elete_systemusers_systemuser_id_sshkeys_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **systemuser_id** | **String**|  | 
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



# **g_et_systemusers**
> Systemuserslist g_et_systemusers(accept, content_type, opts)

List all system users

This endpoint returns all systemusers.  #### Sample Request  ``` curl -X GET https://console.jumpcloud.com/api/systemusers \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' ```

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

api_instance = JCAPIv1::SystemusersApi.new

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  limit: 10, # Integer | The number of records to return at once.
  skip: 0, # Integer | The offset into the records to return.
  sort: "", # String | The comma separated fields used to sort the collection. Default sort is ascending, prefix with `-` to sort descending. 
  fields: "", # String | The comma separated fields included in the returned records. If omitted the default list of fields will be returned. 
  filter: "filter_example", # String | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  search: "search_example", # String | A nested object containing a string `searchTerm` and a list of `fields` to search on.
  x_org_id: "" # String | 
}

begin
  #List all system users
  result = api_instance.g_et_systemusers(accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling SystemusersApi->g_et_systemusers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**|  | [default to application/json]
 **content_type** | **String**|  | [default to application/json]
 **limit** | **Integer**| The number of records to return at once. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **sort** | **String**| The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  | [optional] [default to ]
 **fields** | **String**| The comma separated fields included in the returned records. If omitted the default list of fields will be returned.  | [optional] [default to ]
 **filter** | **String**| A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60; | [optional] 
 **search** | **String**| A nested object containing a string &#x60;searchTerm&#x60; and a list of &#x60;fields&#x60; to search on. | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Systemuserslist**](Systemuserslist.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **g_et_systemusers_id**
> Systemuserreturn g_et_systemusers_id(id, accept, content_type, opts)

List a system user

This endpoint returns a particular System User.  #### Sample Request  ``` curl -X GET https://console.jumpcloud.com/api/systemusers/{UserID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' ```

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

api_instance = JCAPIv1::SystemusersApi.new

id = "id_example" # String | 

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  fields: "", # String | Use a space seperated string of field parameters to include the data in the response. If omitted, the default list of fields will be returned. 
  filter: "filter_example", # String | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  x_org_id: "" # String | 
}

begin
  #List a system user
  result = api_instance.g_et_systemusers_id(id, accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling SystemusersApi->g_et_systemusers_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **accept** | **String**|  | [default to application/json]
 **content_type** | **String**|  | [default to application/json]
 **fields** | **String**| Use a space seperated string of field parameters to include the data in the response. If omitted, the default list of fields will be returned.  | [optional] [default to ]
 **filter** | **String**| A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60; | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Systemuserreturn**](Systemuserreturn.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **g_et_systemusers_id_sshkeys**
> Array&lt;Sshkeylist&gt; g_et_systemusers_id_sshkeys(id, accept, content_type, opts)

List a system user's public SSH keys

This endpoint will return a specific System User's public SSH key.

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

api_instance = JCAPIv1::SystemusersApi.new

id = "id_example" # String | 

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #List a system user's public SSH keys
  result = api_instance.g_et_systemusers_id_sshkeys(id, accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling SystemusersApi->g_et_systemusers_id_sshkeys: #{e}"
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

[**Array&lt;Sshkeylist&gt;**](Sshkeylist.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **p_ost_systemusers**
> Systemuserreturn p_ost_systemusers(accept, content_type, opts)

Create a system user

This endpoint allows you to create a new system user.  #### Sample Request  ``` curl -X POST https://console.jumpcloud.com/api/systemusers \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{  \"username\":\"{username}\",  \"email\":\"{email_address}\",  \"firstname\":\"{Name}\",  \"lastname\":\"{Name}\" }' ```

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

api_instance = JCAPIv1::SystemusersApi.new

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv1::Systemuserputpost.new, # Systemuserputpost | 
  x_org_id: "" # String | 
}

begin
  #Create a system user
  result = api_instance.p_ost_systemusers(accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling SystemusersApi->p_ost_systemusers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**|  | [default to application/json]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**Systemuserputpost**](Systemuserputpost.md)|  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Systemuserreturn**](Systemuserreturn.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **p_ost_systemusers_id_expire**
> p_ost_systemusers_id_expire(id, accept, content_type, opts)

Expire a system user's password

This endpoint allows you to expire a user's password.

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

api_instance = JCAPIv1::SystemusersApi.new

id = "id_example" # String | 

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Expire a system user's password
  api_instance.p_ost_systemusers_id_expire(id, accept, content_type, opts)
rescue JCAPIv1::ApiError => e
  puts "Exception when calling SystemusersApi->p_ost_systemusers_id_expire: #{e}"
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



# **p_ost_systemusers_id_resetmfa**
> p_ost_systemusers_id_resetmfa(id, accept, content_type, opts)

Reset a system user's MFA token

This endpoint allows you to reset the TOTP key for a specified system user and put them in an TOTP MFA enrollment period. This will result in the user being prompted to setup TOTP MFA when logging into userportal. Please be aware that if the user does not complete TOTP MFA setup before the `exclusionUntil` date, they will be locked out of any resources that require TOTP MFA.  Please refer to our [Knowledge Base Article](https://support.jumpcloud.com/customer/en/portal/articles/2959138-using-multifactor-authentication-with-jumpcloud) on setting up MFA for more information.   #### Sample Request  ``` curl -X POST \\   https://console.jumpcloud.com/api/systemusers/{UserID}/resetmfa \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{\"exclusion\": true, \"exclusionUntil\": \"{date-time}\"}'     ```

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

api_instance = JCAPIv1::SystemusersApi.new

id = "id_example" # String | 

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv1::Body1.new, # Body1 | 
  x_org_id: "" # String | 
}

begin
  #Reset a system user's MFA token
  api_instance.p_ost_systemusers_id_resetmfa(id, accept, content_type, opts)
rescue JCAPIv1::ApiError => e
  puts "Exception when calling SystemusersApi->p_ost_systemusers_id_resetmfa: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **accept** | **String**|  | [default to application/json]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**Body1**](Body1.md)|  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **p_ost_systemusers_id_sshkeys**
> Sshkeylist p_ost_systemusers_id_sshkeys(id, accept, content_type, opts)

Create a system user's Public SSH Key

This endpoint will create a specific System User's Public SSH Key.

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

api_instance = JCAPIv1::SystemusersApi.new

id = "id_example" # String | 

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv1::Sshkeypost.new, # Sshkeypost | 
  x_org_id: "" # String | 
}

begin
  #Create a system user's Public SSH Key
  result = api_instance.p_ost_systemusers_id_sshkeys(id, accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling SystemusersApi->p_ost_systemusers_id_sshkeys: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **accept** | **String**|  | [default to application/json]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**Sshkeypost**](Sshkeypost.md)|  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Sshkeylist**](Sshkeylist.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **p_ost_systemusers_id_unlock**
> p_ost_systemusers_id_unlock(id, accept, content_type, opts)

Unlock a system user

This endpoint allows you to unlock a user's account.

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

api_instance = JCAPIv1::SystemusersApi.new

id = "id_example" # String | 

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Unlock a system user
  api_instance.p_ost_systemusers_id_unlock(id, accept, content_type, opts)
rescue JCAPIv1::ApiError => e
  puts "Exception when calling SystemusersApi->p_ost_systemusers_id_unlock: #{e}"
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



# **p_ut_systemusers_id**
> Systemuserreturn p_ut_systemusers_id(id, accept, content_type, opts)

Update a system user

This endpoint allows you to update a system user.  #### Sample Request  ``` curl -X PUT https://console.jumpcloud.com/api/systemusers/{UserID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{  \"email\":\"{email_address}\",  \"firstname\":\"{Name}\",  \"lastname\":\"{Name}\" }' ```

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

api_instance = JCAPIv1::SystemusersApi.new

id = "id_example" # String | 

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv1::Systemuserput.new, # Systemuserput | 
  x_org_id: "" # String | 
}

begin
  #Update a system user
  result = api_instance.p_ut_systemusers_id(id, accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling SystemusersApi->p_ut_systemusers_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **accept** | **String**|  | [default to application/json]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**Systemuserput**](Systemuserput.md)|  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Systemuserreturn**](Systemuserreturn.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined




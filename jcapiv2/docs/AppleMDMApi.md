# JCAPIv2::AppleMDMApi

All URIs are relative to *https://console.jumpcloud.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_elete_applemdms_id**](AppleMDMApi.md#d_elete_applemdms_id) | **DELETE** /applemdms/{id} | Delete an Apple MDM
[**g_et_applemdms**](AppleMDMApi.md#g_et_applemdms) | **GET** /applemdms | List Apple MDMs
[**g_et_applemdms_apple_mdm_id_csr**](AppleMDMApi.md#g_et_applemdms_apple_mdm_id_csr) | **GET** /applemdms/{apple_mdm_id}/csr | Get Apple MDM CSR Plist
[**g_et_applemdms_apple_mdm_id_depkey**](AppleMDMApi.md#g_et_applemdms_apple_mdm_id_depkey) | **GET** /applemdms/{apple_mdm_id}/depkey | Get Apple MDM DEP Public Key
[**g_et_applemdms_apple_mdm_id_devices**](AppleMDMApi.md#g_et_applemdms_apple_mdm_id_devices) | **GET** /applemdms/{apple_mdm_id}/devices | List AppleMDM Devices
[**g_et_applemdms_apple_mdm_id_enrollmentprofiles**](AppleMDMApi.md#g_et_applemdms_apple_mdm_id_enrollmentprofiles) | **GET** /applemdms/{apple_mdm_id}/enrollmentprofiles | List Apple MDM Enrollment Profiles
[**g_et_applemdms_apple_mdm_id_enrollmentprofiles_id**](AppleMDMApi.md#g_et_applemdms_apple_mdm_id_enrollmentprofiles_id) | **GET** /applemdms/{apple_mdm_id}/enrollmentprofiles/{id} | Get an Apple MDM Enrollment Profile
[**p_ost_applemdms_apple_mdm_id_devices_device_id_erase**](AppleMDMApi.md#p_ost_applemdms_apple_mdm_id_devices_device_id_erase) | **POST** /applemdms/{apple_mdm_id}/devices/{device_id}/erase | Erase Device
[**p_ost_applemdms_apple_mdm_id_devices_device_id_lock**](AppleMDMApi.md#p_ost_applemdms_apple_mdm_id_devices_device_id_lock) | **POST** /applemdms/{apple_mdm_id}/devices/{device_id}/lock | Lock Device
[**p_ost_applemdms_apple_mdm_id_devices_device_id_restart**](AppleMDMApi.md#p_ost_applemdms_apple_mdm_id_devices_device_id_restart) | **POST** /applemdms/{apple_mdm_id}/devices/{device_id}/restart | Restart Device
[**p_ost_applemdms_apple_mdm_id_devices_device_id_shutdown**](AppleMDMApi.md#p_ost_applemdms_apple_mdm_id_devices_device_id_shutdown) | **POST** /applemdms/{apple_mdm_id}/devices/{device_id}/shutdown | Shut Down Device
[**p_ost_applemdms_apple_mdm_id_refreshdepdevices**](AppleMDMApi.md#p_ost_applemdms_apple_mdm_id_refreshdepdevices) | **POST** /applemdms/{apple_mdm_id}/refreshdepdevices | Refresh DEP Devices
[**p_ut_applemdms_id**](AppleMDMApi.md#p_ut_applemdms_id) | **PUT** /applemdms/{id} | Update an Apple MDM


# **d_elete_applemdms_id**
> AppleMDM d_elete_applemdms_id(id, accept, content_type, opts)

Delete an Apple MDM

Removes an Apple MDM configuration.  Warning: This is a destructive operation and will remove your Apple Push Certificates.  We will no longer be able to manage your devices and the only recovery option is to re-register all devices into MDM.  #### Sample Request ``` curl -X DELETE https://console.jumpcloud.com/api/v2/applemdms/{id} \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' ```

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

api_instance = JCAPIv2::AppleMDMApi.new

id = "id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Delete an Apple MDM
  result = api_instance.d_elete_applemdms_id(id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling AppleMDMApi->d_elete_applemdms_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**AppleMDM**](AppleMDM.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_applemdms**
> Array&lt;AppleMDM&gt; g_et_applemdms(accept, content_type, opts)

List Apple MDMs

Get a list of all Apple MDM configurations.  An empty topic indicates that a signed certificate from Apple has not been provided to the PUT endpoint yet.  Note: currently only one MDM configuration per organization is supported.  #### Sample Request ``` curl https://console.jumpcloud.com/api/v2/applemdms \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' ```

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

api_instance = JCAPIv2::AppleMDMApi.new

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #List Apple MDMs
  result = api_instance.g_et_applemdms(accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling AppleMDMApi->g_et_applemdms: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Array&lt;AppleMDM&gt;**](AppleMDM.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_applemdms_apple_mdm_id_csr**
> AppleMdmSignedCsrPlist g_et_applemdms_apple_mdm_id_csr(apple_mdm_id, accept, content_type, opts)

Get Apple MDM CSR Plist

Retrieves an Apple MDM signed CSR Plist for an organization.  The user must supply the returned plist to Apple for signing, and then provide the certificate provided by Apple back into the PUT API.  #### Sample Request ```   curl -X GET https://console.jumpcloud.com/api/v2/applemdms/{APPLE_MDM_ID}/csr \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' ```

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

api_instance = JCAPIv2::AppleMDMApi.new

apple_mdm_id = "apple_mdm_id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Get Apple MDM CSR Plist
  result = api_instance.g_et_applemdms_apple_mdm_id_csr(apple_mdm_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling AppleMDMApi->g_et_applemdms_apple_mdm_id_csr: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apple_mdm_id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**AppleMdmSignedCsrPlist**](AppleMdmSignedCsrPlist.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream



# **g_et_applemdms_apple_mdm_id_depkey**
> AppleMdmPublicKeyCert g_et_applemdms_apple_mdm_id_depkey(apple_mdm_id, accept, content_type, opts)

Get Apple MDM DEP Public Key

Retrieves an Apple MDM DEP Public Key.

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

api_instance = JCAPIv2::AppleMDMApi.new

apple_mdm_id = "apple_mdm_id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Get Apple MDM DEP Public Key
  result = api_instance.g_et_applemdms_apple_mdm_id_depkey(apple_mdm_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling AppleMDMApi->g_et_applemdms_apple_mdm_id_depkey: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apple_mdm_id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**AppleMdmPublicKeyCert**](AppleMdmPublicKeyCert.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/x-pem-file



# **g_et_applemdms_apple_mdm_id_devices**
> Array&lt;AppleMdmDevice&gt; g_et_applemdms_apple_mdm_id_devices(apple_mdm_id, opts)

List AppleMDM Devices

Lists all Apple MDM devices.  The filter and sort queries will allow the following fields: `createdAt` `depRegistered` `enrolled` `id` `osVersion` `serialNumber` `udid`  #### Sample Request ```   curl -X GET https://console.jumpcloud.com/api/v2/applemdms/{apple_mdm_id}/devices \\   -H 'accept: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{}' ```

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

api_instance = JCAPIv2::AppleMDMApi.new

apple_mdm_id = "apple_mdm_id_example" # String | 

opts = { 
  limit: 10, # Integer | The number of records to return at once. Limited to 100.
  skip: 0, # Integer | The offset into the records to return.
  filter: ["filter_example"], # Array<String> | A filter to apply to the query. **Filter structure**: `<field>:<operator>:<value>`. **field** = Populate with a valid field from an endpoint response. **operator** =  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** = Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** `GET /users?username=eq:testuser`
  sort: ["sort_example"], # Array<String> | The comma separated fields used to sort the collection. Default sort is ascending, prefix with `-` to sort descending. 
  x_org_id: "" # String | 
  x_total_count: 56, # Integer | 
  x_unfiltered_total_count: 56 # Integer | If provided in the request with any non-empty value, this header will be returned on the response populated with the total count of objects without filters taken into account
}

begin
  #List AppleMDM Devices
  result = api_instance.g_et_applemdms_apple_mdm_id_devices(apple_mdm_id, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling AppleMDMApi->g_et_applemdms_apple_mdm_id_devices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apple_mdm_id** | **String**|  | 
 **limit** | **Integer**| The number of records to return at once. Limited to 100. | [optional] [default to 10]
 **skip** | **Integer**| The offset into the records to return. | [optional] [default to 0]
 **filter** | [**Array&lt;String&gt;**](String.md)| A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60; | [optional] 
 **sort** | [**Array&lt;String&gt;**](String.md)| The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]
 **x_total_count** | **Integer**|  | [optional] 
 **x_unfiltered_total_count** | **Integer**| If provided in the request with any non-empty value, this header will be returned on the response populated with the total count of objects without filters taken into account | [optional] 

### Return type

[**Array&lt;AppleMdmDevice&gt;**](AppleMdmDevice.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_applemdms_apple_mdm_id_enrollmentprofiles**
> Array&lt;AppleMDM&gt; g_et_applemdms_apple_mdm_id_enrollmentprofiles(apple_mdm_id, accept, content_type, opts)

List Apple MDM Enrollment Profiles

Get a list of enrollment profiles for an apple mdm.  Note: currently only one enrollment profile is supported.  #### Sample Request ```  curl https://console.jumpcloud.com/api/v2/applemdms/{APPLE_MDM_ID}/enrollmentprofiles \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' ```

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

api_instance = JCAPIv2::AppleMDMApi.new

apple_mdm_id = "apple_mdm_id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #List Apple MDM Enrollment Profiles
  result = api_instance.g_et_applemdms_apple_mdm_id_enrollmentprofiles(apple_mdm_id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling AppleMDMApi->g_et_applemdms_apple_mdm_id_enrollmentprofiles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apple_mdm_id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Array&lt;AppleMDM&gt;**](AppleMDM.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **g_et_applemdms_apple_mdm_id_enrollmentprofiles_id**
> Mobileconfig g_et_applemdms_apple_mdm_id_enrollmentprofiles_id(apple_mdm_id, id, accept, content_type, opts)

Get an Apple MDM Enrollment Profile

Get an enrollment profile  Currently only requesting the mobileconfig is supported.  #### Sample Request  ``` curl https://console.jumpcloud.com/api/v2/applemdms/{APPLE_MDM_ID}/enrollmentprofiles/{ID} \\   -H 'accept: application/x-apple-aspen-config' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' ```

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

api_instance = JCAPIv2::AppleMDMApi.new

apple_mdm_id = "apple_mdm_id_example" # String | 

id = "id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Get an Apple MDM Enrollment Profile
  result = api_instance.g_et_applemdms_apple_mdm_id_enrollmentprofiles_id(apple_mdm_id, id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling AppleMDMApi->g_et_applemdms_apple_mdm_id_enrollmentprofiles_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apple_mdm_id** | **String**|  | 
 **id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Mobileconfig**](Mobileconfig.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/x-apple-aspen-config



# **p_ost_applemdms_apple_mdm_id_devices_device_id_erase**
> p_ost_applemdms_apple_mdm_id_devices_device_id_erase(apple_mdm_id, device_id, accept, content_type, opts)

Erase Device

Erases a DEP-enrolled device.  #### Sample Request ```   curl -X POST https://console.jumpcloud.com/api/v2/applemdms/{apple_mdm_id}/devices/{device_id}/erase \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{}' ```

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

api_instance = JCAPIv2::AppleMDMApi.new

apple_mdm_id = "apple_mdm_id_example" # String | 

device_id = "device_id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv2::Body2.new, # Body2 | 
  x_org_id: "" # String | 
}

begin
  #Erase Device
  api_instance.p_ost_applemdms_apple_mdm_id_devices_device_id_erase(apple_mdm_id, device_id, accept, content_type, opts)
rescue JCAPIv2::ApiError => e
  puts "Exception when calling AppleMDMApi->p_ost_applemdms_apple_mdm_id_devices_device_id_erase: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apple_mdm_id** | **String**|  | 
 **device_id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**Body2**](Body2.md)|  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_applemdms_apple_mdm_id_devices_device_id_lock**
> p_ost_applemdms_apple_mdm_id_devices_device_id_lock(apple_mdm_id, device_id, accept, content_type, opts)

Lock Device

Locks a DEP-enrolled device.  #### Sample Request ```   curl -X POST https://console.jumpcloud.com/api/v2/applemdms/{apple_mdm_id}/devices/{device_id}/lock \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{}' ```

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

api_instance = JCAPIv2::AppleMDMApi.new

apple_mdm_id = "apple_mdm_id_example" # String | 

device_id = "device_id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv2::Body.new, # Body | 
  x_org_id: "" # String | 
}

begin
  #Lock Device
  api_instance.p_ost_applemdms_apple_mdm_id_devices_device_id_lock(apple_mdm_id, device_id, accept, content_type, opts)
rescue JCAPIv2::ApiError => e
  puts "Exception when calling AppleMDMApi->p_ost_applemdms_apple_mdm_id_devices_device_id_lock: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apple_mdm_id** | **String**|  | 
 **device_id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**Body**](Body.md)|  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

nil (empty response body)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **p_ost_applemdms_apple_mdm_id_devices_device_id_restart**
> p_ost_applemdms_apple_mdm_id_devices_device_id_restart(apple_mdm_id, device_id, accept, content_type, opts)

Restart Device

Restarts a DEP-enrolled device.  #### Sample Request ```   curl -X POST https://console.jumpcloud.com/api/v2/applemdms/{apple_mdm_id}/devices/{device_id}/restart \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{}' ```

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

api_instance = JCAPIv2::AppleMDMApi.new

apple_mdm_id = "apple_mdm_id_example" # String | 

device_id = "device_id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Restart Device
  api_instance.p_ost_applemdms_apple_mdm_id_devices_device_id_restart(apple_mdm_id, device_id, accept, content_type, opts)
rescue JCAPIv2::ApiError => e
  puts "Exception when calling AppleMDMApi->p_ost_applemdms_apple_mdm_id_devices_device_id_restart: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apple_mdm_id** | **String**|  | 
 **device_id** | **String**|  | 
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



# **p_ost_applemdms_apple_mdm_id_devices_device_id_shutdown**
> p_ost_applemdms_apple_mdm_id_devices_device_id_shutdown(apple_mdm_id, device_id, accept, content_type, opts)

Shut Down Device

Shuts down a DEP-enrolled device.  #### Sample Request ```   curl -X POST https://console.jumpcloud.com/api/v2/applemdms/{apple_mdm_id}/devices/{device_id}/shutdown \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{}' ```

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

api_instance = JCAPIv2::AppleMDMApi.new

apple_mdm_id = "apple_mdm_id_example" # String | 

device_id = "device_id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Shut Down Device
  api_instance.p_ost_applemdms_apple_mdm_id_devices_device_id_shutdown(apple_mdm_id, device_id, accept, content_type, opts)
rescue JCAPIv2::ApiError => e
  puts "Exception when calling AppleMDMApi->p_ost_applemdms_apple_mdm_id_devices_device_id_shutdown: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apple_mdm_id** | **String**|  | 
 **device_id** | **String**|  | 
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



# **p_ost_applemdms_apple_mdm_id_refreshdepdevices**
> p_ost_applemdms_apple_mdm_id_refreshdepdevices(apple_mdm_id, accept, content_type, opts)

Refresh DEP Devices

Refreshes the list of devices that a JumpCloud admin has added to their virtual MDM in Apple Business Manager - ABM so that they can be DEP enrolled with JumpCloud.  #### Sample Request ```   curl -X POST https://console.jumpcloud.com/api/v2/applemdms/{apple_mdm_id}/refreshdepdevices \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{}' ```

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

api_instance = JCAPIv2::AppleMDMApi.new

apple_mdm_id = "apple_mdm_id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Refresh DEP Devices
  api_instance.p_ost_applemdms_apple_mdm_id_refreshdepdevices(apple_mdm_id, accept, content_type, opts)
rescue JCAPIv2::ApiError => e
  puts "Exception when calling AppleMDMApi->p_ost_applemdms_apple_mdm_id_refreshdepdevices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apple_mdm_id** | **String**|  | 
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



# **p_ut_applemdms_id**
> AppleMDM p_ut_applemdms_id(id, accept, content_type, opts)

Update an Apple MDM

Updates an Apple MDM configuration.  This endpoint is used to supply JumpCloud with a signed certificate from Apple in order to finalize the setup and allow JumpCloud to manage your devices.  It may also be used to update the DEP Settings.  #### Sample Request ```   curl -X PUT https://console.jumpcloud.com/api/v2/applemdms/{ID} \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{     \"name\": \"MDM name\",     \"appleSignedCert\": \"{CERTIFICATE}\",     \"encryptedDepServerToken\": \"{SERVER_TOKEN}\",     \"dep\": {       \"welcomeScreen\": {         \"title\": \"Welcome\",         \"paragraph\": \"In just a few steps, you will be working securely from your Mac.\",         \"button\": \"continue\",       },     },   }' ```

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

api_instance = JCAPIv2::AppleMDMApi.new

id = "id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  body: JCAPIv2::AppleMdmPatchInput.new, # AppleMdmPatchInput | 
  x_org_id: "" # String | 
}

begin
  #Update an Apple MDM
  result = api_instance.p_ut_applemdms_id(id, accept, content_type, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling AppleMDMApi->p_ut_applemdms_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **accept** | **String**|  | [default to application/x-pem-file]
 **content_type** | **String**|  | [default to application/json]
 **body** | [**AppleMdmPatchInput**](AppleMdmPatchInput.md)|  | [optional] 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**AppleMDM**](AppleMDM.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




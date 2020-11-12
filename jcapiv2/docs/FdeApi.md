# JCAPIv2::FdeApi

All URIs are relative to *https://console.jumpcloud.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_systems_system_id_fdekey**](FdeApi.md#get_systems_system_id_fdekey) | **GET** /systems/{system_id}/fdekey | Get System FDE Key


# **get_systems_system_id_fdekey**
> Systemfdekey get_systems_system_id_fdekey(system_id, opts)

Get System FDE Key

This endpoint will return the current (latest) fde key saved for a system.

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

api_instance = JCAPIv2::FdeApi.new

system_id = "system_id_example" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Get System FDE Key
  result = api_instance.get_systems_system_id_fdekey(system_id, opts)
  p result
rescue JCAPIv2::ApiError => e
  puts "Exception when calling FdeApi->get_systems_system_id_fdekey: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **system_id** | **String**|  | 
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Systemfdekey**](Systemfdekey.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json




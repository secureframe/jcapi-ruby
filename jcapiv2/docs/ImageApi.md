# JCAPIv2::ImageApi

All URIs are relative to *https://console.jumpcloud.com/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**d_elete_applications_application_id_logo**](ImageApi.md#d_elete_applications_application_id_logo) | **DELETE** /applications/{application_id}/logo | Delete application image


# **d_elete_applications_application_id_logo**
> d_elete_applications_application_id_logo(application_id, accept, content_type, opts)

Delete application image

Deletes the specified image from an application

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

api_instance = JCAPIv2::ImageApi.new

application_id = "application_id_example" # String | 

accept = "application/x-pem-file" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Delete application image
  api_instance.d_elete_applications_application_id_logo(application_id, accept, content_type, opts)
rescue JCAPIv2::ApiError => e
  puts "Exception when calling ImageApi->d_elete_applications_application_id_logo: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **application_id** | **String**|  | 
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




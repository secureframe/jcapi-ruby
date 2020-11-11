# JCAPIv1::CommandTriggersApi

All URIs are relative to *https://console.jumpcloud.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**p_ost_command_trigger_triggername**](CommandTriggersApi.md#p_ost_command_trigger_triggername) | **POST** /command/trigger/{triggername} | Launch a command via a Trigger


# **p_ost_command_trigger_triggername**
> Triggerreturn p_ost_command_trigger_triggername(triggername, accept, content_type, opts)

Launch a command via a Trigger

This endpoint allows you to launch a command based on a defined trigger.  #### Sample Requests  **Launch a Command via a Trigger**  ``` curl --silent \\      -X 'POST' \\      -H \"x-api-key: {API_KEY}\" \\      \"https://console.jumpcloud.com/api/command/trigger/{TriggerName}\" ``` **Launch a Command via a Trigger passing a JSON object to the command** ``` curl --silent \\      -X 'POST' \\      -H \"x-api-key: {API_KEY}\" \\      -H 'Accept: application/json' \\      -H 'Content-Type: application/json' \\      -d '{ \"srcip\":\"192.168.2.32\", \"attack\":\"Cross Site Scripting Attempt\" }' \\      \"https://console.jumpcloud.com/api/command/trigger/{TriggerName}\" ```

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

api_instance = JCAPIv1::CommandTriggersApi.new

triggername = "triggername_example" # String | 

accept = "application/json" # String | 

content_type = "application/json" # String | 

opts = { 
  x_org_id: "" # String | 
}

begin
  #Launch a command via a Trigger
  result = api_instance.p_ost_command_trigger_triggername(triggername, accept, content_type, opts)
  p result
rescue JCAPIv1::ApiError => e
  puts "Exception when calling CommandTriggersApi->p_ost_command_trigger_triggername: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **triggername** | **String**|  | 
 **accept** | **String**|  | [default to application/json]
 **content_type** | **String**|  | [default to application/json]
 **x_org_id** | **String**|  | [optional] [default to ]

### Return type

[**Triggerreturn**](Triggerreturn.md)

### Authorization

[x-api-key](../README.md#x-api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined




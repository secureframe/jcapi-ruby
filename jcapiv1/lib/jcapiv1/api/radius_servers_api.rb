=begin
#JumpCloud APIs

# JumpCloud's V1 API. This set of endpoints allows JumpCloud customers to manage commands, systems, & system users.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module JCAPIv1
  class RadiusServersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List Radius Servers
    # This endpoint allows you to get a list of all RADIUS servers in your organization.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/radiusservers/ \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\ ```
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted, the default list of fields will be returned.  (default to )
    # @option opts [String] :filter A filter to apply to the query.
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [String] :sort Use space separated sort parameters to sort the collection. Default sort is ascending. Prefix with &#x60;-&#x60; to sort descending.  (default to )
    # @option opts [String] :x_org_id  (default to )
    # @return [Radiusserverslist]
    def radius_servers_list(content_type, accept, opts = {})
      data, _status_code, _headers = radius_servers_list_with_http_info(content_type, accept, opts)
      return data
    end

    # List Radius Servers
    # This endpoint allows you to get a list of all RADIUS servers in your organization.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/radiusservers/ \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\ &#x60;&#x60;&#x60;
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted, the default list of fields will be returned. 
    # @option opts [String] :filter A filter to apply to the query.
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :sort Use space separated sort parameters to sort the collection. Default sort is ascending. Prefix with &#x60;-&#x60; to sort descending. 
    # @option opts [String] :x_org_id 
    # @return [Array<(Radiusserverslist, Fixnum, Hash)>] Radiusserverslist data, response status code and response headers
    def radius_servers_list_with_http_info(content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RadiusServersApi.radius_servers_list ..."
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling RadiusServersApi.radius_servers_list"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling RadiusServersApi.radius_servers_list"
      end
      if @api_client.config.client_side_validation && !opts[:'skip'].nil? && opts[:'skip'] < 0
        fail ArgumentError, 'invalid value for "opts[:"skip"]" when calling RadiusServersApi.radius_servers_list, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = "/radiusservers"

      # query parameters
      query_params = {}
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = content_type
      header_params[:'Accept'] = accept
      header_params[:'x-org-id'] = opts[:'x_org_id'] if !opts[:'x_org_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Radiusserverslist')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RadiusServersApi#radius_servers_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Radius Server
    # This endpoint allows you to create RADIUS servers in your organization.  #### Sample Request ``` curl -X POST https://console.jumpcloud.com/api/radiusservers/ \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{     \"name\": \"{test_radius}\",     \"networkSourceIp\": \"{0.0.0.0}\",     \"sharedSecret\":\"{secretpassword}\",     \"userLockoutAction\": \"REMOVE\",     \"userPasswordExpirationAction\": \"MAINTAIN\" }' ```
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Radiusserverpost] :body 
    # @option opts [String] :x_org_id  (default to )
    # @return [Radiusserver]
    def radius_servers_post(content_type, accept, opts = {})
      data, _status_code, _headers = radius_servers_post_with_http_info(content_type, accept, opts)
      return data
    end

    # Create a Radius Server
    # This endpoint allows you to create RADIUS servers in your organization.  #### Sample Request &#x60;&#x60;&#x60; curl -X POST https://console.jumpcloud.com/api/radiusservers/ \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\   -d &#39;{     \&quot;name\&quot;: \&quot;{test_radius}\&quot;,     \&quot;networkSourceIp\&quot;: \&quot;{0.0.0.0}\&quot;,     \&quot;sharedSecret\&quot;:\&quot;{secretpassword}\&quot;,     \&quot;userLockoutAction\&quot;: \&quot;REMOVE\&quot;,     \&quot;userPasswordExpirationAction\&quot;: \&quot;MAINTAIN\&quot; }&#39; &#x60;&#x60;&#x60;
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Radiusserverpost] :body 
    # @option opts [String] :x_org_id 
    # @return [Array<(Radiusserver, Fixnum, Hash)>] Radiusserver data, response status code and response headers
    def radius_servers_post_with_http_info(content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RadiusServersApi.radius_servers_post ..."
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling RadiusServersApi.radius_servers_post"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling RadiusServersApi.radius_servers_post"
      end
      # resource path
      local_var_path = "/radiusservers"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = content_type
      header_params[:'Accept'] = accept
      header_params[:'x-org-id'] = opts[:'x_org_id'] if !opts[:'x_org_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Radiusserver')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RadiusServersApi#radius_servers_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Radius Servers
    # This endpoint allows you to update RADIUS servers in your organization.  #### ``` curl -X PUT https://console.jumpcloud.com/api/radiusservers/{ServerID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{     \"name\": \"{name_update}\",     \"networkSourceIp\": \"{0.0.0.0}\",     \"userLockoutAction\": \"REMOVE\",     \"userPasswordExpirationAction\": \"MAINTAIN\" }' ```
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Body] :body 
    # @option opts [String] :x_org_id  (default to )
    # @return [Radiusserverput]
    def radius_servers_put(id, content_type, accept, opts = {})
      data, _status_code, _headers = radius_servers_put_with_http_info(id, content_type, accept, opts)
      return data
    end

    # Update Radius Servers
    # This endpoint allows you to update RADIUS servers in your organization.  #### &#x60;&#x60;&#x60; curl -X PUT https://console.jumpcloud.com/api/radiusservers/{ServerID} \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\   -d &#39;{     \&quot;name\&quot;: \&quot;{name_update}\&quot;,     \&quot;networkSourceIp\&quot;: \&quot;{0.0.0.0}\&quot;,     \&quot;userLockoutAction\&quot;: \&quot;REMOVE\&quot;,     \&quot;userPasswordExpirationAction\&quot;: \&quot;MAINTAIN\&quot; }&#39; &#x60;&#x60;&#x60;
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Body] :body 
    # @option opts [String] :x_org_id 
    # @return [Array<(Radiusserverput, Fixnum, Hash)>] Radiusserverput data, response status code and response headers
    def radius_servers_put_with_http_info(id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RadiusServersApi.radius_servers_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RadiusServersApi.radius_servers_put"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling RadiusServersApi.radius_servers_put"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling RadiusServersApi.radius_servers_put"
      end
      # resource path
      local_var_path = "/radiusservers/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = content_type
      header_params[:'Accept'] = accept
      header_params[:'x-org-id'] = opts[:'x_org_id'] if !opts[:'x_org_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Radiusserverput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RadiusServersApi#radius_servers_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

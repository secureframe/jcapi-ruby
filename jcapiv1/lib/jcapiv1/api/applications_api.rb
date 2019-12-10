=begin
#JumpCloud APIs

# JumpCloud's V1 API. This set of endpoints allows JumpCloud customers to manage commands, systems, & system users.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module JCAPIv1
  class ApplicationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete an Application
    # The endpoint deletes an SSO / SAML Application.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content_type 
    # @option opts [String] :accept 
    # @option opts [String] :x_org_id 
    # @return [Application]
    def applications_delete(id, opts = {})
      data, _status_code, _headers = applications_delete_with_http_info(id, opts)
      return data
    end

    # Delete an Application
    # The endpoint deletes an SSO / SAML Application.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content_type 
    # @option opts [String] :accept 
    # @option opts [String] :x_org_id 
    # @return [Array<(Application, Fixnum, Hash)>] Application data, response status code and response headers
    def applications_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationsApi.applications_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApplicationsApi.applications_delete"
      end
      # resource path
      local_var_path = "/applications/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = opts[:'content_type'] if !opts[:'content_type'].nil?
      header_params[:'Accept'] = opts[:'accept'] if !opts[:'accept'].nil?
      header_params[:'x-org-id'] = opts[:'x_org_id'] if !opts[:'x_org_id'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Application')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationsApi#applications_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an Application
    # The endpoint retrieves an SSO / SAML Application.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content_type 
    # @option opts [String] :accept 
    # @option opts [String] :x_org_id 
    # @return [Application]
    def applications_get(id, opts = {})
      data, _status_code, _headers = applications_get_with_http_info(id, opts)
      return data
    end

    # Get an Application
    # The endpoint retrieves an SSO / SAML Application.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :content_type 
    # @option opts [String] :accept 
    # @option opts [String] :x_org_id 
    # @return [Array<(Application, Fixnum, Hash)>] Application data, response status code and response headers
    def applications_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationsApi.applications_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApplicationsApi.applications_get"
      end
      # resource path
      local_var_path = "/applications/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = opts[:'content_type'] if !opts[:'content_type'].nil?
      header_params[:'Accept'] = opts[:'accept'] if !opts[:'accept'].nil?
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
        :return_type => 'Application')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationsApi#applications_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Applications
    # The endpoint returns all your SSO / SAML Applications.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/applications \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned.
    # @option opts [Integer] :limit The number of records to return at once.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :sort  (default to The comma separated fields used to sort the collection. Default sort is ascending, prefix with - to sort descending.)
    # @option opts [String] :filter A filter to apply to the query.
    # @option opts [String] :x_org_id  (default to )
    # @return [Applicationslist]
    def applications_list(content_type, accept, opts = {})
      data, _status_code, _headers = applications_list_with_http_info(content_type, accept, opts)
      return data
    end

    # Applications
    # The endpoint returns all your SSO / SAML Applications.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/applications \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;   &#x60;&#x60;&#x60;
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned.
    # @option opts [Integer] :limit The number of records to return at once.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :sort 
    # @option opts [String] :filter A filter to apply to the query.
    # @option opts [String] :x_org_id 
    # @return [Array<(Applicationslist, Fixnum, Hash)>] Applicationslist data, response status code and response headers
    def applications_list_with_http_info(content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationsApi.applications_list ..."
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ApplicationsApi.applications_list"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ApplicationsApi.applications_list"
      end
      # resource path
      local_var_path = "/applications"

      # query parameters
      query_params = {}
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

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
        :return_type => 'Applicationslist')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationsApi#applications_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an Application
    # The endpoint adds a new SSO / SAML Applications.
    # @param [Hash] opts the optional parameters
    # @option opts [Application] :body 
    # @option opts [String] :content_type 
    # @option opts [String] :accept 
    # @option opts [String] :x_org_id 
    # @return [Application]
    def applications_post(opts = {})
      data, _status_code, _headers = applications_post_with_http_info(opts)
      return data
    end

    # Create an Application
    # The endpoint adds a new SSO / SAML Applications.
    # @param [Hash] opts the optional parameters
    # @option opts [Application] :body 
    # @option opts [String] :content_type 
    # @option opts [String] :accept 
    # @option opts [String] :x_org_id 
    # @return [Array<(Application, Fixnum, Hash)>] Application data, response status code and response headers
    def applications_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationsApi.applications_post ..."
      end
      # resource path
      local_var_path = "/applications"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = opts[:'content_type'] if !opts[:'content_type'].nil?
      header_params[:'Accept'] = opts[:'accept'] if !opts[:'accept'].nil?
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
        :return_type => 'Application')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationsApi#applications_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an Application
    # The endpoint updates a SSO / SAML Application.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Application] :body 
    # @option opts [String] :content_type 
    # @option opts [String] :accept 
    # @option opts [String] :x_org_id 
    # @return [Application]
    def applications_put(id, opts = {})
      data, _status_code, _headers = applications_put_with_http_info(id, opts)
      return data
    end

    # Update an Application
    # The endpoint updates a SSO / SAML Application.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Application] :body 
    # @option opts [String] :content_type 
    # @option opts [String] :accept 
    # @option opts [String] :x_org_id 
    # @return [Array<(Application, Fixnum, Hash)>] Application data, response status code and response headers
    def applications_put_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationsApi.applications_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApplicationsApi.applications_put"
      end
      # resource path
      local_var_path = "/applications/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = opts[:'content_type'] if !opts[:'content_type'].nil?
      header_params[:'Accept'] = opts[:'accept'] if !opts[:'accept'].nil?
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
        :return_type => 'Application')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationsApi#applications_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

=begin
#JumpCloud APIs

#JumpCloud's V1 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

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
    def d_elete_applications_id(id, opts = {})
      data, _status_code, _headers = d_elete_applications_id_with_http_info(id, opts)
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
    def d_elete_applications_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationsApi.d_elete_applications_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApplicationsApi.d_elete_applications_id"
      end
      # resource path
      local_var_path = "/applications/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
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
        @api_client.config.logger.debug "API called: ApplicationsApi#d_elete_applications_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Applications
    # The endpoint returns all your SSO / SAML Applications.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/applications \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```
    # @param accept 
    # @param content_type 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned.
    # @option opts [Integer] :limit The number of records to return at once.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :sort  (default to The comma separated fields used to sort the collection. Default sort is ascending, prefix with - to sort descending.)
    # @option opts [String] :filter A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60;
    # @option opts [String] :x_org_id  (default to )
    # @return [Applicationslist]
    def get_applications(accept, content_type, opts = {})
      data, _status_code, _headers = get_applications_with_http_info(accept, content_type, opts)
      return data
    end

    # Applications
    # The endpoint returns all your SSO / SAML Applications.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/applications \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;   &#x60;&#x60;&#x60;
    # @param accept 
    # @param content_type 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned.
    # @option opts [Integer] :limit The number of records to return at once.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :sort 
    # @option opts [String] :filter A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60;
    # @option opts [String] :x_org_id 
    # @return [Array<(Applicationslist, Fixnum, Hash)>] Applicationslist data, response status code and response headers
    def get_applications_with_http_info(accept, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationsApi.get_applications ..."
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ApplicationsApi.get_applications"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ApplicationsApi.get_applications"
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
      header_params[:'Accept'] = accept
      header_params[:'Content-Type'] = content_type
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
        @api_client.config.logger.debug "API called: ApplicationsApi#get_applications\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
    def get_applications_id(id, opts = {})
      data, _status_code, _headers = get_applications_id_with_http_info(id, opts)
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
    def get_applications_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationsApi.get_applications_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApplicationsApi.get_applications_id"
      end
      # resource path
      local_var_path = "/applications/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
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
        @api_client.config.logger.debug "API called: ApplicationsApi#get_applications_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
    def p_ost_applications(opts = {})
      data, _status_code, _headers = p_ost_applications_with_http_info(opts)
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
    def p_ost_applications_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationsApi.p_ost_applications ..."
      end
      # resource path
      local_var_path = "/applications"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
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
        @api_client.config.logger.debug "API called: ApplicationsApi#p_ost_applications\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
    def p_ut_applications_id(id, opts = {})
      data, _status_code, _headers = p_ut_applications_id_with_http_info(id, opts)
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
    def p_ut_applications_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ApplicationsApi.p_ut_applications_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApplicationsApi.p_ut_applications_id"
      end
      # resource path
      local_var_path = "/applications/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
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
        @api_client.config.logger.debug "API called: ApplicationsApi#p_ut_applications_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

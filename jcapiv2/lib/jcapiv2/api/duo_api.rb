=begin
#JumpCloud APIs

# JumpCloud's V2 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module JCAPIv2
  class DuoApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete a Duo Account
    # Removes the specified Duo account, an error will be returned if the account has some Duo application used in a protected resource.  #### Sample Request ``` curl -X DELETE https://console.jumpcloud.com/api/v2/duo/accounts/{id} \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' ```
    # @param id ObjectID of the Duo Account
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id  (default to )
    # @return [DuoAccount]
    def duo_account_delete(id, content_type, accept, opts = {})
      data, _status_code, _headers = duo_account_delete_with_http_info(id, content_type, accept, opts)
      return data
    end

    # Delete a Duo Account
    # Removes the specified Duo account, an error will be returned if the account has some Duo application used in a protected resource.  #### Sample Request &#x60;&#x60;&#x60; curl -X DELETE https://console.jumpcloud.com/api/v2/duo/accounts/{id} \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; &#x60;&#x60;&#x60;
    # @param id ObjectID of the Duo Account
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id 
    # @return [Array<(DuoAccount, Fixnum, Hash)>] DuoAccount data, response status code and response headers
    def duo_account_delete_with_http_info(id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DuoApi.duo_account_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DuoApi.duo_account_delete"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling DuoApi.duo_account_delete"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling DuoApi.duo_account_delete"
      end
      # resource path
      local_var_path = "/duo/accounts/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = nil
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DuoAccount')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DuoApi#duo_account_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Duo Acount
    # This endpoint returns a specific Duo account.  #### Sample Request ``` curl https://console.jumpcloud.com/api/v2/duo/accounts/{id} \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' ```
    # @param id ObjectID of the Duo Account
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id  (default to )
    # @return [DuoAccount]
    def duo_account_get(id, content_type, accept, opts = {})
      data, _status_code, _headers = duo_account_get_with_http_info(id, content_type, accept, opts)
      return data
    end

    # Get a Duo Acount
    # This endpoint returns a specific Duo account.  #### Sample Request &#x60;&#x60;&#x60; curl https://console.jumpcloud.com/api/v2/duo/accounts/{id} \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; &#x60;&#x60;&#x60;
    # @param id ObjectID of the Duo Account
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id 
    # @return [Array<(DuoAccount, Fixnum, Hash)>] DuoAccount data, response status code and response headers
    def duo_account_get_with_http_info(id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DuoApi.duo_account_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DuoApi.duo_account_get"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling DuoApi.duo_account_get"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling DuoApi.duo_account_get"
      end
      # resource path
      local_var_path = "/duo/accounts/{id}".sub('{' + 'id' + '}', id.to_s)

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
      post_body = nil
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DuoAccount')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DuoApi#duo_account_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Duo Acounts
    # This endpoint returns all the Duo accounts for your organization. Note: There can currently only be one Duo account for your organization.  #### Sample Request ``` curl https://console.jumpcloud.com/api/v2/duo/accounts \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' ```
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id  (default to )
    # @return [Array<DuoAccount>]
    def duo_account_list(content_type, accept, opts = {})
      data, _status_code, _headers = duo_account_list_with_http_info(content_type, accept, opts)
      return data
    end

    # List Duo Acounts
    # This endpoint returns all the Duo accounts for your organization. Note: There can currently only be one Duo account for your organization.  #### Sample Request &#x60;&#x60;&#x60; curl https://console.jumpcloud.com/api/v2/duo/accounts \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; &#x60;&#x60;&#x60;
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id 
    # @return [Array<(Array<DuoAccount>, Fixnum, Hash)>] Array<DuoAccount> data, response status code and response headers
    def duo_account_list_with_http_info(content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DuoApi.duo_account_list ..."
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling DuoApi.duo_account_list"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling DuoApi.duo_account_list"
      end
      # resource path
      local_var_path = "/duo/accounts"

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
      post_body = nil
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<DuoAccount>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DuoApi#duo_account_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Duo Account
    # Registers a Duo account for an organization. Only one Duo account will be allowed, in case an organization has a Duo account already a 409 (Conflict) code will be returned.  #### Sample Request ```   curl -X POST https://console.jumpcloud.com/api/v2/duo/accounts \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{}' ```
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id  (default to )
    # @return [DuoAccount]
    def duo_account_post(content_type, accept, opts = {})
      data, _status_code, _headers = duo_account_post_with_http_info(content_type, accept, opts)
      return data
    end

    # Create Duo Account
    # Registers a Duo account for an organization. Only one Duo account will be allowed, in case an organization has a Duo account already a 409 (Conflict) code will be returned.  #### Sample Request &#x60;&#x60;&#x60;   curl -X POST https://console.jumpcloud.com/api/v2/duo/accounts \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\   -d &#39;{}&#39; &#x60;&#x60;&#x60;
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id 
    # @return [Array<(DuoAccount, Fixnum, Hash)>] DuoAccount data, response status code and response headers
    def duo_account_post_with_http_info(content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DuoApi.duo_account_post ..."
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling DuoApi.duo_account_post"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling DuoApi.duo_account_post"
      end
      # resource path
      local_var_path = "/duo/accounts"

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
      post_body = nil
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DuoAccount')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DuoApi#duo_account_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Duo Application
    # Deletes the specified Duo application, an error will be returned if the application is used in a protected resource.  #### Sample Request ```   curl -X DELETE https://console.jumpcloud.com/api/v2/duo/accounts/{ACCOUNT_ID}/applications/{APPLICATION_ID} \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}'' ```
    # @param account_id 
    # @param application_id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id  (default to )
    # @return [DuoApplication]
    def duo_application_delete(account_id, application_id, content_type, accept, opts = {})
      data, _status_code, _headers = duo_application_delete_with_http_info(account_id, application_id, content_type, accept, opts)
      return data
    end

    # Delete a Duo Application
    # Deletes the specified Duo application, an error will be returned if the application is used in a protected resource.  #### Sample Request &#x60;&#x60;&#x60;   curl -X DELETE https://console.jumpcloud.com/api/v2/duo/accounts/{ACCOUNT_ID}/applications/{APPLICATION_ID} \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;&#39; &#x60;&#x60;&#x60;
    # @param account_id 
    # @param application_id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id 
    # @return [Array<(DuoApplication, Fixnum, Hash)>] DuoApplication data, response status code and response headers
    def duo_application_delete_with_http_info(account_id, application_id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DuoApi.duo_application_delete ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling DuoApi.duo_application_delete"
      end
      # verify the required parameter 'application_id' is set
      if @api_client.config.client_side_validation && application_id.nil?
        fail ArgumentError, "Missing the required parameter 'application_id' when calling DuoApi.duo_application_delete"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling DuoApi.duo_application_delete"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling DuoApi.duo_application_delete"
      end
      # resource path
      local_var_path = "/duo/accounts/{account_id}/applications/{application_id}".sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'application_id' + '}', application_id.to_s)

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
      post_body = nil
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DuoApplication')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DuoApi#duo_application_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Duo application
    # This endpoint returns a specific Duo application that is associated with the specified Duo account.  #### Sample Request ```   curl https://console.jumpcloud.com/api/v2/duo/accounts/{ACCOUNT_ID}/applications/{APPLICATION_ID} \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' ```
    # @param account_id 
    # @param application_id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id  (default to )
    # @return [DuoApplication]
    def duo_application_get(account_id, application_id, content_type, accept, opts = {})
      data, _status_code, _headers = duo_application_get_with_http_info(account_id, application_id, content_type, accept, opts)
      return data
    end

    # Get a Duo application
    # This endpoint returns a specific Duo application that is associated with the specified Duo account.  #### Sample Request &#x60;&#x60;&#x60;   curl https://console.jumpcloud.com/api/v2/duo/accounts/{ACCOUNT_ID}/applications/{APPLICATION_ID} \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; &#x60;&#x60;&#x60;
    # @param account_id 
    # @param application_id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id 
    # @return [Array<(DuoApplication, Fixnum, Hash)>] DuoApplication data, response status code and response headers
    def duo_application_get_with_http_info(account_id, application_id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DuoApi.duo_application_get ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling DuoApi.duo_application_get"
      end
      # verify the required parameter 'application_id' is set
      if @api_client.config.client_side_validation && application_id.nil?
        fail ArgumentError, "Missing the required parameter 'application_id' when calling DuoApi.duo_application_get"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling DuoApi.duo_application_get"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling DuoApi.duo_application_get"
      end
      # resource path
      local_var_path = "/duo/accounts/{account_id}/applications/{application_id}".sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'application_id' + '}', application_id.to_s)

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
      post_body = nil
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DuoApplication')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DuoApi#duo_application_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Duo Applications
    # This endpoint returns all the Duo applications for the specified Duo account. Note: There can currently only be one Duo application for your organization.  #### Sample Request ```   curl https://console.jumpcloud.com/api/v2/duo/accounts/{ACCOUNT_ID}/applications \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' ```
    # @param account_id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id  (default to )
    # @return [Array<DuoApplication>]
    def duo_application_list(account_id, content_type, accept, opts = {})
      data, _status_code, _headers = duo_application_list_with_http_info(account_id, content_type, accept, opts)
      return data
    end

    # List Duo Applications
    # This endpoint returns all the Duo applications for the specified Duo account. Note: There can currently only be one Duo application for your organization.  #### Sample Request &#x60;&#x60;&#x60;   curl https://console.jumpcloud.com/api/v2/duo/accounts/{ACCOUNT_ID}/applications \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; &#x60;&#x60;&#x60;
    # @param account_id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id 
    # @return [Array<(Array<DuoApplication>, Fixnum, Hash)>] Array<DuoApplication> data, response status code and response headers
    def duo_application_list_with_http_info(account_id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DuoApi.duo_application_list ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling DuoApi.duo_application_list"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling DuoApi.duo_application_list"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling DuoApi.duo_application_list"
      end
      # resource path
      local_var_path = "/duo/accounts/{account_id}/applications".sub('{' + 'account_id' + '}', account_id.to_s)

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
      post_body = nil
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<DuoApplication>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DuoApi#duo_application_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Duo Application
    # Creates a Duo application for your organization and the specified account.  #### Sample Request ```   curl -X POST https://console.jumpcloud.com/api/v2/duo/accounts/{ACCOUNT_ID}/applications \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{     \"name\": \"Application Name\",     \"apiHost\": \"api-1234.duosecurity.com\",     \"integrationKey\": \"1234\",     \"secretKey\": \"5678\"   }' ```
    # @param account_id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [DuoApplicationReq] :body 
    # @option opts [String] :x_org_id  (default to )
    # @return [DuoApplication]
    def duo_application_post(account_id, content_type, accept, opts = {})
      data, _status_code, _headers = duo_application_post_with_http_info(account_id, content_type, accept, opts)
      return data
    end

    # Create Duo Application
    # Creates a Duo application for your organization and the specified account.  #### Sample Request &#x60;&#x60;&#x60;   curl -X POST https://console.jumpcloud.com/api/v2/duo/accounts/{ACCOUNT_ID}/applications \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\   -d &#39;{     \&quot;name\&quot;: \&quot;Application Name\&quot;,     \&quot;apiHost\&quot;: \&quot;api-1234.duosecurity.com\&quot;,     \&quot;integrationKey\&quot;: \&quot;1234\&quot;,     \&quot;secretKey\&quot;: \&quot;5678\&quot;   }&#39; &#x60;&#x60;&#x60;
    # @param account_id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [DuoApplicationReq] :body 
    # @option opts [String] :x_org_id 
    # @return [Array<(DuoApplication, Fixnum, Hash)>] DuoApplication data, response status code and response headers
    def duo_application_post_with_http_info(account_id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DuoApi.duo_application_post ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling DuoApi.duo_application_post"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling DuoApi.duo_application_post"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling DuoApi.duo_application_post"
      end
      # resource path
      local_var_path = "/duo/accounts/{account_id}/applications".sub('{' + 'account_id' + '}', account_id.to_s)

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
        :return_type => 'DuoApplication')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DuoApi#duo_application_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Duo Application
    # Updates the specified Duo application.  #### Sample Request ```   curl -X PUT https://console.jumpcloud.com/api/v2/duo/accounts/{ACCOUNT_ID}/applications/{APPLICATION_ID} \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{     \"name\": \"Application Name\",     \"apiHost\": \"api-1234.duosecurity.com\",     \"integrationKey\": \"1234\",     \"secretKey\": \"5678\"   }' ```
    # @param account_id 
    # @param application_id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [DuoApplicationUpdateReq] :body 
    # @option opts [String] :x_org_id  (default to )
    # @return [DuoApplication]
    def duo_application_update(account_id, application_id, content_type, accept, opts = {})
      data, _status_code, _headers = duo_application_update_with_http_info(account_id, application_id, content_type, accept, opts)
      return data
    end

    # Update Duo Application
    # Updates the specified Duo application.  #### Sample Request &#x60;&#x60;&#x60;   curl -X PUT https://console.jumpcloud.com/api/v2/duo/accounts/{ACCOUNT_ID}/applications/{APPLICATION_ID} \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\   -d &#39;{     \&quot;name\&quot;: \&quot;Application Name\&quot;,     \&quot;apiHost\&quot;: \&quot;api-1234.duosecurity.com\&quot;,     \&quot;integrationKey\&quot;: \&quot;1234\&quot;,     \&quot;secretKey\&quot;: \&quot;5678\&quot;   }&#39; &#x60;&#x60;&#x60;
    # @param account_id 
    # @param application_id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [DuoApplicationUpdateReq] :body 
    # @option opts [String] :x_org_id 
    # @return [Array<(DuoApplication, Fixnum, Hash)>] DuoApplication data, response status code and response headers
    def duo_application_update_with_http_info(account_id, application_id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DuoApi.duo_application_update ..."
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling DuoApi.duo_application_update"
      end
      # verify the required parameter 'application_id' is set
      if @api_client.config.client_side_validation && application_id.nil?
        fail ArgumentError, "Missing the required parameter 'application_id' when calling DuoApi.duo_application_update"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling DuoApi.duo_application_update"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling DuoApi.duo_application_update"
      end
      # resource path
      local_var_path = "/duo/accounts/{account_id}/applications/{application_id}".sub('{' + 'account_id' + '}', account_id.to_s).sub('{' + 'application_id' + '}', application_id.to_s)

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
        :return_type => 'DuoApplication')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DuoApi#duo_application_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

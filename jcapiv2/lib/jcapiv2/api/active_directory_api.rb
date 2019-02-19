=begin
#JumpCloud APIs

# JumpCloud's V2 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.2

=end

require 'uri'

module JCAPIv2
  class ActiveDirectoryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete an Active Directory
    # This endpoint allows you to delete an Active Directory Instance.  #### Sample Request ``` curl -X DELETE https://console.jumpcloud.com/api/v2/activedirectories/{ActiveDirectory_ID} \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY'   ```
    # @param id ObjectID of this Active Directory instance.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id  (default to )
    # @return [nil]
    def activedirectories_delete(id, content_type, accept, opts = {})
      activedirectories_delete_with_http_info(id, content_type, accept, opts)
      nil
    end

    # Delete an Active Directory
    # This endpoint allows you to delete an Active Directory Instance.  #### Sample Request &#x60;&#x60;&#x60; curl -X DELETE https://console.jumpcloud.com/api/v2/activedirectories/{ActiveDirectory_ID} \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY&#39;   &#x60;&#x60;&#x60;
    # @param id ObjectID of this Active Directory instance.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def activedirectories_delete_with_http_info(id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActiveDirectoryApi.activedirectories_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ActiveDirectoryApi.activedirectories_delete"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ActiveDirectoryApi.activedirectories_delete"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ActiveDirectoryApi.activedirectories_delete"
      end
      # resource path
      local_var_path = '/activedirectories/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActiveDirectoryApi#activedirectories_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get an Active Directory
    # This endpoint returns a specific Active Directory.  #### Sample Request  ``` curl -X GET https://console.jumpcloud.com/api/v2/activedirectories/{ActiveDirectory_ID} \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```
    # @param id ObjectID of this Active Directory instance.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id  (default to )
    # @return [ActiveDirectoryOutput]
    def activedirectories_get(id, content_type, accept, opts = {})
      data, _status_code, _headers = activedirectories_get_with_http_info(id, content_type, accept, opts)
      data
    end

    # Get an Active Directory
    # This endpoint returns a specific Active Directory.  #### Sample Request  &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/v2/activedirectories/{ActiveDirectory_ID} \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;   &#x60;&#x60;&#x60;
    # @param id ObjectID of this Active Directory instance.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id 
    # @return [Array<(ActiveDirectoryOutput, Fixnum, Hash)>] ActiveDirectoryOutput data, response status code and response headers
    def activedirectories_get_with_http_info(id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActiveDirectoryApi.activedirectories_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ActiveDirectoryApi.activedirectories_get"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ActiveDirectoryApi.activedirectories_get"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ActiveDirectoryApi.activedirectories_get"
      end
      # resource path
      local_var_path = '/activedirectories/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'ActiveDirectoryOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActiveDirectoryApi#activedirectories_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Active Directories
    # This endpoint allows you to list all your Active Directory Instances.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/v2/activedirectories/ \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned.  (default to [])
    # @option opts [Array<String>] :filter Supported operators are: eq, ne, gt, ge, lt, le, between, search, in (default to [])
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [Array<String>] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  (default to [])
    # @option opts [String] :x_org_id  (default to )
    # @return [Array<ActiveDirectoryOutput>]
    def activedirectories_list(content_type, accept, opts = {})
      data, _status_code, _headers = activedirectories_list_with_http_info(content_type, accept, opts)
      data
    end

    # List Active Directories
    # This endpoint allows you to list all your Active Directory Instances.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/v2/activedirectories/ \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;   &#x60;&#x60;&#x60;
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned. 
    # @option opts [Array<String>] :filter Supported operators are: eq, ne, gt, ge, lt, le, between, search, in
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [Array<String>] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending. 
    # @option opts [String] :x_org_id 
    # @return [Array<(Array<ActiveDirectoryOutput>, Fixnum, Hash)>] Array<ActiveDirectoryOutput> data, response status code and response headers
    def activedirectories_list_with_http_info(content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActiveDirectoryApi.activedirectories_list ...'
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ActiveDirectoryApi.activedirectories_list"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ActiveDirectoryApi.activedirectories_list"
      end
      # resource path
      local_var_path = '/activedirectories'

      # query parameters
      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'filter'] = @api_client.build_collection_param(opts[:'filter'], :csv) if !opts[:'filter'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'sort'] = @api_client.build_collection_param(opts[:'sort'], :csv) if !opts[:'sort'].nil?

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
        :return_type => 'Array<ActiveDirectoryOutput>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActiveDirectoryApi#activedirectories_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new Active Directory
    # This endpoint allows you to create a new Active Directory.   #### Sample Request ``` curl -X POST https://console.jumpcloud.com/api/v2/activedirectories/ \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{         \"domain\": \"{DC=AD_domain_name;DC=com}\" } ' ```
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [ActiveDirectoryInput] :body 
    # @option opts [String] :x_org_id  (default to )
    # @return [ActiveDirectoryOutput]
    def activedirectories_post(content_type, accept, opts = {})
      data, _status_code, _headers = activedirectories_post_with_http_info(content_type, accept, opts)
      data
    end

    # Create a new Active Directory
    # This endpoint allows you to create a new Active Directory.   #### Sample Request &#x60;&#x60;&#x60; curl -X POST https://console.jumpcloud.com/api/v2/activedirectories/ \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\   -d &#39;{         \&quot;domain\&quot;: \&quot;{DC&#x3D;AD_domain_name;DC&#x3D;com}\&quot; } &#39; &#x60;&#x60;&#x60;
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [ActiveDirectoryInput] :body 
    # @option opts [String] :x_org_id 
    # @return [Array<(ActiveDirectoryOutput, Fixnum, Hash)>] ActiveDirectoryOutput data, response status code and response headers
    def activedirectories_post_with_http_info(content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActiveDirectoryApi.activedirectories_post ...'
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ActiveDirectoryApi.activedirectories_post"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ActiveDirectoryApi.activedirectories_post"
      end
      # resource path
      local_var_path = '/activedirectories'

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
        :return_type => 'ActiveDirectoryOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActiveDirectoryApi#activedirectories_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List the associations of an Active Directory instance
    # This endpoint returns the direct associations of this Active Directory instance.  A direct association can be a non-homogeneous relationship between 2 different objects, for example Active Directory and Users.   #### Sample Request ``` curl -X GET 'https://console.jumpcloud.com/api/v2/activedirectories/{ActiveDirectory_ID}/associations?targets=user \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' ```
    # @param activedirectory_id 
    # @param targets 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [String] :x_org_id  (default to )
    # @return [Array<GraphConnection>]
    def graph_active_directory_associations_list(activedirectory_id, targets, content_type, accept, opts = {})
      data, _status_code, _headers = graph_active_directory_associations_list_with_http_info(activedirectory_id, targets, content_type, accept, opts)
      data
    end

    # List the associations of an Active Directory instance
    # This endpoint returns the direct associations of this Active Directory instance.  A direct association can be a non-homogeneous relationship between 2 different objects, for example Active Directory and Users.   #### Sample Request &#x60;&#x60;&#x60; curl -X GET &#39;https://console.jumpcloud.com/api/v2/activedirectories/{ActiveDirectory_ID}/associations?targets&#x3D;user \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; &#x60;&#x60;&#x60;
    # @param activedirectory_id 
    # @param targets 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :x_org_id 
    # @return [Array<(Array<GraphConnection>, Fixnum, Hash)>] Array<GraphConnection> data, response status code and response headers
    def graph_active_directory_associations_list_with_http_info(activedirectory_id, targets, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActiveDirectoryApi.graph_active_directory_associations_list ...'
      end
      # verify the required parameter 'activedirectory_id' is set
      if @api_client.config.client_side_validation && activedirectory_id.nil?
        fail ArgumentError, "Missing the required parameter 'activedirectory_id' when calling ActiveDirectoryApi.graph_active_directory_associations_list"
      end
      # verify the required parameter 'targets' is set
      if @api_client.config.client_side_validation && targets.nil?
        fail ArgumentError, "Missing the required parameter 'targets' when calling ActiveDirectoryApi.graph_active_directory_associations_list"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ActiveDirectoryApi.graph_active_directory_associations_list"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ActiveDirectoryApi.graph_active_directory_associations_list"
      end
      # resource path
      local_var_path = '/activedirectories/{activedirectory_id}/associations'.sub('{' + 'activedirectory_id' + '}', activedirectory_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'targets'] = @api_client.build_collection_param(targets, :csv)
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?

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
        :return_type => 'Array<GraphConnection>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActiveDirectoryApi#graph_active_directory_associations_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Manage the associations of an Active Directory instance
    # This endpoint allows you to manage the _direct_ associations of an Active Directory instance.  A direct association can be a non-homogeneous relationship between 2 different objects, for example Active Directory and Users.  #### Sample Request ``` curl -X POST https://console.jumpcloud.com/api/v2/activedirectories/{AD_Instance_ID}/associations \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{         \"op\": \"add\",         \"type\": \"user\",         \"id\": \"{User_ID}\" } ' ```
    # @param activedirectory_id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [GraphManagementReq] :body 
    # @option opts [String] :x_org_id  (default to )
    # @return [nil]
    def graph_active_directory_associations_post(activedirectory_id, content_type, accept, opts = {})
      graph_active_directory_associations_post_with_http_info(activedirectory_id, content_type, accept, opts)
      nil
    end

    # Manage the associations of an Active Directory instance
    # This endpoint allows you to manage the _direct_ associations of an Active Directory instance.  A direct association can be a non-homogeneous relationship between 2 different objects, for example Active Directory and Users.  #### Sample Request &#x60;&#x60;&#x60; curl -X POST https://console.jumpcloud.com/api/v2/activedirectories/{AD_Instance_ID}/associations \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\   -d &#39;{         \&quot;op\&quot;: \&quot;add\&quot;,         \&quot;type\&quot;: \&quot;user\&quot;,         \&quot;id\&quot;: \&quot;{User_ID}\&quot; } &#39; &#x60;&#x60;&#x60;
    # @param activedirectory_id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [GraphManagementReq] :body 
    # @option opts [String] :x_org_id 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def graph_active_directory_associations_post_with_http_info(activedirectory_id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActiveDirectoryApi.graph_active_directory_associations_post ...'
      end
      # verify the required parameter 'activedirectory_id' is set
      if @api_client.config.client_side_validation && activedirectory_id.nil?
        fail ArgumentError, "Missing the required parameter 'activedirectory_id' when calling ActiveDirectoryApi.graph_active_directory_associations_post"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ActiveDirectoryApi.graph_active_directory_associations_post"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ActiveDirectoryApi.graph_active_directory_associations_post"
      end
      # resource path
      local_var_path = '/activedirectories/{activedirectory_id}/associations'.sub('{' + 'activedirectory_id' + '}', activedirectory_id.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActiveDirectoryApi#graph_active_directory_associations_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List the User Groups bound to an Active Directory instance
    # This endpoint will return all Users Groups bound to an Active Directory instance, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.  Each element will contain the group's type, id, attributes and paths.  The `attributes` object is a key/value hash of compiled graph attributes for all paths followed.  The `paths` array enumerates each path from this Active Directory instance to the corresponding User Group; this array represents all grouping and/or associations that would have to be removed to deprovision the User Group from this Active Directory instance.  See `/members` and `/associations` endpoints to manage those collections.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/v2/activedirectories/{ActiveDirectory_ID}/usergroups \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' ```
    # @param activedirectory_id ObjectID of the Active Directory instance.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [String] :x_org_id  (default to )
    # @return [Array<GraphObjectWithPaths>]
    def graph_active_directory_traverse_user_group(activedirectory_id, content_type, accept, opts = {})
      data, _status_code, _headers = graph_active_directory_traverse_user_group_with_http_info(activedirectory_id, content_type, accept, opts)
      data
    end

    # List the User Groups bound to an Active Directory instance
    # This endpoint will return all Users Groups bound to an Active Directory instance, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.  Each element will contain the group&#39;s type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of compiled graph attributes for all paths followed.  The &#x60;paths&#x60; array enumerates each path from this Active Directory instance to the corresponding User Group; this array represents all grouping and/or associations that would have to be removed to deprovision the User Group from this Active Directory instance.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/v2/activedirectories/{ActiveDirectory_ID}/usergroups \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; &#x60;&#x60;&#x60;
    # @param activedirectory_id ObjectID of the Active Directory instance.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :x_org_id 
    # @return [Array<(Array<GraphObjectWithPaths>, Fixnum, Hash)>] Array<GraphObjectWithPaths> data, response status code and response headers
    def graph_active_directory_traverse_user_group_with_http_info(activedirectory_id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ActiveDirectoryApi.graph_active_directory_traverse_user_group ...'
      end
      # verify the required parameter 'activedirectory_id' is set
      if @api_client.config.client_side_validation && activedirectory_id.nil?
        fail ArgumentError, "Missing the required parameter 'activedirectory_id' when calling ActiveDirectoryApi.graph_active_directory_traverse_user_group"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling ActiveDirectoryApi.graph_active_directory_traverse_user_group"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling ActiveDirectoryApi.graph_active_directory_traverse_user_group"
      end
      # resource path
      local_var_path = '/activedirectories/{activedirectory_id}/usergroups'.sub('{' + 'activedirectory_id' + '}', activedirectory_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?

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
        :return_type => 'Array<GraphObjectWithPaths>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActiveDirectoryApi#graph_active_directory_traverse_user_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

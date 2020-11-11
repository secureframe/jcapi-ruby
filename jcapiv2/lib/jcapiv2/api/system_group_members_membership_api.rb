=begin
#JumpCloud APIs

#JumpCloud's V2 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module JCAPIv2
  class SystemGroupMembersMembershipApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List the members of a System Group
    # This endpoint returns the system members of a System Group.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/v2/systemgroups/{Group_ID}/members \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'  ```
    # @param group_id ObjectID of the System Group.
    # @param accept 
    # @param content_type 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [String] :x_org_id  (default to )
    # @return [Array<GraphConnection>]
    def g_et_systemgroups_group_id_members(group_id, accept, content_type, opts = {})
      data, _status_code, _headers = g_et_systemgroups_group_id_members_with_http_info(group_id, accept, content_type, opts)
      return data
    end

    # List the members of a System Group
    # This endpoint returns the system members of a System Group.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/v2/systemgroups/{Group_ID}/members \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;  &#x60;&#x60;&#x60;
    # @param group_id ObjectID of the System Group.
    # @param accept 
    # @param content_type 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :x_org_id 
    # @return [Array<(Array<GraphConnection>, Fixnum, Hash)>] Array<GraphConnection> data, response status code and response headers
    def g_et_systemgroups_group_id_members_with_http_info(group_id, accept, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SystemGroupMembersMembershipApi.g_et_systemgroups_group_id_members ..."
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling SystemGroupMembersMembershipApi.g_et_systemgroups_group_id_members"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling SystemGroupMembersMembershipApi.g_et_systemgroups_group_id_members"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling SystemGroupMembersMembershipApi.g_et_systemgroups_group_id_members"
      end
      if @api_client.config.client_side_validation && !opts[:'skip'].nil? && opts[:'skip'] < 0
        fail ArgumentError, 'invalid value for "opts[:"skip"]" when calling SystemGroupMembersMembershipApi.g_et_systemgroups_group_id_members, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = "/systemgroups/{group_id}/members".sub('{' + 'group_id' + '}', group_id.to_s)

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
        :return_type => 'Array<GraphConnection>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemGroupMembersMembershipApi#g_et_systemgroups_group_id_members\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the System Group's membership
    # This endpoint returns all Systems that are a member of this System Group.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/v2/systemgroups/{Group_ID/membership \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'  ```
    # @param group_id ObjectID of the System Group.
    # @param accept 
    # @param content_type 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [Array<String>] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending. 
    # @option opts [Array<String>] :filter A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60;
    # @option opts [String] :x_org_id  (default to )
    # @return [Array<GraphObjectWithPaths>]
    def g_et_systemgroups_group_id_membership(group_id, accept, content_type, opts = {})
      data, _status_code, _headers = g_et_systemgroups_group_id_membership_with_http_info(group_id, accept, content_type, opts)
      return data
    end

    # List the System Group&#39;s membership
    # This endpoint returns all Systems that are a member of this System Group.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/v2/systemgroups/{Group_ID/membership \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;  &#x60;&#x60;&#x60;
    # @param group_id ObjectID of the System Group.
    # @param accept 
    # @param content_type 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [Array<String>] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending. 
    # @option opts [Array<String>] :filter A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60;
    # @option opts [String] :x_org_id 
    # @return [Array<(Array<GraphObjectWithPaths>, Fixnum, Hash)>] Array<GraphObjectWithPaths> data, response status code and response headers
    def g_et_systemgroups_group_id_membership_with_http_info(group_id, accept, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SystemGroupMembersMembershipApi.g_et_systemgroups_group_id_membership ..."
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling SystemGroupMembersMembershipApi.g_et_systemgroups_group_id_membership"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling SystemGroupMembersMembershipApi.g_et_systemgroups_group_id_membership"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling SystemGroupMembersMembershipApi.g_et_systemgroups_group_id_membership"
      end
      if @api_client.config.client_side_validation && !opts[:'skip'].nil? && opts[:'skip'] < 0
        fail ArgumentError, 'invalid value for "opts[:"skip"]" when calling SystemGroupMembersMembershipApi.g_et_systemgroups_group_id_membership, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = "/systemgroups/{group_id}/membership".sub('{' + 'group_id' + '}', group_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'sort'] = @api_client.build_collection_param(opts[:'sort'], :csv) if !opts[:'sort'].nil?
      query_params[:'filter'] = @api_client.build_collection_param(opts[:'filter'], :csv) if !opts[:'filter'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
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
        :return_type => 'Array<GraphObjectWithPaths>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemGroupMembersMembershipApi#g_et_systemgroups_group_id_membership\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Manage the members of a System Group
    # This endpoint allows you to manage the system members of a System Group.  #### Sample Request ``` curl -X POST https://console.jumpcloud.com/api/v2/systemgroups/{Group_ID}/members \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{     \"op\": \"add\",     \"type\": \"system\",     \"id\": \"{System_ID}\" }' ```
    # @param group_id ObjectID of the System Group.
    # @param accept 
    # @param content_type 
    # @param [Hash] opts the optional parameters
    # @option opts [SystemGroupMembersReq] :body 
    # @option opts [String] :authorization Authorization header for the System Context API
    # @option opts [String] :date Current date header for the System Context API
    # @option opts [String] :x_org_id  (default to )
    # @return [nil]
    def p_ost_systemgroups_group_id_members(group_id, accept, content_type, opts = {})
      p_ost_systemgroups_group_id_members_with_http_info(group_id, accept, content_type, opts)
      return nil
    end

    # Manage the members of a System Group
    # This endpoint allows you to manage the system members of a System Group.  #### Sample Request &#x60;&#x60;&#x60; curl -X POST https://console.jumpcloud.com/api/v2/systemgroups/{Group_ID}/members \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\   -d &#39;{     \&quot;op\&quot;: \&quot;add\&quot;,     \&quot;type\&quot;: \&quot;system\&quot;,     \&quot;id\&quot;: \&quot;{System_ID}\&quot; }&#39; &#x60;&#x60;&#x60;
    # @param group_id ObjectID of the System Group.
    # @param accept 
    # @param content_type 
    # @param [Hash] opts the optional parameters
    # @option opts [SystemGroupMembersReq] :body 
    # @option opts [String] :authorization Authorization header for the System Context API
    # @option opts [String] :date Current date header for the System Context API
    # @option opts [String] :x_org_id 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def p_ost_systemgroups_group_id_members_with_http_info(group_id, accept, content_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SystemGroupMembersMembershipApi.p_ost_systemgroups_group_id_members ..."
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling SystemGroupMembersMembershipApi.p_ost_systemgroups_group_id_members"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling SystemGroupMembersMembershipApi.p_ost_systemgroups_group_id_members"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling SystemGroupMembersMembershipApi.p_ost_systemgroups_group_id_members"
      end
      # resource path
      local_var_path = "/systemgroups/{group_id}/members".sub('{' + 'group_id' + '}', group_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Accept'] = accept
      header_params[:'Content-Type'] = content_type
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?
      header_params[:'Date'] = opts[:'date'] if !opts[:'date'].nil?
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
        @api_client.config.logger.debug "API called: SystemGroupMembersMembershipApi#p_ost_systemgroups_group_id_members\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

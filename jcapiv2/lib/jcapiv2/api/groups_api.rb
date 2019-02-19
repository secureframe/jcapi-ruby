=begin
#JumpCloud APIs

# JumpCloud's V2 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.2

=end

require 'uri'

module JCAPIv2
  class GroupsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List All Groups
    # This endpoint returns all Groups that exist in your organization.  #### Available filter fields:   - `name`   - `disabled`   - `type`  #### Sample Request  ```   curl -X GET \\   https://console.jumpcloud.com/api/v2/groups \\   -H 'accept: application/json' \\   -H 'content-type: application/json' \\   -H 'x-api-key: {API_KEY}' ```
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned.  (default to [])
    # @option opts [Array<String>] :filter Supported operators are: eq, ne, gt, ge, lt, le, between, search, in (default to [])
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [Array<String>] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  (default to [])
    # @option opts [String] :x_org_id  (default to )
    # @return [Array<Group>]
    def groups_list(content_type, accept, opts = {})
      data, _status_code, _headers = groups_list_with_http_info(content_type, accept, opts)
      data
    end

    # List All Groups
    # This endpoint returns all Groups that exist in your organization.  #### Available filter fields:   - &#x60;name&#x60;   - &#x60;disabled&#x60;   - &#x60;type&#x60;  #### Sample Request  &#x60;&#x60;&#x60;   curl -X GET \\   https://console.jumpcloud.com/api/v2/groups \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; &#x60;&#x60;&#x60;
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned. 
    # @option opts [Array<String>] :filter Supported operators are: eq, ne, gt, ge, lt, le, between, search, in
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [Array<String>] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending. 
    # @option opts [String] :x_org_id 
    # @return [Array<(Array<Group>, Fixnum, Hash)>] Array<Group> data, response status code and response headers
    def groups_list_with_http_info(content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupsApi.groups_list ...'
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling GroupsApi.groups_list"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling GroupsApi.groups_list"
      end
      # resource path
      local_var_path = '/groups'

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
        :return_type => 'Array<Group>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupsApi#groups_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

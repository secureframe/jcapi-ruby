=begin
#JumpCloud APIs

#V1 & V2 versions of JumpCloud's API. The previous version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage commands, systems, & system users.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require "uri"

module JCAPIv1
  class SearchApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List System Users
    # Return System Users in multi-record format allowing for the passing of the 'filter' parameter. This WILL NOT allow you to add a new system.  ### Example  ##### Find a System User by username  ``` curl \\   -d '{\"filter\": [{\"username\" : \"bob\"}]}' \\   -X 'POST' \\   -H 'Content-Type: application/json' \\   -H 'Accept: application/json' \\   -H \"x-api-key: [YOUR_API_KEY_HERE]\" \\   \"https://console.jumpcloud.com/api/search/systemusers\" ```
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Search] :body 
    # @option opts [Integer] :limit The number of records to return at once. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [String] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned.  (default to )
    # @return [Systemuserslist]
    def search_systemusers_post(content_type, accept, opts = {})
      data, _status_code, _headers = search_systemusers_post_with_http_info(content_type, accept, opts)
      return data
    end

    # List System Users
    # Return System Users in multi-record format allowing for the passing of the &#39;filter&#39; parameter. This WILL NOT allow you to add a new system.  ### Example  ##### Find a System User by username  &#x60;&#x60;&#x60; curl \\   -d &#39;{\&quot;filter\&quot;: [{\&quot;username\&quot; : \&quot;bob\&quot;}]}&#39; \\   -X &#39;POST&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;Accept: application/json&#39; \\   -H \&quot;x-api-key: [YOUR_API_KEY_HERE]\&quot; \\   \&quot;https://console.jumpcloud.com/api/search/systemusers\&quot; &#x60;&#x60;&#x60;
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Search] :body 
    # @option opts [Integer] :limit The number of records to return at once.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned. 
    # @return [Array<(Systemuserslist, Fixnum, Hash)>] Systemuserslist data, response status code and response headers
    def search_systemusers_post_with_http_info(content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SearchApi.search_systemusers_post ..."
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling SearchApi.search_systemusers_post"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling SearchApi.search_systemusers_post"
      end
      # resource path
      local_var_path = "/search/systemusers"

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = content_type
      header_params[:'Accept'] = accept

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
        :return_type => 'Systemuserslist')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SearchApi#search_systemusers_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

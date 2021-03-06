=begin
#JumpCloud APIs

#JumpCloud's V2 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module JCAPIv2
  class FdeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get System FDE Key
    # This endpoint will return the current (latest) fde key saved for a system.
    # @param system_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id  (default to )
    # @return [Systemfdekey]
    def get_systems_system_id_fdekey(system_id, opts = {})
      data, _status_code, _headers = get_systems_system_id_fdekey_with_http_info(system_id, opts)
      return data
    end

    # Get System FDE Key
    # This endpoint will return the current (latest) fde key saved for a system.
    # @param system_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_org_id 
    # @return [Array<(Systemfdekey, Fixnum, Hash)>] Systemfdekey data, response status code and response headers
    def get_systems_system_id_fdekey_with_http_info(system_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FdeApi.get_systems_system_id_fdekey ..."
      end
      # verify the required parameter 'system_id' is set
      if @api_client.config.client_side_validation && system_id.nil?
        fail ArgumentError, "Missing the required parameter 'system_id' when calling FdeApi.get_systems_system_id_fdekey"
      end
      # resource path
      local_var_path = "/systems/{system_id}/fdekey".sub('{' + 'system_id' + '}', system_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
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
        :return_type => 'Systemfdekey')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FdeApi#get_systems_system_id_fdekey\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

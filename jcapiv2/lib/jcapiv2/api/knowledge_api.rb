=begin
#JumpCloud APIs

# JumpCloud's V2 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module JCAPIv2
  class KnowledgeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List Knowledge Articles
    # This endpoint returns a list of knowledge articles hosted in salesforce.  ``` Sample Request curl -X GET https://console.jumpcloud.com/api/v2/knowledge/salesforce \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' ```
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields 
    # @option opts [Array<String>] :filter Supported operators are: eq, ne, gt, ge, lt, le, between, search, in
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [Array<String>] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending. 
    # @return [SalesforceKnowledgeListOutput]
    def knowledge_salesforce_list(opts = {})
      data, _status_code, _headers = knowledge_salesforce_list_with_http_info(opts)
      return data
    end

    # List Knowledge Articles
    # This endpoint returns a list of knowledge articles hosted in salesforce.  &#x60;&#x60;&#x60; Sample Request curl -X GET https://console.jumpcloud.com/api/v2/knowledge/salesforce \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; &#x60;&#x60;&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :fields 
    # @option opts [Array<String>] :filter Supported operators are: eq, ne, gt, ge, lt, le, between, search, in
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [Array<String>] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending. 
    # @return [Array<(SalesforceKnowledgeListOutput, Fixnum, Hash)>] SalesforceKnowledgeListOutput data, response status code and response headers
    def knowledge_salesforce_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: KnowledgeApi.knowledge_salesforce_list ..."
      end
      if @api_client.config.client_side_validation && !opts[:'skip'].nil? && opts[:'skip'] < 0
        fail ArgumentError, 'invalid value for "opts[:"skip"]" when calling KnowledgeApi.knowledge_salesforce_list, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = "/knowledge/salesforce"

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
        :return_type => 'SalesforceKnowledgeListOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KnowledgeApi#knowledge_salesforce_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

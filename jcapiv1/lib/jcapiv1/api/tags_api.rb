=begin
#JumpCloud APIs

# JumpCloud's V1 API. This set of endpoints allows JumpCloud customers to manage commands, systems, & system users.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module JCAPIv1
  class TagsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete a Tag
    # Hidden as Tags is deprecated  Delete a Tag.
    # @param name 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @return [Tag]
    def tags_delete(name, content_type, accept, opts = {})
      data, _status_code, _headers = tags_delete_with_http_info(name, content_type, accept, opts)
      return data
    end

    # Delete a Tag
    # Hidden as Tags is deprecated  Delete a Tag.
    # @param name 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Tag, Fixnum, Hash)>] Tag data, response status code and response headers
    def tags_delete_with_http_info(name, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TagsApi.tags_delete ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling TagsApi.tags_delete"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling TagsApi.tags_delete"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling TagsApi.tags_delete"
      end
      # resource path
      local_var_path = "/tags/{name}".sub('{' + 'name' + '}', name.to_s)

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
        :return_type => 'Tag')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#tags_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List a Tag
    # Hidden as Tags is deprecated  Returns a specific tag.
    # @param name 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted, the default list of fields will be returned.  (default to )
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [String] :sort Use space separated sort parameters to sort the collection. Default sort is ascending. Prefix with &#x60;-&#x60; to sort descending.  (default to )
    # @option opts [String] :filter A filter to apply to the query.
    # @return [Tag]
    def tags_get(name, content_type, accept, opts = {})
      data, _status_code, _headers = tags_get_with_http_info(name, content_type, accept, opts)
      return data
    end

    # List a Tag
    # Hidden as Tags is deprecated  Returns a specific tag.
    # @param name 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted, the default list of fields will be returned. 
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :sort Use space separated sort parameters to sort the collection. Default sort is ascending. Prefix with &#x60;-&#x60; to sort descending. 
    # @option opts [String] :filter A filter to apply to the query.
    # @return [Array<(Tag, Fixnum, Hash)>] Tag data, response status code and response headers
    def tags_get_with_http_info(name, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TagsApi.tags_get ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling TagsApi.tags_get"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling TagsApi.tags_get"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling TagsApi.tags_get"
      end
      if @api_client.config.client_side_validation && !opts[:'skip'].nil? && opts[:'skip'] < 0
        fail ArgumentError, 'invalid value for "opts[:"skip"]" when calling TagsApi.tags_get, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = "/Tags/{name}".sub('{' + 'name' + '}', name.to_s)

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
        :return_type => 'Tag')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#tags_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List All Tags
    # Hidden as Tags is deprecated  Returns all Tags.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted, the default list of fields will be returned.  (default to )
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [String] :sort Use space separated sort parameters to sort the collection. Default sort is ascending. Prefix with &#x60;-&#x60; to sort descending.  (default to )
    # @option opts [String] :filter A filter to apply to the query.
    # @return [Tagslist]
    def tags_list(content_type, accept, opts = {})
      data, _status_code, _headers = tags_list_with_http_info(content_type, accept, opts)
      return data
    end

    # List All Tags
    # Hidden as Tags is deprecated  Returns all Tags.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted, the default list of fields will be returned. 
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :sort Use space separated sort parameters to sort the collection. Default sort is ascending. Prefix with &#x60;-&#x60; to sort descending. 
    # @option opts [String] :filter A filter to apply to the query.
    # @return [Array<(Tagslist, Fixnum, Hash)>] Tagslist data, response status code and response headers
    def tags_list_with_http_info(content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TagsApi.tags_list ..."
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling TagsApi.tags_list"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling TagsApi.tags_list"
      end
      if @api_client.config.client_side_validation && !opts[:'skip'].nil? && opts[:'skip'] < 0
        fail ArgumentError, 'invalid value for "opts[:"skip"]" when calling TagsApi.tags_list, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = "/tags"

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
        :return_type => 'Tagslist')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#tags_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Tag
    # Hidden as Tags is deprecated  Create a tag.  ### Examples #### Create a new Tag  ``` curl \\   -d '{\"name\" : \"Developers\"}' \\   -X 'POST' \\   -H 'Content-Type: application/json' \\   -H 'Accept: application/json' \\   -H \"x-api-key: [YOUR_API_KEY_HERE]\" \\   \"https://console.jumpcloud.com/api/tags\" ```
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Tagpost] :body 
    # @return [Tag]
    def tags_post(content_type, accept, opts = {})
      data, _status_code, _headers = tags_post_with_http_info(content_type, accept, opts)
      return data
    end

    # Create a Tag
    # Hidden as Tags is deprecated  Create a tag.  ### Examples #### Create a new Tag  &#x60;&#x60;&#x60; curl \\   -d &#39;{\&quot;name\&quot; : \&quot;Developers\&quot;}&#39; \\   -X &#39;POST&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;Accept: application/json&#39; \\   -H \&quot;x-api-key: [YOUR_API_KEY_HERE]\&quot; \\   \&quot;https://console.jumpcloud.com/api/tags\&quot; &#x60;&#x60;&#x60;
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Tagpost] :body 
    # @return [Array<(Tag, Fixnum, Hash)>] Tag data, response status code and response headers
    def tags_post_with_http_info(content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TagsApi.tags_post ..."
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling TagsApi.tags_post"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling TagsApi.tags_post"
      end
      # resource path
      local_var_path = "/tags"

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
        :return_type => 'Tag')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#tags_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a Tag
    # Hidden as Tags is deprecated  Update a specific tag.
    # @param name 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Tagput] :body 
    # @return [Tag]
    def tags_put(name, content_type, accept, opts = {})
      data, _status_code, _headers = tags_put_with_http_info(name, content_type, accept, opts)
      return data
    end

    # Update a Tag
    # Hidden as Tags is deprecated  Update a specific tag.
    # @param name 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Tagput] :body 
    # @return [Array<(Tag, Fixnum, Hash)>] Tag data, response status code and response headers
    def tags_put_with_http_info(name, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TagsApi.tags_put ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling TagsApi.tags_put"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling TagsApi.tags_put"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling TagsApi.tags_put"
      end
      # resource path
      local_var_path = "/Tag/{name}".sub('{' + 'name' + '}', name.to_s)

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
        :return_type => 'Tag')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#tags_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

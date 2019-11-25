=begin
#JumpCloud APIs

# JumpCloud's V2 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module JCAPIv2
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete Enrollment Profile
    # 
    # @param enrollment_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [JcEnrollmentProfile]
    def jc_enrollment_profiles_delete(enrollment_profile_id, opts = {})
      data, _status_code, _headers = jc_enrollment_profiles_delete_with_http_info(enrollment_profile_id, opts)
      return data
    end

    # Delete Enrollment Profile
    # 
    # @param enrollment_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(JcEnrollmentProfile, Fixnum, Hash)>] JcEnrollmentProfile data, response status code and response headers
    def jc_enrollment_profiles_delete_with_http_info(enrollment_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.jc_enrollment_profiles_delete ..."
      end
      # verify the required parameter 'enrollment_profile_id' is set
      if @api_client.config.client_side_validation && enrollment_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'enrollment_profile_id' when calling DefaultApi.jc_enrollment_profiles_delete"
      end
      # resource path
      local_var_path = "/enrollmentprofiles/{enrollment_profile_id}".sub('{' + 'enrollment_profile_id' + '}', enrollment_profile_id.to_s)

      # query parameters
      query_params = {}

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'JcEnrollmentProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#jc_enrollment_profiles_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Enrollment Profile
    # 
    # @param enrollment_profile_id 
    # @param [Hash] opts the optional parameters
    # @option opts [JcEnrollmentProfile] :body 
    # @return [nil]
    def jc_enrollment_profiles_get(enrollment_profile_id, opts = {})
      jc_enrollment_profiles_get_with_http_info(enrollment_profile_id, opts)
      return nil
    end

    # Get Enrollment Profile
    # 
    # @param enrollment_profile_id 
    # @param [Hash] opts the optional parameters
    # @option opts [JcEnrollmentProfile] :body 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def jc_enrollment_profiles_get_with_http_info(enrollment_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.jc_enrollment_profiles_get ..."
      end
      # verify the required parameter 'enrollment_profile_id' is set
      if @api_client.config.client_side_validation && enrollment_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'enrollment_profile_id' when calling DefaultApi.jc_enrollment_profiles_get"
      end
      # resource path
      local_var_path = "/enrollmentprofiles/{enrollment_profile_id}".sub('{' + 'enrollment_profile_id' + '}', enrollment_profile_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#jc_enrollment_profiles_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Enrollment Profiles
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit  (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @return [Array<JcEnrollmentProfile>]
    def jc_enrollment_profiles_list(opts = {})
      data, _status_code, _headers = jc_enrollment_profiles_list_with_http_info(opts)
      return data
    end

    # List Enrollment Profiles
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 
    # @option opts [Integer] :skip The offset into the records to return.
    # @return [Array<(Array<JcEnrollmentProfile>, Fixnum, Hash)>] Array<JcEnrollmentProfile> data, response status code and response headers
    def jc_enrollment_profiles_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.jc_enrollment_profiles_list ..."
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DefaultApi.jc_enrollment_profiles_list, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 0
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling DefaultApi.jc_enrollment_profiles_list, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'skip'].nil? && opts[:'skip'] < 0
        fail ArgumentError, 'invalid value for "opts[:"skip"]" when calling DefaultApi.jc_enrollment_profiles_list, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = "/enrollmentprofiles"

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
        :return_type => 'Array<JcEnrollmentProfile>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#jc_enrollment_profiles_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create new Enrollment Profile
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Body1] :body 
    # @return [JcEnrollmentProfile]
    def jc_enrollment_profiles_post(opts = {})
      data, _status_code, _headers = jc_enrollment_profiles_post_with_http_info(opts)
      return data
    end

    # Create new Enrollment Profile
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Body1] :body 
    # @return [Array<(JcEnrollmentProfile, Fixnum, Hash)>] JcEnrollmentProfile data, response status code and response headers
    def jc_enrollment_profiles_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.jc_enrollment_profiles_post ..."
      end
      # resource path
      local_var_path = "/enrollmentprofiles"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

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
        :return_type => 'JcEnrollmentProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#jc_enrollment_profiles_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Enrollment Profile
    # 
    # @param enrollment_profile_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Body2] :body 
    # @return [JcEnrollmentProfile]
    def jc_enrollment_profiles_put(enrollment_profile_id, opts = {})
      data, _status_code, _headers = jc_enrollment_profiles_put_with_http_info(enrollment_profile_id, opts)
      return data
    end

    # Update Enrollment Profile
    # 
    # @param enrollment_profile_id 
    # @param [Hash] opts the optional parameters
    # @option opts [Body2] :body 
    # @return [Array<(JcEnrollmentProfile, Fixnum, Hash)>] JcEnrollmentProfile data, response status code and response headers
    def jc_enrollment_profiles_put_with_http_info(enrollment_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi.jc_enrollment_profiles_put ..."
      end
      # verify the required parameter 'enrollment_profile_id' is set
      if @api_client.config.client_side_validation && enrollment_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'enrollment_profile_id' when calling DefaultApi.jc_enrollment_profiles_put"
      end
      # resource path
      local_var_path = "/enrollmentprofiles/{enrollment_profile_id}".sub('{' + 'enrollment_profile_id' + '}', enrollment_profile_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

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
        :return_type => 'JcEnrollmentProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#jc_enrollment_profiles_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

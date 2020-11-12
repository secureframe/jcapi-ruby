=begin
#JumpCloud APIs

#JumpCloud's V1 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for JCAPIv1::RadiusServersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RadiusServersApi' do
  before do
    # run before each test
    @instance = JCAPIv1::RadiusServersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RadiusServersApi' do
    it 'should create an instance of RadiusServersApi' do
      expect(@instance).to be_instance_of(JCAPIv1::RadiusServersApi)
    end
  end

  # unit tests for d_elete_radiusservers_id
  # Delete Radius Server
  # This endpoint allows you to delete RADIUS servers in your organization. &#x60;&#x60;&#x60; curl -X DELETE https://console.jumpcloud.com/api/radiusservers/{ServerID} \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\ &#x60;&#x60;&#x60;
  # @param id 
  # @param accept 
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_org_id 
  # @return [Radiusserverput]
  describe 'd_elete_radiusservers_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_radiusservers
  # List Radius Servers
  # This endpoint allows you to get a list of all RADIUS servers in your organization.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/radiusservers/ \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\ &#x60;&#x60;&#x60;
  # @param accept 
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted, the default list of fields will be returned. 
  # @option opts [String] :filter A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60;
  # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
  # @option opts [Integer] :skip The offset into the records to return.
  # @option opts [String] :sort Use space separated sort parameters to sort the collection. Default sort is ascending. Prefix with &#x60;-&#x60; to sort descending. 
  # @option opts [String] :x_org_id 
  # @return [Radiusserverslist]
  describe 'get_radiusservers test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_radiusservers_id
  # Get Radius Server
  # This endpoint allows you to get a RADIUS server in your organization.  ####  &#x60;&#x60;&#x60; curl -X PUT https://console.jumpcloud.com/api/radiusservers/{ServerID} \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\ &#x60;&#x60;&#x60;
  # @param id 
  # @param accept 
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_org_id 
  # @return [Radiusserver]
  describe 'get_radiusservers_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for p_ost_radiusservers
  # Create a Radius Server
  # This endpoint allows you to create RADIUS servers in your organization.  #### Sample Request &#x60;&#x60;&#x60; curl -X POST https://console.jumpcloud.com/api/radiusservers/ \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\   -d &#39;{     \&quot;name\&quot;: \&quot;{test_radius}\&quot;,     \&quot;networkSourceIp\&quot;: \&quot;{0.0.0.0}\&quot;,     \&quot;sharedSecret\&quot;:\&quot;{secretpassword}\&quot;,     \&quot;userLockoutAction\&quot;: \&quot;REMOVE\&quot;,     \&quot;userPasswordExpirationAction\&quot;: \&quot;MAINTAIN\&quot; }&#39; &#x60;&#x60;&#x60;
  # @param accept 
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Radiusserverpost] :body 
  # @option opts [String] :x_org_id 
  # @return [Radiusserver]
  describe 'p_ost_radiusservers test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for p_ut_radiusservers_id
  # Update Radius Servers
  # This endpoint allows you to update RADIUS servers in your organization.  ####  &#x60;&#x60;&#x60; curl -X PUT https://console.jumpcloud.com/api/radiusservers/{ServerID} \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\   -d &#39;{     \&quot;name\&quot;: \&quot;{name_update}\&quot;,     \&quot;networkSourceIp\&quot;: \&quot;{0.0.0.0}\&quot;,     \&quot;sharedSecret\&quot;: \&quot;{secret_password}\&quot;,     \&quot;userLockoutAction\&quot;: \&quot;REMOVE\&quot;,     \&quot;userPasswordExpirationAction\&quot;: \&quot;MAINTAIN\&quot; }&#39; &#x60;&#x60;&#x60;
  # @param id 
  # @param accept 
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Body] :body 
  # @option opts [String] :x_org_id 
  # @return [Radiusserverput]
  describe 'p_ut_radiusservers_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

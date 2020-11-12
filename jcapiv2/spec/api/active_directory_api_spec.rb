=begin
#JumpCloud APIs

#JumpCloud's V2 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for JCAPIv2::ActiveDirectoryApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ActiveDirectoryApi' do
  before do
    # run before each test
    @instance = JCAPIv2::ActiveDirectoryApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ActiveDirectoryApi' do
    it 'should create an instance of ActiveDirectoryApi' do
      expect(@instance).to be_instance_of(JCAPIv2::ActiveDirectoryApi)
    end
  end

  # unit tests for get_activedirectories
  # List Active Directories
  # This endpoint allows you to list all your Active Directory Instances.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/v2/activedirectories/ \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;   &#x60;&#x60;&#x60;
  # @param accept 
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields The comma separated fields included in the returned records. If omitted, the default list of fields will be returned. 
  # @option opts [Array<String>] :filter A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60;
  # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
  # @option opts [Integer] :skip The offset into the records to return.
  # @option opts [Array<String>] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending. 
  # @option opts [String] :x_org_id 
  # @return [Array<ActiveDirectoryOutput>]
  describe 'get_activedirectories test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_activedirectories_activedirectory_id_associations
  # List the associations of an Active Directory instance
  # This endpoint returns the direct associations of this Active Directory instance.  A direct association can be a non-homogeneous relationship between 2 different objects, for example Active Directory and Users.   #### Sample Request &#x60;&#x60;&#x60; curl -X GET &#39;https://console.jumpcloud.com/api/v2/activedirectories/{ActiveDirectory_ID}/associations?targets&#x3D;user \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; &#x60;&#x60;&#x60;
  # @param activedirectory_id 
  # @param targets 
  # @param accept 
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
  # @option opts [Integer] :skip The offset into the records to return.
  # @option opts [String] :x_org_id 
  # @return [Array<GraphConnection>]
  describe 'get_activedirectories_activedirectory_id_associations test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_activedirectories_activedirectory_id_usergroups
  # List the User Groups bound to an Active Directory instance
  # This endpoint will return all Users Groups bound to an Active Directory instance, either directly or indirectly, essentially traversing the JumpCloud Graph for your Organization.  Each element will contain the group&#39;s type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of compiled graph attributes for all paths followed.  The &#x60;paths&#x60; array enumerates each path from this Active Directory instance to the corresponding User Group; this array represents all grouping and/or associations that would have to be removed to deprovision the User Group from this Active Directory instance.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/v2/activedirectories/{ActiveDirectory_ID}/usergroups \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; &#x60;&#x60;&#x60;
  # @param activedirectory_id ObjectID of the Active Directory instance.
  # @param accept 
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
  # @option opts [Integer] :skip The offset into the records to return.
  # @option opts [Array<String>] :filter A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60;
  # @option opts [String] :x_org_id 
  # @return [Array<GraphObjectWithPaths>]
  describe 'get_activedirectories_activedirectory_id_usergroups test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_activedirectories_id
  # Get an Active Directory
  # This endpoint returns a specific Active Directory.  #### Sample Request  &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/v2/activedirectories/{ActiveDirectory_ID} \\   -H &#39;accept: application/json&#39; \\   -H &#39;content-type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;   &#x60;&#x60;&#x60;
  # @param id ObjectID of this Active Directory instance.
  # @param accept 
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_org_id 
  # @return [ActiveDirectoryOutput]
  describe 'get_activedirectories_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

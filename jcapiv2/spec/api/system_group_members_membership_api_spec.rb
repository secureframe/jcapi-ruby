=begin
#JumpCloud APIs

#JumpCloud's V2 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for JCAPIv2::SystemGroupMembersMembershipApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SystemGroupMembersMembershipApi' do
  before do
    # run before each test
    @instance = JCAPIv2::SystemGroupMembersMembershipApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SystemGroupMembersMembershipApi' do
    it 'should create an instance of SystemGroupMembersMembershipApi' do
      expect(@instance).to be_instance_of(JCAPIv2::SystemGroupMembersMembershipApi)
    end
  end

  # unit tests for get_systemgroups_group_id_members
  # List the members of a System Group
  # This endpoint returns the system members of a System Group.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/v2/systemgroups/{Group_ID}/members \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;  &#x60;&#x60;&#x60;
  # @param group_id ObjectID of the System Group.
  # @param accept 
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
  # @option opts [Integer] :skip The offset into the records to return.
  # @option opts [String] :x_org_id 
  # @return [Array<GraphConnection>]
  describe 'get_systemgroups_group_id_members test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_systemgroups_group_id_membership
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
  # @return [Array<GraphObjectWithPaths>]
  describe 'get_systemgroups_group_id_membership test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for p_ost_systemgroups_group_id_members
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
  # @return [nil]
  describe 'p_ost_systemgroups_group_id_members test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

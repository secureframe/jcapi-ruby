=begin
#JumpCloud APIs

#JumpCloud's V2 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for JCAPIv2::PolicytemplatesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PolicytemplatesApi' do
  before do
    # run before each test
    @instance = JCAPIv2::PolicytemplatesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PolicytemplatesApi' do
    it 'should create an instance of PolicytemplatesApi' do
      expect(@instance).to be_instance_of(JCAPIv2::PolicytemplatesApi)
    end
  end

  # unit tests for get_policytemplates
  # Lists all of the Policy Templates
  # This endpoint returns all policy templates.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/v2/policytemplates \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;   &#x60;&#x60;&#x60;
  # @param accept 
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :fields The comma separated fields included in the returned records. If omitted, the default list of fields will be returned. 
  # @option opts [Array<String>] :filter A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60;
  # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
  # @option opts [Integer] :skip The offset into the records to return.
  # @option opts [Array<String>] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending. 
  # @option opts [String] :x_org_id 
  # @return [Array<PolicyTemplate>]
  describe 'get_policytemplates test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_policytemplates_id
  # Get a specific Policy Template
  # This endpoint returns a specific policy template.  #### Sample Request &#x60;&#x60;&#x60;  curl -X GET https://console.jumpcloud.com/api/v2/policies/{Policy_ID}\\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; &#x60;&#x60;&#x60;
  # @param id ObjectID of the Policy Template.
  # @param accept 
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_org_id 
  # @return [PolicyTemplateWithDetails]
  describe 'get_policytemplates_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

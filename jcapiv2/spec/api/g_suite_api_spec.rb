=begin
#JumpCloud APIs

#V1 & V2 versions of JumpCloud's API. The next version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings. The most recent version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for JCAPIv2::GSuiteApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GSuiteApi' do
  before do
    # run before each test
    @instance = JCAPIv2::GSuiteApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GSuiteApi' do
    it 'should create an instact of GSuiteApi' do
      expect(@instance).to be_instance_of(JCAPIv2::GSuiteApi)
    end
  end

  # unit tests for graph_g_suite_associations_list
  # List the associations of a G Suite instance
  # This endpoint returns the _direct_ associations of this G Suite instance.  A direct association can be a non-homogenous relationship between 2 different objects. for example G Suite and Users.   #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/gsuites/{gsuite_id}/associations?targets&#x3D;user &#x60;&#x60;&#x60;
  # @param gsuite_id ObjectID of the G Suite instance.
  # @param targets 
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphConnection>]
  describe 'graph_g_suite_associations_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_g_suite_associations_post
  # Manage the associations of a G Suite instance
  # This endpoint returns the _direct_ associations of this G Suite instance.  A direct association can be a non-homogenous relationship between 2 different objects. for example G Suite and Users.   #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/gsuites/{gsuite_id}/associations &#x60;&#x60;&#x60;
  # @param gsuite_id ObjectID of the G Suite instance.
  # @param [Hash] opts the optional parameters
  # @option opts [GraphManagementReq] :body 
  # @return [nil]
  describe 'graph_g_suite_associations_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_g_suite_traverse_user
  # List the Users associated with a G Suite instance
  # This endpoint will return Users associated with a G Suite instance. Each element will contain the type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of attributes specifically set for this group.  The &#x60;paths&#x60; array enumerates each path from this G Suite instance to the corresponding User; this array represents all grouping and/or associations that would have to be removed to deprovision the User from this G Suite instance.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/gsuites/{gsuite_id}/users &#x60;&#x60;&#x60;
  # @param gsuite_id ObjectID of the G Suite instance.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_g_suite_traverse_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_g_suite_traverse_user_group
  # List the User Groups associated with a G Suite instance
  # This endpoint will return User Groups associated with a G Suite instance. Each element will contain the group&#39;s type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of attributes specifically set for this group.  The &#x60;paths&#x60; array enumerates each path from this G Suite instance to the corresponding User Group; this array represents all grouping and/or associations that would have to be removed to deprovision the User Group from this G Suite instance.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/gsuites/{gsuite_id}/usersgroups &#x60;&#x60;&#x60;
  # @param gsuite_id ObjectID of the G Suite instance.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_g_suite_traverse_user_group test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

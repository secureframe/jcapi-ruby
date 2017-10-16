=begin
#JumpCloud APIs

#V1 & V2 versions of JumpCloud's API. The previous version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage commands, systems, & system users.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

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
    it 'should create an instact of RadiusServersApi' do
      expect(@instance).to be_instance_of(JCAPIv1::RadiusServersApi)
    end
  end

  # unit tests for radius_servers_list
  # List Radius Servers
  # This endpoint allows you to get a list of all RADIUS servers in your organization.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned. 
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @option opts [String] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending. 
  # @return [Radiusserverslist]
  describe 'radius_servers_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for radius_servers_put
  # Update Radius Servers
  # This endpoint allows you to update RADIUS servers in your organization.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Body] :body 
  # @return [Radiusserverput]
  describe 'radius_servers_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

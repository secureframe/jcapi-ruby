=begin
#JumpCloud APIs

#JumpCloud's V2 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for JCAPIv2::FdeApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'FdeApi' do
  before do
    # run before each test
    @instance = JCAPIv2::FdeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FdeApi' do
    it 'should create an instance of FdeApi' do
      expect(@instance).to be_instance_of(JCAPIv2::FdeApi)
    end
  end

  # unit tests for g_et_systems_system_id_fdekey
  # Get System FDE Key
  # This endpoint will return the current (latest) fde key saved for a system.
  # @param system_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_org_id 
  # @return [Systemfdekey]
  describe 'g_et_systems_system_id_fdekey test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

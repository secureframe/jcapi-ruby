=begin
#JumpCloud APIs

# JumpCloud's V2 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.2

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for JCAPIv2::UserGroupPutAttributes
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserGroupPutAttributes' do
  before do
    # run before each test
    @instance = JCAPIv2::UserGroupPutAttributes.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserGroupPutAttributes' do
    it 'should create an instance of UserGroupPutAttributes' do
      expect(@instance).to be_instance_of(JCAPIv2::UserGroupPutAttributes)
    end
  end
  describe 'test attribute "samba_enabled"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

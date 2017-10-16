=begin
#JumpCloud APIs

#V1 & V2 versions of JumpCloud's API. The next version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings. The most recent version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for JCAPIv2::SystemGroupMembersReq
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SystemGroupMembersReq' do
  before do
    # run before each test
    @instance = JCAPIv2::SystemGroupMembersReq.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SystemGroupMembersReq' do
    it 'should create an instact of SystemGroupMembersReq' do
      expect(@instance).to be_instance_of(JCAPIv2::SystemGroupMembersReq)
    end
  end
  describe 'test attribute "op"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["add", "remove"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.op = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["system"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end


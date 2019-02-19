=begin
#JumpCloud APIs

# JumpCloud's V1 API. This set of endpoints allows JumpCloud customers to manage commands, systems, & system users.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.2

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for JCAPIv1::ApplicationConfigDatabaseAttributes
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ApplicationConfigDatabaseAttributes' do
  before do
    # run before each test
    @instance = JCAPIv1::ApplicationConfigDatabaseAttributes.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApplicationConfigDatabaseAttributes' do
    it 'should create an instance of ApplicationConfigDatabaseAttributes' do
      expect(@instance).to be_instance_of(JCAPIv1::ApplicationConfigDatabaseAttributes)
    end
  end
  describe 'test attribute "position"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

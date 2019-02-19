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

# Unit tests for JCAPIv1::CommandresultResponseData
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CommandresultResponseData' do
  before do
    # run before each test
    @instance = JCAPIv1::CommandresultResponseData.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CommandresultResponseData' do
    it 'should create an instance of CommandresultResponseData' do
      expect(@instance).to be_instance_of(JCAPIv1::CommandresultResponseData)
    end
  end
  describe 'test attribute "output"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "exit_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

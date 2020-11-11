=begin
#JumpCloud APIs

#JumpCloud's V1 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for JCAPIv1::Organizationslist
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'Organizationslist' do
  before do
    # run before each test
    @instance = JCAPIv1::Organizationslist.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Organizationslist' do
    it 'should create an instance of Organizationslist' do
      expect(@instance).to be_instance_of(JCAPIv1::Organizationslist)
    end
  end
  describe 'test attribute "results"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "total_count"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end


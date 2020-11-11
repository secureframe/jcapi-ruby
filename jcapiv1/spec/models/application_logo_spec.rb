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

# Unit tests for JCAPIv1::ApplicationLogo
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ApplicationLogo' do
  before do
    # run before each test
    @instance = JCAPIv1::ApplicationLogo.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApplicationLogo' do
    it 'should create an instance of ApplicationLogo' do
      expect(@instance).to be_instance_of(JCAPIv1::ApplicationLogo)
    end
  end
  describe 'test attribute "color"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["", "#202D38", "#005466", "#3E8696", "#006CAC", "#0617AC", "#7C6ADA", "#D5779D", "#9E2F00", "#FFB000", "#58C469", "#57C49F", "#FF6C03"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.color = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "url"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end


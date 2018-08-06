=begin
#JumpCloud APIs

#V1 & V2 versions of JumpCloud's API. The previous version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage commands, systems, & system users.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for JCAPIv1::CommandResultsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CommandResultsApi' do
  before do
    # run before each test
    @instance = JCAPIv1::CommandResultsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CommandResultsApi' do
    it 'should create an instance of CommandResultsApi' do
      expect(@instance).to be_instance_of(JCAPIv1::CommandResultsApi)
    end
  end

  # unit tests for command_results_delete
  # Delete a Command result
  # This endpoint deletes a specific command result.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/commandresults/{CommandID} \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;    &#x60;&#x60;&#x60;&#x60;
  # @param id 
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @return [Commandresult]
  describe 'command_results_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for command_results_get
  # List an individual Command result
  # This endpoint returns a specific command result.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/commandresults/{CommandID} \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;    &#x60;&#x60;&#x60;
  # @param id 
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted the default list of fields will be returned. 
  # @return [Commandresult]
  describe 'command_results_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for command_results_list
  # List all Command Results
  # This endpoint returns all command results.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/commandresults \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key:{API_KEY}&#39;   &#x60;&#x60;&#x60;
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted the default list of fields will be returned. 
  # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
  # @option opts [Integer] :skip The offset into the records to return.
  # @option opts [String] :sort Use space separated sort parameters to sort the collection. Default sort is ascending. Prefix with &#x60;-&#x60; to sort descending. 
  # @return [Commandresultslist]
  describe 'command_results_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
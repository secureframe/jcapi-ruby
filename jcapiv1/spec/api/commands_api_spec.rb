=begin
#JumpCloud APIs

# JumpCloud's V1 API. This set of endpoints allows JumpCloud customers to manage commands, systems, & system users.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.2

=end

require 'spec_helper'
require 'json'

# Unit tests for JCAPIv1::CommandsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CommandsApi' do
  before do
    # run before each test
    @instance = JCAPIv1::CommandsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CommandsApi' do
    it 'should create an instance of CommandsApi' do
      expect(@instance).to be_instance_of(JCAPIv1::CommandsApi)
    end
  end

  # unit tests for command_file_get
  # Get a Command File
  # This endpoint returns the uploaded file(s) associated with a specific command.  #### Sample Request  &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/files/command/{commandID} \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;    &#x60;&#x60;&#x60;
  # @param id 
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted the default list of fields will be returned. 
  # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
  # @option opts [Integer] :skip The offset into the records to return.
  # @option opts [String] :x_org_id 
  # @return [Commandfilereturn]
  describe 'command_file_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for commands_delete
  # Delete a Command
  # This endpoint deletes a specific command based on the Command ID.  #### Sample Request &#x60;&#x60;&#x60; curl -X DELETE https://console.jumpcloud.com/api/commands/{CommandID} \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;  &#x60;&#x60;&#x60;
  # @param id 
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_org_id 
  # @return [nil]
  describe 'commands_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for commands_get
  # List an individual Command
  # This endpoint returns a specific command based on the command ID.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/commands/{CommandID} \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;  &#x60;&#x60;&#x60;
  # @param id 
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted the default list of fields will be returned. 
  # @option opts [String] :filter A filter to apply to the query.
  # @option opts [String] :x_org_id 
  # @return [Command]
  describe 'commands_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for commands_list
  # List All Commands
  # This endpoint returns all commands.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/commands/ \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;  &#x60;&#x60;&#x60;
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :skip The offset into the records to return.
  # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted the default list of fields will be returned. 
  # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
  # @option opts [String] :sort Use space separated sort parameters to sort the collection. Default sort is ascending. Prefix with &#x60;-&#x60; to sort descending. 
  # @option opts [String] :filter A filter to apply to the query.
  # @option opts [String] :x_org_id 
  # @return [Commandslist]
  describe 'commands_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for commands_post
  # Create A Command
  # This endpoint allows you to create a new command.  #### Sample Request  &#x60;&#x60;&#x60; curl -X POST https://console.jumpcloud.com/api/commands/ \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\   -d &#39;{  \&quot;name\&quot;:\&quot;Test API Command\&quot;,  \&quot;command\&quot;:\&quot;String\&quot;,  \&quot;user\&quot;:\&quot;{UserID}\&quot;,  \&quot;schedule\&quot;:\&quot;\&quot;,  \&quot;timeout\&quot;:\&quot;100\&quot; }&#39;  &#x60;&#x60;&#x60;
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Command] :body 
  # @option opts [String] :x_org_id 
  # @return [Command]
  describe 'commands_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for commands_put
  # Update a Command
  # This endpoint Updates a command based on the command ID and returns the modified command record.  #### Sample Request &#x60;&#x60;&#x60; curl -X PUT https://console.jumpcloud.com/api/commands/{CommandID} \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\   -d &#39;{  \&quot;name\&quot;:\&quot;Test API Command\&quot;,  \&quot;command\&quot;:\&quot;String\&quot;,  \&quot;user\&quot;:\&quot;{UserID}\&quot;,  \&quot;schedule\&quot;:\&quot;\&quot;,  \&quot;timeout\&quot;:\&quot;100\&quot; }&#39;  &#x60;&#x60;&#x60;
  # @param id 
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Command] :body 
  # @option opts [String] :x_org_id 
  # @return [Command]
  describe 'commands_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

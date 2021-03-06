=begin
#JumpCloud APIs

#JumpCloud's V1 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

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

  # unit tests for d_elete_commands_id
  # Delete a Command
  # This endpoint deletes a specific command based on the Command ID.  #### Sample Request &#x60;&#x60;&#x60; curl -X DELETE https://console.jumpcloud.com/api/commands/{CommandID} \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;  &#x60;&#x60;&#x60;
  # @param id 
  # @param accept 
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_org_id 
  # @return [nil]
  describe 'd_elete_commands_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_commands
  # List All Commands
  # This endpoint returns all commands.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/commands/ \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;  &#x60;&#x60;&#x60;
  # @param accept 
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted, the default list of fields will be returned. 
  # @option opts [String] :filter A filter to apply to the query. **Filter structure**: &#x60;&lt;field&gt;:&lt;operator&gt;:&lt;value&gt;&#x60;. **field** &#x3D; Populate with a valid field from an endpoint response. **operator** &#x3D;  Supported operators are: eq, ne, gt, ge, lt, le, between, search, in. **value** &#x3D; Populate with the value you want to search for. Is case sensitive. Supports wild cards. **EX:** &#x60;GET /users?username&#x3D;eq:testuser&#x60;
  # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
  # @option opts [Integer] :skip The offset into the records to return.
  # @option opts [String] :sort Use space separated sort parameters to sort the collection. Default sort is ascending. Prefix with &#x60;-&#x60; to sort descending. 
  # @option opts [String] :x_org_id 
  # @return [Commandslist]
  describe 'get_commands test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_commands_id
  # List an individual Command
  # This endpoint returns a specific command based on the command ID.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/commands/{CommandID} \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;  &#x60;&#x60;&#x60;
  # @param id 
  # @param accept 
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted, the default list of fields will be returned. 
  # @option opts [String] :x_org_id 
  # @return [Command]
  describe 'get_commands_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_files_command_id
  # Get a Command File
  # This endpoint returns the uploaded file(s) associated with a specific command.  #### Sample Request  &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/files/command/{commandID} \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;    &#x60;&#x60;&#x60;
  # @param id 
  # @param accept 
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted, the default list of fields will be returned. 
  # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
  # @option opts [Integer] :skip The offset into the records to return.
  # @option opts [String] :x_org_id 
  # @return [Commandfilereturn]
  describe 'get_files_command_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for p_ost_commands
  # Create A Command
  # This endpoint allows you to create a new command.  #### Sample Request  &#x60;&#x60;&#x60; curl -X POST https://console.jumpcloud.com/api/commands/ \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\   -d &#39;{  \&quot;name\&quot;:\&quot;Test API Command\&quot;,  \&quot;command\&quot;:\&quot;String\&quot;,  \&quot;user\&quot;:\&quot;{UserID}\&quot;,  \&quot;schedule\&quot;:\&quot;\&quot;,  \&quot;timeout\&quot;:\&quot;100\&quot; }&#39;  &#x60;&#x60;&#x60;
  # @param accept 
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Command] :body 
  # @option opts [String] :x_org_id 
  # @return [Command]
  describe 'p_ost_commands test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for p_ut_commands_id
  # Update a Command
  # This endpoint Updates a command based on the command ID and returns the modified command record.  #### Sample Request &#x60;&#x60;&#x60; curl -X PUT https://console.jumpcloud.com/api/commands/{CommandID} \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\   -d &#39;{  \&quot;name\&quot;:\&quot;Test API Command\&quot;,  \&quot;command\&quot;:\&quot;String\&quot;,  \&quot;user\&quot;:\&quot;{UserID}\&quot;,  \&quot;schedule\&quot;:\&quot;\&quot;,  \&quot;timeout\&quot;:\&quot;100\&quot; }&#39;  &#x60;&#x60;&#x60;
  # @param id 
  # @param accept 
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Command] :body 
  # @option opts [String] :x_org_id 
  # @return [Command]
  describe 'p_ut_commands_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

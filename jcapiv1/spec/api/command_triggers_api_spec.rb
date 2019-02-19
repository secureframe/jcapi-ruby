=begin
#JumpCloud APIs

# JumpCloud's V1 API. This set of endpoints allows JumpCloud customers to manage commands, systems, & system users.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.2

=end

require 'spec_helper'
require 'json'

# Unit tests for JCAPIv1::CommandTriggersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CommandTriggersApi' do
  before do
    # run before each test
    @instance = JCAPIv1::CommandTriggersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CommandTriggersApi' do
    it 'should create an instance of CommandTriggersApi' do
      expect(@instance).to be_instance_of(JCAPIv1::CommandTriggersApi)
    end
  end

  # unit tests for command_trigger_webhook_post
  # Launch a command via a Trigger
  # This endpoint allows you to launch a command based on a defined trigger.  #### Sample Requests  **Launch a Command via a Trigger**  &#x60;&#x60;&#x60; curl --silent \\      -X &#39;POST&#39; \\      -H \&quot;x-api-key: {API_KEY}\&quot; \\      \&quot;https://console.jumpcloud.com/api/command/trigger/{TriggerName}\&quot; &#x60;&#x60;&#x60; **Launch a Command via a Trigger passing a JSON object to the command** &#x60;&#x60;&#x60; curl --silent \\      -X &#39;POST&#39; \\      -H \&quot;x-api-key: {API_KEY}\&quot; \\      -H &#39;Accept: application/json&#39; \\      -H &#39;Content-Type: application/json&#39; \\      -d &#39;{ \&quot;srcip\&quot;:\&quot;192.168.2.32\&quot;, \&quot;attack\&quot;:\&quot;Cross Site Scripting Attempt\&quot; }&#39; \\      \&quot;https://console.jumpcloud.com/api/command/trigger/{TriggerName}\&quot; &#x60;&#x60;&#x60;
  # @param triggername 
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_org_id 
  # @return [nil]
  describe 'command_trigger_webhook_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

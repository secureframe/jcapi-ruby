=begin
#JumpCloud APIs

#V1 & V2 versions of JumpCloud's API. The next version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings. The most recent version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for JCAPIv2::WorkdayReportRow
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WorkdayReportRow' do
  before do
    # run before each test
    @instance = JCAPIv2::WorkdayReportRow.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WorkdayReportRow' do
    it 'should create an instance of WorkdayReportRow' do
      expect(@instance).to be_instance_of(JCAPIv2::WorkdayReportRow)
    end
  end
end


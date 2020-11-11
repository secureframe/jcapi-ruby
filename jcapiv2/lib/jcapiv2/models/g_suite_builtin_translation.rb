=begin
#JumpCloud APIs

#JumpCloud's V2 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module JCAPIv2
  class GSuiteBuiltinTranslation
    
    HOME_ADDRESSES = "user_home_addresses".freeze
    WORK_ADDRESSES = "user_work_addresses".freeze
    OTHER_ADDRESSES = "user_other_addresses".freeze
    HOME_PHONE_NUMBERS = "user_home_phone_numbers".freeze
    MOBILE_PHONE_NUMBERS = "user_mobile_phone_numbers".freeze
    OTHER_PHONE_NUMBERS = "user_other_phone_numbers".freeze
    WORK_PHONE_NUMBERS = "user_work_phone_numbers".freeze
    WORK_FAX_PHONE_NUMBERS = "user_work_fax_phone_numbers".freeze
    WORK_MOBILE_PHONE_NUMBERS = "user_work_mobile_phone_numbers".freeze
    PRIMARY_ORGANIZATION_COST_CENTER = "user_primary_organization_cost_center".freeze
    PRIMARY_ORGANIZATION_DEPARTMENT = "user_primary_organization_department".freeze
    PRIMARY_ORGANIZATION_DESCRIPTION = "user_primary_organization_description".freeze
    PRIMARY_ORGANIZATION_EMPLOYEE_ID = "user_primary_organization_employee_id".freeze
    PRIMARY_ORGANIZATION_TITLE = "user_primary_organization_title".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = GSuiteBuiltinTranslation.constants.select{|c| GSuiteBuiltinTranslation::const_get(c) == value}
      raise "Invalid ENUM value #{value} for class #GSuiteBuiltinTranslation" if constantValues.empty?
      value
    end
  end

end

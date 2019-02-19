=begin
#JumpCloud APIs

# JumpCloud's V1 API. This set of endpoints allows JumpCloud customers to manage commands, systems, & system users.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.2

=end

require 'date'

module JCAPIv1
  class Systemuser
    attr_accessor :email

    attr_accessor :username

    attr_accessor :allow_public_key

    attr_accessor :public_key

    attr_accessor :ssh_keys

    attr_accessor :sudo

    attr_accessor :enable_managed_uid

    attr_accessor :unix_uid

    attr_accessor :unix_guid

    attr_accessor :activated

    attr_accessor :tags

    attr_accessor :password_expired

    attr_accessor :account_locked

    attr_accessor :passwordless_sudo

    attr_accessor :externally_managed

    attr_accessor :external_dn

    attr_accessor :external_source_type

    attr_accessor :firstname

    attr_accessor :lastname

    attr_accessor :ldap_binding_user

    attr_accessor :enable_user_portal_multifactor

    attr_accessor :associated_tag_count

    attr_accessor :totp_enabled

    attr_accessor :password_expiration_date

    attr_accessor :attributes

    attr_accessor :created

    attr_accessor :samba_service_user

    attr_accessor :password_never_expires

    attr_accessor :_id

    attr_accessor :middlename

    attr_accessor :displayname

    attr_accessor :description

    attr_accessor :location

    attr_accessor :cost_center

    attr_accessor :employee_type

    attr_accessor :company

    # Must be unique per user. 
    attr_accessor :employee_identifier

    attr_accessor :job_title

    attr_accessor :department

    attr_accessor :mfa

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'email' => :'email',
        :'username' => :'username',
        :'allow_public_key' => :'allow_public_key',
        :'public_key' => :'public_key',
        :'ssh_keys' => :'ssh_keys',
        :'sudo' => :'sudo',
        :'enable_managed_uid' => :'enable_managed_uid',
        :'unix_uid' => :'unix_uid',
        :'unix_guid' => :'unix_guid',
        :'activated' => :'activated',
        :'tags' => :'tags',
        :'password_expired' => :'password_expired',
        :'account_locked' => :'account_locked',
        :'passwordless_sudo' => :'passwordless_sudo',
        :'externally_managed' => :'externally_managed',
        :'external_dn' => :'external_dn',
        :'external_source_type' => :'external_source_type',
        :'firstname' => :'firstname',
        :'lastname' => :'lastname',
        :'ldap_binding_user' => :'ldap_binding_user',
        :'enable_user_portal_multifactor' => :'enable_user_portal_multifactor',
        :'associated_tag_count' => :'associatedTagCount',
        :'totp_enabled' => :'totp_enabled',
        :'password_expiration_date' => :'password_expiration_date',
        :'attributes' => :'attributes',
        :'created' => :'created',
        :'samba_service_user' => :'samba_service_user',
        :'password_never_expires' => :'password_never_expires',
        :'_id' => :'_id',
        :'middlename' => :'middlename',
        :'displayname' => :'displayname',
        :'description' => :'description',
        :'location' => :'location',
        :'cost_center' => :'costCenter',
        :'employee_type' => :'employeeType',
        :'company' => :'company',
        :'employee_identifier' => :'employeeIdentifier',
        :'job_title' => :'jobTitle',
        :'department' => :'department',
        :'mfa' => :'mfa'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'email' => :'String',
        :'username' => :'String',
        :'allow_public_key' => :'BOOLEAN',
        :'public_key' => :'String',
        :'ssh_keys' => :'Array<Sshkeylist>',
        :'sudo' => :'BOOLEAN',
        :'enable_managed_uid' => :'BOOLEAN',
        :'unix_uid' => :'Integer',
        :'unix_guid' => :'Integer',
        :'activated' => :'BOOLEAN',
        :'tags' => :'Array<String>',
        :'password_expired' => :'BOOLEAN',
        :'account_locked' => :'BOOLEAN',
        :'passwordless_sudo' => :'BOOLEAN',
        :'externally_managed' => :'BOOLEAN',
        :'external_dn' => :'String',
        :'external_source_type' => :'String',
        :'firstname' => :'String',
        :'lastname' => :'String',
        :'ldap_binding_user' => :'BOOLEAN',
        :'enable_user_portal_multifactor' => :'BOOLEAN',
        :'associated_tag_count' => :'Integer',
        :'totp_enabled' => :'BOOLEAN',
        :'password_expiration_date' => :'String',
        :'attributes' => :'Array<Object>',
        :'created' => :'String',
        :'samba_service_user' => :'BOOLEAN',
        :'password_never_expires' => :'BOOLEAN',
        :'_id' => :'String',
        :'middlename' => :'String',
        :'displayname' => :'String',
        :'description' => :'String',
        :'location' => :'String',
        :'cost_center' => :'String',
        :'employee_type' => :'String',
        :'company' => :'String',
        :'employee_identifier' => :'String',
        :'job_title' => :'String',
        :'department' => :'String',
        :'mfa' => :'Mfa'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.has_key?(:'allow_public_key')
        self.allow_public_key = attributes[:'allow_public_key']
      end

      if attributes.has_key?(:'public_key')
        self.public_key = attributes[:'public_key']
      end

      if attributes.has_key?(:'ssh_keys')
        if (value = attributes[:'ssh_keys']).is_a?(Array)
          self.ssh_keys = value
        end
      end

      if attributes.has_key?(:'sudo')
        self.sudo = attributes[:'sudo']
      end

      if attributes.has_key?(:'enable_managed_uid')
        self.enable_managed_uid = attributes[:'enable_managed_uid']
      end

      if attributes.has_key?(:'unix_uid')
        self.unix_uid = attributes[:'unix_uid']
      end

      if attributes.has_key?(:'unix_guid')
        self.unix_guid = attributes[:'unix_guid']
      end

      if attributes.has_key?(:'activated')
        self.activated = attributes[:'activated']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'password_expired')
        self.password_expired = attributes[:'password_expired']
      end

      if attributes.has_key?(:'account_locked')
        self.account_locked = attributes[:'account_locked']
      end

      if attributes.has_key?(:'passwordless_sudo')
        self.passwordless_sudo = attributes[:'passwordless_sudo']
      end

      if attributes.has_key?(:'externally_managed')
        self.externally_managed = attributes[:'externally_managed']
      end

      if attributes.has_key?(:'external_dn')
        self.external_dn = attributes[:'external_dn']
      end

      if attributes.has_key?(:'external_source_type')
        self.external_source_type = attributes[:'external_source_type']
      end

      if attributes.has_key?(:'firstname')
        self.firstname = attributes[:'firstname']
      end

      if attributes.has_key?(:'lastname')
        self.lastname = attributes[:'lastname']
      end

      if attributes.has_key?(:'ldap_binding_user')
        self.ldap_binding_user = attributes[:'ldap_binding_user']
      end

      if attributes.has_key?(:'enable_user_portal_multifactor')
        self.enable_user_portal_multifactor = attributes[:'enable_user_portal_multifactor']
      end

      if attributes.has_key?(:'associatedTagCount')
        self.associated_tag_count = attributes[:'associatedTagCount']
      end

      if attributes.has_key?(:'totp_enabled')
        self.totp_enabled = attributes[:'totp_enabled']
      end

      if attributes.has_key?(:'password_expiration_date')
        self.password_expiration_date = attributes[:'password_expiration_date']
      end

      if attributes.has_key?(:'attributes')
        if (value = attributes[:'attributes']).is_a?(Array)
          self.attributes = value
        end
      end

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.has_key?(:'samba_service_user')
        self.samba_service_user = attributes[:'samba_service_user']
      end

      if attributes.has_key?(:'password_never_expires')
        self.password_never_expires = attributes[:'password_never_expires']
      end

      if attributes.has_key?(:'_id')
        self._id = attributes[:'_id']
      end

      if attributes.has_key?(:'middlename')
        self.middlename = attributes[:'middlename']
      end

      if attributes.has_key?(:'displayname')
        self.displayname = attributes[:'displayname']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.has_key?(:'costCenter')
        self.cost_center = attributes[:'costCenter']
      end

      if attributes.has_key?(:'employeeType')
        self.employee_type = attributes[:'employeeType']
      end

      if attributes.has_key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.has_key?(:'employeeIdentifier')
        self.employee_identifier = attributes[:'employeeIdentifier']
      end

      if attributes.has_key?(:'jobTitle')
        self.job_title = attributes[:'jobTitle']
      end

      if attributes.has_key?(:'department')
        self.department = attributes[:'department']
      end

      if attributes.has_key?(:'mfa')
        self.mfa = attributes[:'mfa']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@email.nil? && @email.to_s.length > 1024
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 1024.')
      end

      if !@username.nil? && @username.to_s.length > 1024
        invalid_properties.push('invalid value for "username", the character length must be smaller than or equal to 1024.')
      end

      if !@unix_uid.nil? && @unix_uid < 1
        invalid_properties.push('invalid value for "unix_uid", must be greater than or equal to 1.')
      end

      if !@unix_guid.nil? && @unix_guid < 1
        invalid_properties.push('invalid value for "unix_guid", must be greater than or equal to 1.')
      end

      if !@firstname.nil? && @firstname.to_s.length > 1024
        invalid_properties.push('invalid value for "firstname", the character length must be smaller than or equal to 1024.')
      end

      if !@lastname.nil? && @lastname.to_s.length > 1024
        invalid_properties.push('invalid value for "lastname", the character length must be smaller than or equal to 1024.')
      end

      if !@associated_tag_count.nil? && @associated_tag_count < 0
        invalid_properties.push('invalid value for "associated_tag_count", must be greater than or equal to 0.')
      end

      if !@middlename.nil? && @middlename.to_s.length > 1024
        invalid_properties.push('invalid value for "middlename", the character length must be smaller than or equal to 1024.')
      end

      if !@displayname.nil? && @displayname.to_s.length > 1024
        invalid_properties.push('invalid value for "displayname", the character length must be smaller than or equal to 1024.')
      end

      if !@description.nil? && @description.to_s.length > 1024
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 1024.')
      end

      if !@location.nil? && @location.to_s.length > 1024
        invalid_properties.push('invalid value for "location", the character length must be smaller than or equal to 1024.')
      end

      if !@cost_center.nil? && @cost_center.to_s.length > 1024
        invalid_properties.push('invalid value for "cost_center", the character length must be smaller than or equal to 1024.')
      end

      if !@employee_type.nil? && @employee_type.to_s.length > 1024
        invalid_properties.push('invalid value for "employee_type", the character length must be smaller than or equal to 1024.')
      end

      if !@company.nil? && @company.to_s.length > 1024
        invalid_properties.push('invalid value for "company", the character length must be smaller than or equal to 1024.')
      end

      if !@employee_identifier.nil? && @employee_identifier.to_s.length > 256
        invalid_properties.push('invalid value for "employee_identifier", the character length must be smaller than or equal to 256.')
      end

      if !@job_title.nil? && @job_title.to_s.length > 1024
        invalid_properties.push('invalid value for "job_title", the character length must be smaller than or equal to 1024.')
      end

      if !@department.nil? && @department.to_s.length > 1024
        invalid_properties.push('invalid value for "department", the character length must be smaller than or equal to 1024.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@email.nil? && @email.to_s.length > 1024
      return false if !@username.nil? && @username.to_s.length > 1024
      return false if !@unix_uid.nil? && @unix_uid < 1
      return false if !@unix_guid.nil? && @unix_guid < 1
      return false if !@firstname.nil? && @firstname.to_s.length > 1024
      return false if !@lastname.nil? && @lastname.to_s.length > 1024
      return false if !@associated_tag_count.nil? && @associated_tag_count < 0
      return false if !@middlename.nil? && @middlename.to_s.length > 1024
      return false if !@displayname.nil? && @displayname.to_s.length > 1024
      return false if !@description.nil? && @description.to_s.length > 1024
      return false if !@location.nil? && @location.to_s.length > 1024
      return false if !@cost_center.nil? && @cost_center.to_s.length > 1024
      return false if !@employee_type.nil? && @employee_type.to_s.length > 1024
      return false if !@company.nil? && @company.to_s.length > 1024
      return false if !@employee_identifier.nil? && @employee_identifier.to_s.length > 256
      return false if !@job_title.nil? && @job_title.to_s.length > 1024
      return false if !@department.nil? && @department.to_s.length > 1024
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if !email.nil? && email.to_s.length > 1024
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 1024.'
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] username Value to be assigned
    def username=(username)
      if !username.nil? && username.to_s.length > 1024
        fail ArgumentError, 'invalid value for "username", the character length must be smaller than or equal to 1024.'
      end

      @username = username
    end

    # Custom attribute writer method with validation
    # @param [Object] unix_uid Value to be assigned
    def unix_uid=(unix_uid)
      if !unix_uid.nil? && unix_uid < 1
        fail ArgumentError, 'invalid value for "unix_uid", must be greater than or equal to 1.'
      end

      @unix_uid = unix_uid
    end

    # Custom attribute writer method with validation
    # @param [Object] unix_guid Value to be assigned
    def unix_guid=(unix_guid)
      if !unix_guid.nil? && unix_guid < 1
        fail ArgumentError, 'invalid value for "unix_guid", must be greater than or equal to 1.'
      end

      @unix_guid = unix_guid
    end

    # Custom attribute writer method with validation
    # @param [Object] firstname Value to be assigned
    def firstname=(firstname)
      if !firstname.nil? && firstname.to_s.length > 1024
        fail ArgumentError, 'invalid value for "firstname", the character length must be smaller than or equal to 1024.'
      end

      @firstname = firstname
    end

    # Custom attribute writer method with validation
    # @param [Object] lastname Value to be assigned
    def lastname=(lastname)
      if !lastname.nil? && lastname.to_s.length > 1024
        fail ArgumentError, 'invalid value for "lastname", the character length must be smaller than or equal to 1024.'
      end

      @lastname = lastname
    end

    # Custom attribute writer method with validation
    # @param [Object] associated_tag_count Value to be assigned
    def associated_tag_count=(associated_tag_count)
      if !associated_tag_count.nil? && associated_tag_count < 0
        fail ArgumentError, 'invalid value for "associated_tag_count", must be greater than or equal to 0.'
      end

      @associated_tag_count = associated_tag_count
    end

    # Custom attribute writer method with validation
    # @param [Object] middlename Value to be assigned
    def middlename=(middlename)
      if !middlename.nil? && middlename.to_s.length > 1024
        fail ArgumentError, 'invalid value for "middlename", the character length must be smaller than or equal to 1024.'
      end

      @middlename = middlename
    end

    # Custom attribute writer method with validation
    # @param [Object] displayname Value to be assigned
    def displayname=(displayname)
      if !displayname.nil? && displayname.to_s.length > 1024
        fail ArgumentError, 'invalid value for "displayname", the character length must be smaller than or equal to 1024.'
      end

      @displayname = displayname
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 1024
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 1024.'
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] location Value to be assigned
    def location=(location)
      if !location.nil? && location.to_s.length > 1024
        fail ArgumentError, 'invalid value for "location", the character length must be smaller than or equal to 1024.'
      end

      @location = location
    end

    # Custom attribute writer method with validation
    # @param [Object] cost_center Value to be assigned
    def cost_center=(cost_center)
      if !cost_center.nil? && cost_center.to_s.length > 1024
        fail ArgumentError, 'invalid value for "cost_center", the character length must be smaller than or equal to 1024.'
      end

      @cost_center = cost_center
    end

    # Custom attribute writer method with validation
    # @param [Object] employee_type Value to be assigned
    def employee_type=(employee_type)
      if !employee_type.nil? && employee_type.to_s.length > 1024
        fail ArgumentError, 'invalid value for "employee_type", the character length must be smaller than or equal to 1024.'
      end

      @employee_type = employee_type
    end

    # Custom attribute writer method with validation
    # @param [Object] company Value to be assigned
    def company=(company)
      if !company.nil? && company.to_s.length > 1024
        fail ArgumentError, 'invalid value for "company", the character length must be smaller than or equal to 1024.'
      end

      @company = company
    end

    # Custom attribute writer method with validation
    # @param [Object] employee_identifier Value to be assigned
    def employee_identifier=(employee_identifier)
      if !employee_identifier.nil? && employee_identifier.to_s.length > 256
        fail ArgumentError, 'invalid value for "employee_identifier", the character length must be smaller than or equal to 256.'
      end

      @employee_identifier = employee_identifier
    end

    # Custom attribute writer method with validation
    # @param [Object] job_title Value to be assigned
    def job_title=(job_title)
      if !job_title.nil? && job_title.to_s.length > 1024
        fail ArgumentError, 'invalid value for "job_title", the character length must be smaller than or equal to 1024.'
      end

      @job_title = job_title
    end

    # Custom attribute writer method with validation
    # @param [Object] department Value to be assigned
    def department=(department)
      if !department.nil? && department.to_s.length > 1024
        fail ArgumentError, 'invalid value for "department", the character length must be smaller than or equal to 1024.'
      end

      @department = department
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          email == o.email &&
          username == o.username &&
          allow_public_key == o.allow_public_key &&
          public_key == o.public_key &&
          ssh_keys == o.ssh_keys &&
          sudo == o.sudo &&
          enable_managed_uid == o.enable_managed_uid &&
          unix_uid == o.unix_uid &&
          unix_guid == o.unix_guid &&
          activated == o.activated &&
          tags == o.tags &&
          password_expired == o.password_expired &&
          account_locked == o.account_locked &&
          passwordless_sudo == o.passwordless_sudo &&
          externally_managed == o.externally_managed &&
          external_dn == o.external_dn &&
          external_source_type == o.external_source_type &&
          firstname == o.firstname &&
          lastname == o.lastname &&
          ldap_binding_user == o.ldap_binding_user &&
          enable_user_portal_multifactor == o.enable_user_portal_multifactor &&
          associated_tag_count == o.associated_tag_count &&
          totp_enabled == o.totp_enabled &&
          password_expiration_date == o.password_expiration_date &&
          attributes == o.attributes &&
          created == o.created &&
          samba_service_user == o.samba_service_user &&
          password_never_expires == o.password_never_expires &&
          _id == o._id &&
          middlename == o.middlename &&
          displayname == o.displayname &&
          description == o.description &&
          location == o.location &&
          cost_center == o.cost_center &&
          employee_type == o.employee_type &&
          company == o.company &&
          employee_identifier == o.employee_identifier &&
          job_title == o.job_title &&
          department == o.department &&
          mfa == o.mfa
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [email, username, allow_public_key, public_key, ssh_keys, sudo, enable_managed_uid, unix_uid, unix_guid, activated, tags, password_expired, account_locked, passwordless_sudo, externally_managed, external_dn, external_source_type, firstname, lastname, ldap_binding_user, enable_user_portal_multifactor, associated_tag_count, totp_enabled, password_expiration_date, attributes, created, samba_service_user, password_never_expires, _id, middlename, displayname, description, location, cost_center, employee_type, company, employee_identifier, job_title, department, mfa].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = JCAPIv1.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end

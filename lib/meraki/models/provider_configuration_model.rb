# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # ProviderConfigurationModel Model.
  class ProviderConfigurationModel < BaseModel
    # The key for an object in ProviderConfiguration
    # @return [String]
    attr_accessor :key

    # The type for an object in ProviderConfiguration. Can be one of
    # 'manual_string', 'manual_int', 'manual_boolean', 'manual_choice',
    # 'manual_multiselect', 'manual_list', 'auto_username', 'auto_email',
    # 'auto_mac_address', 'auto_serial_number', 'auto_notes' or 'auto_name'
    # @return [String]
    attr_accessor :type

    # The value for an object in ProviderConfiguration
    # @return [String]
    attr_accessor :value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['key'] = 'key'
      @_hash['type'] = 'type'
      @_hash['value'] = 'value'
      @_hash
    end

    def initialize(key = nil,
                   type = nil,
                   value = nil)
      @key = key
      @type = type
      @value = value
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      key = hash['key']
      type = hash['type']
      value = hash['value']

      # Create object from extracted values.
      ProviderConfigurationModel.new(key,
                                     type,
                                     value)
    end
  end
end

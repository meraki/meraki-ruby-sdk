# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # DhcpOptionModel Model.
  class DhcpOptionModel < BaseModel
    # The code for the DHCP option. This should be an integer between 2 and 254.
    # @return [String]
    attr_accessor :code

    # The type for the DHCP option. One of: 'text', 'ip', 'hex' or 'integer'
    # @return [Type9Enum]
    attr_accessor :type

    # The value for the DHCP option
    # @return [String]
    attr_accessor :value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['code'] = 'code'
      @_hash['type'] = 'type'
      @_hash['value'] = 'value'
      @_hash
    end

    def initialize(code = nil,
                   type = nil,
                   value = nil)
      @code = code
      @type = type
      @value = value
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      code = hash['code']
      type = hash['type']
      value = hash['value']

      # Create object from extracted values.
      DhcpOptionModel.new(code,
                          type,
                          value)
    end
  end
end

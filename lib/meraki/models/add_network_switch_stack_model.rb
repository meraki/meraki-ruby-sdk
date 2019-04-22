# meraki
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # AddNetworkSwitchStackModel Model.
  class AddNetworkSwitchStackModel < BaseModel
    # The serial of the switch to be added
    # @return [String]
    attr_accessor :serial

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['serial'] = 'serial'
      @_hash
    end

    def initialize(serial = nil,
                   additional_properties = {})
      @serial = serial

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      serial = hash['serial']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      AddNetworkSwitchStackModel.new(serial,
                                     hash)
    end
  end
end

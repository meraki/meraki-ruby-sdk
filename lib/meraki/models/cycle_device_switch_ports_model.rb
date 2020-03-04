# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CycleDeviceSwitchPortsModel Model.
  class CycleDeviceSwitchPortsModel < BaseModel
    # List of switch ports. Example: [1, 2-5, 1_MA-MOD-8X10G_1,
    # 1_MA-MOD-8X10G_2-1_MA-MOD-8X10G_8]
    # @return [List of String]
    attr_accessor :ports

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['ports'] = 'ports'
      @_hash
    end

    def initialize(ports = nil)
      @ports = ports
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      ports = hash['ports']

      # Create object from extracted values.
      CycleDeviceSwitchPortsModel.new(ports)
    end
  end
end

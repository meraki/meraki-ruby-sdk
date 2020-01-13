# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # SwitchPortModel Model.
  class SwitchPortModel < BaseModel
    # Serial number of the switch.
    # @return [String]
    attr_accessor :serial

    # Port identifier of switch port. For modules, the identifier is
    # "SlotNumber_ModuleType_PortNumber" (Ex: “1_8X10G_1”), otherwise it is just
    # the port number (Ex: "8").
    # @return [String]
    attr_accessor :port_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['serial'] = 'serial'
      @_hash['port_id'] = 'portId'
      @_hash
    end

    def initialize(serial = nil,
                   port_id = nil)
      @serial = serial
      @port_id = port_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      serial = hash['serial']
      port_id = hash['portId']

      # Create object from extracted values.
      SwitchPortModel.new(serial,
                          port_id)
    end
  end
end

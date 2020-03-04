# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # ClaimNetworkDevicesModel Model.
  class ClaimNetworkDevicesModel < BaseModel
    # A list of serials of devices to claim
    # @return [List of String]
    attr_accessor :serials

    # [DEPRECATED] The serial of a device to claim
    # @return [String]
    attr_accessor :serial

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['serials'] = 'serials'
      @_hash['serial'] = 'serial'
      @_hash
    end

    def initialize(serials = nil,
                   serial = nil)
      @serials = serials
      @serial = serial
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      serials = hash['serials']
      serial = hash['serial']

      # Create object from extracted values.
      ClaimNetworkDevicesModel.new(serials,
                                   serial)
    end
  end
end

# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # WipeNetworkSmDeviceModel Model.
  class WipeNetworkSmDeviceModel < BaseModel
    # The wifiMac of the device to be wiped.
    # @return [String]
    attr_accessor :wifi_mac

    # The id of the device to be wiped.
    # @return [String]
    attr_accessor :id

    # The serial of the device to be wiped.
    # @return [String]
    attr_accessor :serial

    # The pin number (a six digit value) for wiping a macOS device. Required
    # only for macOS devices.
    # @return [Integer]
    attr_accessor :pin

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['wifi_mac'] = 'wifiMac'
      @_hash['id'] = 'id'
      @_hash['serial'] = 'serial'
      @_hash['pin'] = 'pin'
      @_hash
    end

    def initialize(wifi_mac = nil,
                   id = nil,
                   serial = nil,
                   pin = nil)
      @wifi_mac = wifi_mac
      @id = id
      @serial = serial
      @pin = pin
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      wifi_mac = hash['wifiMac']
      id = hash['id']
      serial = hash['serial']
      pin = hash['pin']

      # Create object from extracted values.
      WipeNetworkSmDeviceModel.new(wifi_mac,
                                   id,
                                   serial,
                                   pin)
    end
  end
end

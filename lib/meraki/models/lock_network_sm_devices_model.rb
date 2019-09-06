# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # LockNetworkSmDevicesModel Model.
  class LockNetworkSmDevicesModel < BaseModel
    # The wifiMacs of the devices to be locked.
    # @return [String]
    attr_accessor :wifi_macs

    # The ids of the devices to be locked.
    # @return [String]
    attr_accessor :ids

    # The serials of the devices to be locked.
    # @return [String]
    attr_accessor :serials

    # The scope (one of all, none, withAny, withAll, withoutAny, or withoutAll)
    # and a set of tags of the devices to be wiped.
    # @return [String]
    attr_accessor :scope

    # The pin number for locking macOS devices (a six digit number). Required
    # only for macOS devices.
    # @return [Integer]
    attr_accessor :pin

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['wifi_macs'] = 'wifiMacs'
      @_hash['ids'] = 'ids'
      @_hash['serials'] = 'serials'
      @_hash['scope'] = 'scope'
      @_hash['pin'] = 'pin'
      @_hash
    end

    def initialize(wifi_macs = nil,
                   ids = nil,
                   serials = nil,
                   scope = nil,
                   pin = nil)
      @wifi_macs = wifi_macs
      @ids = ids
      @serials = serials
      @scope = scope
      @pin = pin
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      wifi_macs = hash['wifiMacs']
      ids = hash['ids']
      serials = hash['serials']
      scope = hash['scope']
      pin = hash['pin']

      # Create object from extracted values.
      LockNetworkSmDevicesModel.new(wifi_macs,
                                    ids,
                                    serials,
                                    scope,
                                    pin)
    end
  end
end

# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # MoveNetworkSmDevicesModel Model.
  class MoveNetworkSmDevicesModel < BaseModel
    # The wifiMacs of the devices to be moved.
    # @return [String]
    attr_accessor :wifi_macs

    # The ids of the devices to be moved.
    # @return [String]
    attr_accessor :ids

    # The serials of the devices to be moved.
    # @return [String]
    attr_accessor :serials

    # The scope (one of all, none, withAny, withAll, withoutAny, or withoutAll)
    # and a set of tags of the devices to be moved.
    # @return [String]
    attr_accessor :scope

    # The new network to which the devices will be moved.
    # @return [String]
    attr_accessor :new_network

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['wifi_macs'] = 'wifiMacs'
      @_hash['ids'] = 'ids'
      @_hash['serials'] = 'serials'
      @_hash['scope'] = 'scope'
      @_hash['new_network'] = 'newNetwork'
      @_hash
    end

    def initialize(new_network = nil,
                   wifi_macs = nil,
                   ids = nil,
                   serials = nil,
                   scope = nil)
      @wifi_macs = wifi_macs
      @ids = ids
      @serials = serials
      @scope = scope
      @new_network = new_network
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      new_network = hash['newNetwork']
      wifi_macs = hash['wifiMacs']
      ids = hash['ids']
      serials = hash['serials']
      scope = hash['scope']

      # Create object from extracted values.
      MoveNetworkSmDevicesModel.new(new_network,
                                    wifi_macs,
                                    ids,
                                    serials,
                                    scope)
    end
  end
end

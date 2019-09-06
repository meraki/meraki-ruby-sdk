# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSmDevicesTagsModel Model.
  class UpdateNetworkSmDevicesTagsModel < BaseModel
    # The wifiMacs of the devices to be modified.
    # @return [String]
    attr_accessor :wifi_macs

    # The ids of the devices to be modified.
    # @return [String]
    attr_accessor :ids

    # The serials of the devices to be modified.
    # @return [String]
    attr_accessor :serials

    # The scope (one of all, none, withAny, withAll, withoutAny, or withoutAll)
    # and a set of tags of the devices to be modified.
    # @return [String]
    attr_accessor :scope

    # The tags to be added, deleted, or updated.
    # @return [String]
    attr_accessor :tags

    # One of add, delete, or update. Only devices that have been modified will
    # be returned.
    # @return [String]
    attr_accessor :update_action

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['wifi_macs'] = 'wifiMacs'
      @_hash['ids'] = 'ids'
      @_hash['serials'] = 'serials'
      @_hash['scope'] = 'scope'
      @_hash['tags'] = 'tags'
      @_hash['update_action'] = 'updateAction'
      @_hash
    end

    def initialize(tags = nil,
                   update_action = nil,
                   wifi_macs = nil,
                   ids = nil,
                   serials = nil,
                   scope = nil)
      @wifi_macs = wifi_macs
      @ids = ids
      @serials = serials
      @scope = scope
      @tags = tags
      @update_action = update_action
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      tags = hash['tags']
      update_action = hash['updateAction']
      wifi_macs = hash['wifiMacs']
      ids = hash['ids']
      serials = hash['serials']
      scope = hash['scope']

      # Create object from extracted values.
      UpdateNetworkSmDevicesTagsModel.new(tags,
                                          update_action,
                                          wifi_macs,
                                          ids,
                                          serials,
                                          scope)
    end
  end
end

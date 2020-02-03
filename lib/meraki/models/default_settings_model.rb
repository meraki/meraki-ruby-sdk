# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Default multicast setting for entire network. IGMP snooping and Flood
  # unknown multicast traffic settings are enabled by default.
  class DefaultSettingsModel < BaseModel
    # IGMP snooping setting for entire network
    # @return [Boolean]
    attr_accessor :igmp_snooping_enabled

    # Flood unknown multicast traffic setting for entire network
    # @return [Boolean]
    attr_accessor :flood_unknown_multicast_traffic_enabled

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['igmp_snooping_enabled'] = 'igmpSnoopingEnabled'
      @_hash['flood_unknown_multicast_traffic_enabled'] =
        'floodUnknownMulticastTrafficEnabled'
      @_hash
    end

    def initialize(igmp_snooping_enabled = nil,
                   flood_unknown_multicast_traffic_enabled = nil)
      @igmp_snooping_enabled = igmp_snooping_enabled
      @flood_unknown_multicast_traffic_enabled =
        flood_unknown_multicast_traffic_enabled
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      igmp_snooping_enabled = hash['igmpSnoopingEnabled']
      flood_unknown_multicast_traffic_enabled =
        hash['floodUnknownMulticastTrafficEnabled']

      # Create object from extracted values.
      DefaultSettingsModel.new(igmp_snooping_enabled,
                               flood_unknown_multicast_traffic_enabled)
    end
  end
end

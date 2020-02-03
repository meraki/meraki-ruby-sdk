# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Override1Model Model.
  class Override1Model < BaseModel
    # List of switch profiles ids for template network
    # @return [List of String]
    attr_accessor :switch_profiles

    # List of switch serials for non-template network
    # @return [List of String]
    attr_accessor :switches

    # List of switch stack ids for non-template network
    # @return [List of String]
    attr_accessor :stacks

    # IGMP snooping setting for switches, switch stacks or switch profiles
    # @return [Boolean]
    attr_accessor :igmp_snooping_enabled

    # Flood unknown multicast traffic setting for switches, switch stacks or
    # switch profiles
    # @return [Boolean]
    attr_accessor :flood_unknown_multicast_traffic_enabled

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['switch_profiles'] = 'switchProfiles'
      @_hash['switches'] = 'switches'
      @_hash['stacks'] = 'stacks'
      @_hash['igmp_snooping_enabled'] = 'igmpSnoopingEnabled'
      @_hash['flood_unknown_multicast_traffic_enabled'] =
        'floodUnknownMulticastTrafficEnabled'
      @_hash
    end

    def initialize(igmp_snooping_enabled = nil,
                   flood_unknown_multicast_traffic_enabled = nil,
                   switch_profiles = nil,
                   switches = nil,
                   stacks = nil)
      @switch_profiles = switch_profiles
      @switches = switches
      @stacks = stacks
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
      switch_profiles = hash['switchProfiles']
      switches = hash['switches']
      stacks = hash['stacks']

      # Create object from extracted values.
      Override1Model.new(igmp_snooping_enabled,
                         flood_unknown_multicast_traffic_enabled,
                         switch_profiles,
                         switches,
                         stacks)
    end
  end
end

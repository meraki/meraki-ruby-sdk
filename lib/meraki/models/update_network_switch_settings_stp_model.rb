# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSwitchSettingsStpModel Model.
  class UpdateNetworkSwitchSettingsStpModel < BaseModel
    # The spanning tree protocol status in network
    # @return [Boolean]
    attr_accessor :rstp_enabled

    # STP bridge priority for switches/stacks or switch profiles. An empty array
    # will clear the STP bridge priority settings.
    # @return [List of StpBridgePriorityModel]
    attr_accessor :stp_bridge_priority

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['rstp_enabled'] = 'rstpEnabled'
      @_hash['stp_bridge_priority'] = 'stpBridgePriority'
      @_hash
    end

    def initialize(rstp_enabled = nil,
                   stp_bridge_priority = nil)
      @rstp_enabled = rstp_enabled
      @stp_bridge_priority = stp_bridge_priority
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      rstp_enabled = hash['rstpEnabled']
      # Parameter is an array, so we need to iterate through it
      stp_bridge_priority = nil
      unless hash['stpBridgePriority'].nil?
        stp_bridge_priority = []
        hash['stpBridgePriority'].each do |structure|
          stp_bridge_priority << (StpBridgePriorityModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateNetworkSwitchSettingsStpModel.new(rstp_enabled,
                                              stp_bridge_priority)
    end
  end
end

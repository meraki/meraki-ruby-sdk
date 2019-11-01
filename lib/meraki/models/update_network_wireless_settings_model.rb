# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkWirelessSettingsModel Model.
  class UpdateNetworkWirelessSettingsModel < BaseModel
    # Toggle for enabling or disabling meshing in a network
    # @return [Boolean]
    attr_accessor :meshing_enabled

    # Toggle for enabling or disabling IPv6 bridging in a network (Note: if
    # enabled, SSIDs must also be configured to use bridge mode)
    # @return [Boolean]
    attr_accessor :ipv6_bridge_enabled

    # Toggle for enabling or disabling location analytics for your network
    # @return [Boolean]
    attr_accessor :location_analytics_enabled

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['meshing_enabled'] = 'meshingEnabled'
      @_hash['ipv6_bridge_enabled'] = 'ipv6BridgeEnabled'
      @_hash['location_analytics_enabled'] = 'locationAnalyticsEnabled'
      @_hash
    end

    def initialize(meshing_enabled = nil,
                   ipv6_bridge_enabled = nil,
                   location_analytics_enabled = nil)
      @meshing_enabled = meshing_enabled
      @ipv6_bridge_enabled = ipv6_bridge_enabled
      @location_analytics_enabled = location_analytics_enabled
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      meshing_enabled = hash['meshingEnabled']
      ipv6_bridge_enabled = hash['ipv6BridgeEnabled']
      location_analytics_enabled = hash['locationAnalyticsEnabled']

      # Create object from extracted values.
      UpdateNetworkWirelessSettingsModel.new(meshing_enabled,
                                             ipv6_bridge_enabled,
                                             location_analytics_enabled)
    end
  end
end

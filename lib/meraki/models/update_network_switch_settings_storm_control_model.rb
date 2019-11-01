# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSwitchSettingsStormControlModel Model.
  class UpdateNetworkSwitchSettingsStormControlModel < BaseModel
    # Percentage (1 to 99) of total available port bandwidth for broadcast
    # traffic type. Default value 100 percent rate is to clear the
    # configuration.
    # @return [Integer]
    attr_accessor :broadcast_threshold

    # Percentage (1 to 99) of total available port bandwidth for multicast
    # traffic type. Default value 100 percent rate is to clear the
    # configuration.
    # @return [Integer]
    attr_accessor :multicast_threshold

    # Percentage (1 to 99) of total available port bandwidth for unknown unicast
    # (dlf-destination lookup failure) traffic type. Default value 100 percent
    # rate is to clear the configuration.
    # @return [Integer]
    attr_accessor :unknown_unicast_threshold

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['broadcast_threshold'] = 'broadcastThreshold'
      @_hash['multicast_threshold'] = 'multicastThreshold'
      @_hash['unknown_unicast_threshold'] = 'unknownUnicastThreshold'
      @_hash
    end

    def initialize(broadcast_threshold = nil,
                   multicast_threshold = nil,
                   unknown_unicast_threshold = nil)
      @broadcast_threshold = broadcast_threshold
      @multicast_threshold = multicast_threshold
      @unknown_unicast_threshold = unknown_unicast_threshold
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      broadcast_threshold = hash['broadcastThreshold']
      multicast_threshold = hash['multicastThreshold']
      unknown_unicast_threshold = hash['unknownUnicastThreshold']

      # Create object from extracted values.
      UpdateNetworkSwitchSettingsStormControlModel.new(broadcast_threshold,
                                                       multicast_threshold,
                                                       unknown_unicast_threshold)
    end
  end
end

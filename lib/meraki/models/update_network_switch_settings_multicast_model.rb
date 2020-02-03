# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSwitchSettingsMulticastModel Model.
  class UpdateNetworkSwitchSettingsMulticastModel < BaseModel
    # Default multicast setting for entire network. IGMP snooping and Flood
    # unknown multicast traffic settings are enabled by default.
    # @return [DefaultSettingsModel]
    attr_accessor :default_settings

    # Array of paired switches/stacks/profiles and corresponding multicast
    # settings. An empty array will clear the multicast settings.
    # @return [List of Override1Model]
    attr_accessor :overrides

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['default_settings'] = 'defaultSettings'
      @_hash['overrides'] = 'overrides'
      @_hash
    end

    def initialize(default_settings = nil,
                   overrides = nil)
      @default_settings = default_settings
      @overrides = overrides
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      if hash['defaultSettings']
        default_settings = DefaultSettingsModel.from_hash(hash['defaultSettings'])
      end
      # Parameter is an array, so we need to iterate through it
      overrides = nil
      unless hash['overrides'].nil?
        overrides = []
        hash['overrides'].each do |structure|
          overrides << (Override1Model.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateNetworkSwitchSettingsMulticastModel.new(default_settings,
                                                    overrides)
    end
  end
end

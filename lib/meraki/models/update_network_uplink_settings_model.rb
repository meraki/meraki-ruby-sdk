# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkUplinkSettingsModel Model.
  class UpdateNetworkUplinkSettingsModel < BaseModel
    # A mapping of uplinks to their bandwidth settings (be sure to check which
    # uplinks are supported for your network)
    # @return [BandwidthLimits7Model]
    attr_accessor :bandwidth_limits

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['bandwidth_limits'] = 'bandwidthLimits'
      @_hash
    end

    def initialize(bandwidth_limits = nil)
      @bandwidth_limits = bandwidth_limits
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      if hash['bandwidthLimits']
        bandwidth_limits = BandwidthLimits7Model.from_hash(hash['bandwidthLimits'])
      end

      # Create object from extracted values.
      UpdateNetworkUplinkSettingsModel.new(bandwidth_limits)
    end
  end
end

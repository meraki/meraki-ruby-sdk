# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkCellularGatewaySettingsUplinkModel Model.
  class UpdateNetworkCellularGatewaySettingsUplinkModel < BaseModel
    # The bandwidth settings for the 'cellular' uplink
    # @return [BandwidthLimitsModel]
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
        bandwidth_limits = BandwidthLimitsModel.from_hash(hash['bandwidthLimits'])
      end

      # Create object from extracted values.
      UpdateNetworkCellularGatewaySettingsUplinkModel.new(bandwidth_limits)
    end
  end
end

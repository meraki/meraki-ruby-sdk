# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # The bandwidth settings for clients bound to your group policy.
  class BandwidthModel < BaseModel
    # How bandwidth limits are enforced. Can be 'network default', 'ignore' or
    # 'custom'.
    # @return [SettingsEnum]
    attr_accessor :settings

    # The bandwidth limits object, specifying upload and download speed for
    # clients bound to the group policy. These are only enforced if 'settings'
    # is set to 'custom'.
    # @return [BandwidthLimits1Model]
    attr_accessor :bandwidth_limits

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['settings'] = 'settings'
      @_hash['bandwidth_limits'] = 'bandwidthLimits'
      @_hash
    end

    def initialize(settings = nil,
                   bandwidth_limits = nil)
      @settings = settings
      @bandwidth_limits = bandwidth_limits
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      settings = hash['settings']
      if hash['bandwidthLimits']
        bandwidth_limits = BandwidthLimits1Model.from_hash(hash['bandwidthLimits'])
      end

      # Create object from extracted values.
      BandwidthModel.new(settings,
                         bandwidth_limits)
    end
  end
end

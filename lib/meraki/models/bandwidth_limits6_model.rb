# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # A mapping of uplinks ('wan1', 'wan2' or 'cellular') to their bandwidth
  # settings (be sure to check which uplinks are supported for your network).
  # Bandwidth setting objects have the following structure
  class BandwidthLimits6Model < BaseModel
    # The maximum upload limit (integer, in Kbps). null indicates no limit
    # @return [Integer]
    attr_accessor :limit_up

    # The maximum download limit (integer, in Kbps). null indicates no limit
    # @return [Integer]
    attr_accessor :limit_down

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['limit_up'] = 'limitUp'
      @_hash['limit_down'] = 'limitDown'
      @_hash
    end

    def initialize(limit_up = nil,
                   limit_down = nil)
      @limit_up = limit_up
      @limit_down = limit_down
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      limit_up = hash['limitUp']
      limit_down = hash['limitDown']

      # Create object from extracted values.
      BandwidthLimits6Model.new(limit_up,
                                limit_down)
    end
  end
end

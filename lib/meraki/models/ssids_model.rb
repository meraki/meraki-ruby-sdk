# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # The target SSIDs. Each SSID must be enabled and must have Click-through
  # splash enabled. For each SSID where isAuthorized is true, the expiration
  # time will automatically be set according to the SSID's splash frequency.
  class SsidsModel < BaseModel
    # New authorization status for SSID (true, false).
    # @return [String]
    attr_accessor :is_authorized

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['is_authorized'] = 'isAuthorized'
      @_hash
    end

    def initialize(is_authorized = nil)
      @is_authorized = is_authorized
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      is_authorized = hash['isAuthorized']

      # Create object from extracted values.
      SsidsModel.new(is_authorized)
    end
  end
end

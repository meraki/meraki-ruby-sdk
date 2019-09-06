# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkVlansEnabledStateModel Model.
  class UpdateNetworkVlansEnabledStateModel < BaseModel
    # Boolean indicating whether to enable (true) or disable (false) VLANs for
    # the network
    # @return [Boolean]
    attr_accessor :enabled

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash
    end

    def initialize(enabled = nil)
      @enabled = enabled
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash['enabled']

      # Create object from extracted values.
      UpdateNetworkVlansEnabledStateModel.new(enabled)
    end
  end
end

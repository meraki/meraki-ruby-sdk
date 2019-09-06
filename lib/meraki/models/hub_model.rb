# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # HubModel Model.
  class HubModel < BaseModel
    # The network ID of the hub.
    # @return [String]
    attr_accessor :hub_id

    # Only valid in 'spoke' mode. Indicates whether default route traffic should
    # be sent to this hub.
    # @return [Boolean]
    attr_accessor :use_default_route

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['hub_id'] = 'hubId'
      @_hash['use_default_route'] = 'useDefaultRoute'
      @_hash
    end

    def initialize(hub_id = nil,
                   use_default_route = nil)
      @hub_id = hub_id
      @use_default_route = use_default_route
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      hub_id = hash['hubId']
      use_default_route = hash['useDefaultRoute']

      # Create object from extracted values.
      HubModel.new(hub_id,
                   use_default_route)
    end
  end
end

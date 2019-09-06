# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSiteToSiteVpnModel Model.
  class UpdateNetworkSiteToSiteVpnModel < BaseModel
    # The site-to-site VPN mode: hub, spoke, or none
    # @return [String]
    attr_accessor :mode

    # The list of VPN hubs, in order of preference. In spoke mode, at least 1
    # hub is required.
    # @return [List of HubModel]
    attr_accessor :hubs

    # The list of subnets and their VPN presence.
    # @return [List of SubnetModel]
    attr_accessor :subnets

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mode'] = 'mode'
      @_hash['hubs'] = 'hubs'
      @_hash['subnets'] = 'subnets'
      @_hash
    end

    def initialize(mode = nil,
                   hubs = nil,
                   subnets = nil)
      @mode = mode
      @hubs = hubs
      @subnets = subnets
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      mode = hash['mode']
      # Parameter is an array, so we need to iterate through it
      hubs = nil
      unless hash['hubs'].nil?
        hubs = []
        hash['hubs'].each do |structure|
          hubs << (HubModel.from_hash(structure) if structure)
        end
      end
      # Parameter is an array, so we need to iterate through it
      subnets = nil
      unless hash['subnets'].nil?
        subnets = []
        hash['subnets'].each do |structure|
          subnets << (SubnetModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateNetworkSiteToSiteVpnModel.new(mode,
                                          hubs,
                                          subnets)
    end
  end
end

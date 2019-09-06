# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateOrganizationThirdPartyVPNPeersModel Model.
  class UpdateOrganizationThirdPartyVPNPeersModel < BaseModel
    # The list of VPN peers
    # @return [List of PeerModel]
    attr_accessor :peers

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['peers'] = 'peers'
      @_hash
    end

    def initialize(peers = nil)
      @peers = peers
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      peers = nil
      unless hash['peers'].nil?
        peers = []
        hash['peers'].each do |structure|
          peers << (PeerModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateOrganizationThirdPartyVPNPeersModel.new(peers)
    end
  end
end

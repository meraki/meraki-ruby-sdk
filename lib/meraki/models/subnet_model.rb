# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # SubnetModel Model.
  class SubnetModel < BaseModel
    # The CIDR notation subnet used within the VPN
    # @return [String]
    attr_accessor :local_subnet

    # Indicates the presence of the subnet in the VPN
    # @return [Boolean]
    attr_accessor :use_vpn

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['local_subnet'] = 'localSubnet'
      @_hash['use_vpn'] = 'useVpn'
      @_hash
    end

    def initialize(local_subnet = nil,
                   use_vpn = nil)
      @local_subnet = local_subnet
      @use_vpn = use_vpn
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      local_subnet = hash['localSubnet']
      use_vpn = hash['useVpn']

      # Create object from extracted values.
      SubnetModel.new(local_subnet,
                      use_vpn)
    end
  end
end

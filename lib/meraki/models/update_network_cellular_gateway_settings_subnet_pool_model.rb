# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkCellularGatewaySettingsSubnetPoolModel Model.
  class UpdateNetworkCellularGatewaySettingsSubnetPoolModel < BaseModel
    # Mask used for the subnet of all MGs in  this network.
    # @return [Integer]
    attr_accessor :mask

    # CIDR of the pool of subnets. Each MG in this network will automatically
    # pick a subnet from this pool.
    # @return [String]
    attr_accessor :cidr

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mask'] = 'mask'
      @_hash['cidr'] = 'cidr'
      @_hash
    end

    def initialize(mask = nil,
                   cidr = nil)
      @mask = mask
      @cidr = cidr
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      mask = hash['mask']
      cidr = hash['cidr']

      # Create object from extracted values.
      UpdateNetworkCellularGatewaySettingsSubnetPoolModel.new(mask,
                                                              cidr)
    end
  end
end

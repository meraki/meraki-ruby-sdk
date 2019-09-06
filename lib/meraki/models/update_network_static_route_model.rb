# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkStaticRouteModel Model.
  class UpdateNetworkStaticRouteModel < BaseModel
    # The name of the static route
    # @return [String]
    attr_accessor :name

    # The subnet of the static route
    # @return [String]
    attr_accessor :subnet

    # The gateway IP (next hop) of the static route
    # @return [String]
    attr_accessor :gateway_ip

    # The enabled state of the static route
    # @return [String]
    attr_accessor :enabled

    # The DHCP fixed IP assignments on the static route
    # @return [String]
    attr_accessor :fixed_ip_assignments

    # The DHCP reserved IP ranges on the static route
    # @return [String]
    attr_accessor :reserved_ip_ranges

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['subnet'] = 'subnet'
      @_hash['gateway_ip'] = 'gatewayIp'
      @_hash['enabled'] = 'enabled'
      @_hash['fixed_ip_assignments'] = 'fixedIpAssignments'
      @_hash['reserved_ip_ranges'] = 'reservedIpRanges'
      @_hash
    end

    def initialize(name = nil,
                   subnet = nil,
                   gateway_ip = nil,
                   enabled = nil,
                   fixed_ip_assignments = nil,
                   reserved_ip_ranges = nil)
      @name = name
      @subnet = subnet
      @gateway_ip = gateway_ip
      @enabled = enabled
      @fixed_ip_assignments = fixed_ip_assignments
      @reserved_ip_ranges = reserved_ip_ranges
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      subnet = hash['subnet']
      gateway_ip = hash['gatewayIp']
      enabled = hash['enabled']
      fixed_ip_assignments = hash['fixedIpAssignments']
      reserved_ip_ranges = hash['reservedIpRanges']

      # Create object from extracted values.
      UpdateNetworkStaticRouteModel.new(name,
                                        subnet,
                                        gateway_ip,
                                        enabled,
                                        fixed_ip_assignments,
                                        reserved_ip_ranges)
    end
  end
end

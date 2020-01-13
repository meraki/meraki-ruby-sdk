# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkCellularGatewaySettingsDhcpModel Model.
  class UpdateNetworkCellularGatewaySettingsDhcpModel < BaseModel
    # DHCP Lease time for all MG of the network. It can be '30 minutes', '1
    # hour', '4 hours', '12 hours', '1 day' or '1 week'.
    # @return [String]
    attr_accessor :dhcp_lease_time

    # DNS name servers mode for all MG of the network. It can take 4 different
    # values: 'upstream_dns', 'google_dns', 'opendns', 'custom'.
    # @return [String]
    attr_accessor :dns_nameservers

    # list of fixed IP representing the the DNS Name servers when the mode is
    # 'custom'
    # @return [List of String]
    attr_accessor :dns_custom_nameservers

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['dhcp_lease_time'] = 'dhcpLeaseTime'
      @_hash['dns_nameservers'] = 'dnsNameservers'
      @_hash['dns_custom_nameservers'] = 'dnsCustomNameservers'
      @_hash
    end

    def initialize(dhcp_lease_time = nil,
                   dns_nameservers = nil,
                   dns_custom_nameservers = nil)
      @dhcp_lease_time = dhcp_lease_time
      @dns_nameservers = dns_nameservers
      @dns_custom_nameservers = dns_custom_nameservers
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      dhcp_lease_time = hash['dhcpLeaseTime']
      dns_nameservers = hash['dnsNameservers']
      dns_custom_nameservers = hash['dnsCustomNameservers']

      # Create object from extracted values.
      UpdateNetworkCellularGatewaySettingsDhcpModel.new(dhcp_lease_time,
                                                        dns_nameservers,
                                                        dns_custom_nameservers)
    end
  end
end

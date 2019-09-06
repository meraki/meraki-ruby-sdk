# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkVlanModel Model.
  class UpdateNetworkVlanModel < BaseModel
    # The name of the VLAN
    # @return [String]
    attr_accessor :name

    # The subnet of the VLAN
    # @return [String]
    attr_accessor :subnet

    # The local IP of the appliance on the VLAN
    # @return [String]
    attr_accessor :appliance_ip

    # The translated VPN subnet if VPN and VPN subnet translation are enabled on
    # the VLAN
    # @return [String]
    attr_accessor :vpn_nat_subnet

    # The appliance's handling of DHCP requests on this VLAN. One of: "Run a
    # DHCP server", "Relay DHCP to another server", or "Do not respond to DHCP
    # requests"
    # @return [String]
    attr_accessor :dhcp_handling

    # The IPs of the DHCP servers that DHCP requests should be relayed to
    # @return [List of String]
    attr_accessor :dhcp_relay_server_ips

    # The term of DHCP leases if the appliance is running a DHCP server on this
    # VLAN. One of: "30 minutes", "1 hour", "4 hours", "12 hours", "1 day", "1
    # week".
    # @return [String]
    attr_accessor :dhcp_lease_time

    # Use DHCP boot options specified in other properties
    # @return [Boolean]
    attr_accessor :dhcp_boot_options_enabled

    # DHCP boot option to direct boot clients to the server to load the boot
    # file from
    # @return [String]
    attr_accessor :dhcp_boot_next_server

    # DHCP boot option for boot filename
    # @return [String]
    attr_accessor :dhcp_boot_filename

    # The DHCP fixed IP assignments on the VLAN. This should be an object that
    # contains mappings from MAC addresses to objects that themselves each
    # contain "ip" and "name" string fields. See the sample request/response for
    # more details.
    # @return [Object]
    attr_accessor :fixed_ip_assignments

    # The DHCP reserved IP ranges on the VLAN
    # @return [List of ReservedIpRangeModel]
    attr_accessor :reserved_ip_ranges

    # The DNS nameservers used for DHCP responses, either "upstream_dns",
    # "google_dns", "opendns", or a newline seperated string of IP addresses or
    # domain names
    # @return [String]
    attr_accessor :dns_nameservers

    # The list of DHCP options that will be included in DHCP responses. Each
    # object in the list should have "code", "type", and "value" properties.
    # @return [List of DhcpOptionModel]
    attr_accessor :dhcp_options

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['subnet'] = 'subnet'
      @_hash['appliance_ip'] = 'applianceIp'
      @_hash['vpn_nat_subnet'] = 'vpnNatSubnet'
      @_hash['dhcp_handling'] = 'dhcpHandling'
      @_hash['dhcp_relay_server_ips'] = 'dhcpRelayServerIps'
      @_hash['dhcp_lease_time'] = 'dhcpLeaseTime'
      @_hash['dhcp_boot_options_enabled'] = 'dhcpBootOptionsEnabled'
      @_hash['dhcp_boot_next_server'] = 'dhcpBootNextServer'
      @_hash['dhcp_boot_filename'] = 'dhcpBootFilename'
      @_hash['fixed_ip_assignments'] = 'fixedIpAssignments'
      @_hash['reserved_ip_ranges'] = 'reservedIpRanges'
      @_hash['dns_nameservers'] = 'dnsNameservers'
      @_hash['dhcp_options'] = 'dhcpOptions'
      @_hash
    end

    def initialize(name = nil,
                   subnet = nil,
                   appliance_ip = nil,
                   vpn_nat_subnet = nil,
                   dhcp_handling = nil,
                   dhcp_relay_server_ips = nil,
                   dhcp_lease_time = nil,
                   dhcp_boot_options_enabled = nil,
                   dhcp_boot_next_server = nil,
                   dhcp_boot_filename = nil,
                   fixed_ip_assignments = nil,
                   reserved_ip_ranges = nil,
                   dns_nameservers = nil,
                   dhcp_options = nil)
      @name = name
      @subnet = subnet
      @appliance_ip = appliance_ip
      @vpn_nat_subnet = vpn_nat_subnet
      @dhcp_handling = dhcp_handling
      @dhcp_relay_server_ips = dhcp_relay_server_ips
      @dhcp_lease_time = dhcp_lease_time
      @dhcp_boot_options_enabled = dhcp_boot_options_enabled
      @dhcp_boot_next_server = dhcp_boot_next_server
      @dhcp_boot_filename = dhcp_boot_filename
      @fixed_ip_assignments = fixed_ip_assignments
      @reserved_ip_ranges = reserved_ip_ranges
      @dns_nameservers = dns_nameservers
      @dhcp_options = dhcp_options
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      subnet = hash['subnet']
      appliance_ip = hash['applianceIp']
      vpn_nat_subnet = hash['vpnNatSubnet']
      dhcp_handling = hash['dhcpHandling']
      dhcp_relay_server_ips = hash['dhcpRelayServerIps']
      dhcp_lease_time = hash['dhcpLeaseTime']
      dhcp_boot_options_enabled = hash['dhcpBootOptionsEnabled']
      dhcp_boot_next_server = hash['dhcpBootNextServer']
      dhcp_boot_filename = hash['dhcpBootFilename']
      fixed_ip_assignments = hash['fixedIpAssignments']
      # Parameter is an array, so we need to iterate through it
      reserved_ip_ranges = nil
      unless hash['reservedIpRanges'].nil?
        reserved_ip_ranges = []
        hash['reservedIpRanges'].each do |structure|
          reserved_ip_ranges << (ReservedIpRangeModel.from_hash(structure) if structure)
        end
      end
      dns_nameservers = hash['dnsNameservers']
      # Parameter is an array, so we need to iterate through it
      dhcp_options = nil
      unless hash['dhcpOptions'].nil?
        dhcp_options = []
        hash['dhcpOptions'].each do |structure|
          dhcp_options << (DhcpOptionModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateNetworkVlanModel.new(name,
                                 subnet,
                                 appliance_ip,
                                 vpn_nat_subnet,
                                 dhcp_handling,
                                 dhcp_relay_server_ips,
                                 dhcp_lease_time,
                                 dhcp_boot_options_enabled,
                                 dhcp_boot_next_server,
                                 dhcp_boot_filename,
                                 fixed_ip_assignments,
                                 reserved_ip_ranges,
                                 dns_nameservers,
                                 dhcp_options)
    end
  end
end

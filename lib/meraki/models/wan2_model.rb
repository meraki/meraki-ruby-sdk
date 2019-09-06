# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # WAN 2 settings (only for MX devices)
  class Wan2Model < BaseModel
    # Enable or disable the interface (only for MX devices). Valid values are
    # 'enabled', 'disabled', and 'not configured'.
    # @return [WanEnabledEnum]
    attr_accessor :wan_enabled

    # Configue the interface to have static IP settings or use DHCP.
    # @return [Boolean]
    attr_accessor :using_static_ip

    # The IP the device should use on the WAN.
    # @return [String]
    attr_accessor :static_ip

    # The IP of the gateway on the WAN.
    # @return [String]
    attr_accessor :static_gateway_ip

    # The subnet mask for the WAN.
    # @return [String]
    attr_accessor :static_subnet_mask

    # Up to two DNS IPs.
    # @return [List of String]
    attr_accessor :static_dns

    # The VLAN that management traffic should be tagged with. Applies whether
    # usingStaticIp is true or false.
    # @return [Integer]
    attr_accessor :vlan

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['wan_enabled'] = 'wanEnabled'
      @_hash['using_static_ip'] = 'usingStaticIp'
      @_hash['static_ip'] = 'staticIp'
      @_hash['static_gateway_ip'] = 'staticGatewayIp'
      @_hash['static_subnet_mask'] = 'staticSubnetMask'
      @_hash['static_dns'] = 'staticDns'
      @_hash['vlan'] = 'vlan'
      @_hash
    end

    def initialize(wan_enabled = nil,
                   using_static_ip = nil,
                   static_ip = nil,
                   static_gateway_ip = nil,
                   static_subnet_mask = nil,
                   static_dns = nil,
                   vlan = nil)
      @wan_enabled = wan_enabled
      @using_static_ip = using_static_ip
      @static_ip = static_ip
      @static_gateway_ip = static_gateway_ip
      @static_subnet_mask = static_subnet_mask
      @static_dns = static_dns
      @vlan = vlan
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      wan_enabled = hash['wanEnabled']
      using_static_ip = hash['usingStaticIp']
      static_ip = hash['staticIp']
      static_gateway_ip = hash['staticGatewayIp']
      static_subnet_mask = hash['staticSubnetMask']
      static_dns = hash['staticDns']
      vlan = hash['vlan']

      # Create object from extracted values.
      Wan2Model.new(wan_enabled,
                    using_static_ip,
                    static_ip,
                    static_gateway_ip,
                    static_subnet_mask,
                    static_dns,
                    vlan)
    end
  end
end

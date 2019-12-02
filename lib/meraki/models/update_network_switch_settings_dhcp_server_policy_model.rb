# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSwitchSettingsDhcpServerPolicyModel Model.
  class UpdateNetworkSwitchSettingsDhcpServerPolicyModel < BaseModel
    # 'allow' or 'block' new DHCP servers. Default value is 'allow'.
    # @return [DefaultPolicyEnum]
    attr_accessor :default_policy

    # List the MAC addresses of DHCP servers to permit on the network.
    # Applicable only if defaultPolicy is set to block. An empty array will
    # clear the entries.
    # @return [List of String]
    attr_accessor :allowed_servers

    # List the MAC addresses of DHCP servers to block on the network. Applicable
    # only if defaultPolicy is set to allow. An empty array will clear the
    # entries.
    # @return [List of String]
    attr_accessor :blocked_servers

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['default_policy'] = 'defaultPolicy'
      @_hash['allowed_servers'] = 'allowedServers'
      @_hash['blocked_servers'] = 'blockedServers'
      @_hash
    end

    def initialize(default_policy = nil,
                   allowed_servers = nil,
                   blocked_servers = nil)
      @default_policy = default_policy
      @allowed_servers = allowed_servers
      @blocked_servers = blocked_servers
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      default_policy = hash['defaultPolicy']
      allowed_servers = hash['allowedServers']
      blocked_servers = hash['blockedServers']

      # Create object from extracted values.
      UpdateNetworkSwitchSettingsDhcpServerPolicyModel.new(default_policy,
                                                           allowed_servers,
                                                           blocked_servers)
    end
  end
end

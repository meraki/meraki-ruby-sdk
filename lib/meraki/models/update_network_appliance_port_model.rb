# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkAppliancePortModel Model.
  class UpdateNetworkAppliancePortModel < BaseModel
    # The status of the port
    # @return [Boolean]
    attr_accessor :enabled

    # Trunk port can Drop all Untagged traffic. When true, no VLAN is required.
    # Access ports cannot have dropUntaggedTraffic set to true.
    # @return [Boolean]
    attr_accessor :drop_untagged_traffic

    # The type of the port: 'access' or 'trunk'.
    # @return [String]
    attr_accessor :type

    # Native VLAN when the port is in Trunk mode. Access VLAN when the port is
    # in Access mode.
    # @return [Integer]
    attr_accessor :vlan

    # Comma-delimited list of the VLAN ID's allowed on the port, or 'all' to
    # permit all VLAN's on the port.
    # @return [String]
    attr_accessor :allowed_vlans

    # The name of the policy. Only applicable to Access ports. Valid values are:
    # 'open', '8021x-radius', 'mac-radius', 'hybris-radius' for MX64 or Z3 or
    # any MX supporting the per port authentication feature. Otherwise, 'open'
    # is the only valid value and 'open' is the default value if the field is
    # missing.
    # @return [String]
    attr_accessor :access_policy

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash['drop_untagged_traffic'] = 'dropUntaggedTraffic'
      @_hash['type'] = 'type'
      @_hash['vlan'] = 'vlan'
      @_hash['allowed_vlans'] = 'allowedVlans'
      @_hash['access_policy'] = 'accessPolicy'
      @_hash
    end

    def initialize(enabled = nil,
                   drop_untagged_traffic = nil,
                   type = nil,
                   vlan = nil,
                   allowed_vlans = nil,
                   access_policy = nil)
      @enabled = enabled
      @drop_untagged_traffic = drop_untagged_traffic
      @type = type
      @vlan = vlan
      @allowed_vlans = allowed_vlans
      @access_policy = access_policy
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash['enabled']
      drop_untagged_traffic = hash['dropUntaggedTraffic']
      type = hash['type']
      vlan = hash['vlan']
      allowed_vlans = hash['allowedVlans']
      access_policy = hash['accessPolicy']

      # Create object from extracted values.
      UpdateNetworkAppliancePortModel.new(enabled,
                                          drop_untagged_traffic,
                                          type,
                                          vlan,
                                          allowed_vlans,
                                          access_policy)
    end
  end
end

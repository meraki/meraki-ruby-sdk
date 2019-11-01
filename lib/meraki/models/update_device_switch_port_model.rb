# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateDeviceSwitchPortModel Model.
  class UpdateDeviceSwitchPortModel < BaseModel
    # The name of the switch port
    # @return [String]
    attr_accessor :name

    # The tags of the switch port
    # @return [String]
    attr_accessor :tags

    # The status of the switch port
    # @return [Boolean]
    attr_accessor :enabled

    # The type of the switch port ("access" or "trunk")
    # @return [String]
    attr_accessor :type

    # The VLAN of the switch port. A null value will clear the value set for
    # trunk ports.
    # @return [Integer]
    attr_accessor :vlan

    # The voice VLAN of the switch port. Only applicable to access ports.
    # @return [Integer]
    attr_accessor :voice_vlan

    # The VLANs allowed on the switch port. Only applicable to trunk ports.
    # @return [String]
    attr_accessor :allowed_vlans

    # The PoE status of the switch port
    # @return [Boolean]
    attr_accessor :poe_enabled

    # The isolation status of the switch port
    # @return [Boolean]
    attr_accessor :isolation_enabled

    # The rapid spanning tree protocol status
    # @return [Boolean]
    attr_accessor :rstp_enabled

    # The state of the STP guard ("disabled", "Root guard", "BPDU guard", "Loop
    # guard")
    # @return [String]
    attr_accessor :stp_guard

    # The number of the access policy of the switch port. Only applicable to
    # access ports.
    # @return [Integer]
    attr_accessor :access_policy_number

    # The link speed for the switch port
    # @return [String]
    attr_accessor :link_negotiation

    # The ID of the port schedule. A value of null will clear the port schedule.
    # @return [String]
    attr_accessor :port_schedule_id

    # The action to take when Unidirectional Link is detected (Alert only,
    # Enforce). Default configuration is Alert only.
    # @return [UdldEnum]
    attr_accessor :udld

    # Only devices with MAC addresses specified in this list will have access to
    # this port. Up to 20 MAC addresses can be defined. To disable MAC
    # whitelist, set accessPolicyNumber to null.
    # @return [List of String]
    attr_accessor :mac_whitelist

    # The initial list of MAC addresses for sticky Mac whitelist. To reset
    # Sticky MAC whitelist, set accessPolicyNumber to null.
    # @return [List of String]
    attr_accessor :sticky_mac_whitelist

    # The maximum number of MAC addresses for sticky MAC whitelist.
    # @return [Integer]
    attr_accessor :sticky_mac_whitelist_limit

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['tags'] = 'tags'
      @_hash['enabled'] = 'enabled'
      @_hash['type'] = 'type'
      @_hash['vlan'] = 'vlan'
      @_hash['voice_vlan'] = 'voiceVlan'
      @_hash['allowed_vlans'] = 'allowedVlans'
      @_hash['poe_enabled'] = 'poeEnabled'
      @_hash['isolation_enabled'] = 'isolationEnabled'
      @_hash['rstp_enabled'] = 'rstpEnabled'
      @_hash['stp_guard'] = 'stpGuard'
      @_hash['access_policy_number'] = 'accessPolicyNumber'
      @_hash['link_negotiation'] = 'linkNegotiation'
      @_hash['port_schedule_id'] = 'portScheduleId'
      @_hash['udld'] = 'udld'
      @_hash['mac_whitelist'] = 'macWhitelist'
      @_hash['sticky_mac_whitelist'] = 'stickyMacWhitelist'
      @_hash['sticky_mac_whitelist_limit'] = 'stickyMacWhitelistLimit'
      @_hash
    end

    def initialize(name = nil,
                   tags = nil,
                   enabled = nil,
                   type = nil,
                   vlan = nil,
                   voice_vlan = nil,
                   allowed_vlans = nil,
                   poe_enabled = nil,
                   isolation_enabled = nil,
                   rstp_enabled = nil,
                   stp_guard = nil,
                   access_policy_number = nil,
                   link_negotiation = nil,
                   port_schedule_id = nil,
                   udld = nil,
                   mac_whitelist = nil,
                   sticky_mac_whitelist = nil,
                   sticky_mac_whitelist_limit = nil)
      @name = name
      @tags = tags
      @enabled = enabled
      @type = type
      @vlan = vlan
      @voice_vlan = voice_vlan
      @allowed_vlans = allowed_vlans
      @poe_enabled = poe_enabled
      @isolation_enabled = isolation_enabled
      @rstp_enabled = rstp_enabled
      @stp_guard = stp_guard
      @access_policy_number = access_policy_number
      @link_negotiation = link_negotiation
      @port_schedule_id = port_schedule_id
      @udld = udld
      @mac_whitelist = mac_whitelist
      @sticky_mac_whitelist = sticky_mac_whitelist
      @sticky_mac_whitelist_limit = sticky_mac_whitelist_limit
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      tags = hash['tags']
      enabled = hash['enabled']
      type = hash['type']
      vlan = hash['vlan']
      voice_vlan = hash['voiceVlan']
      allowed_vlans = hash['allowedVlans']
      poe_enabled = hash['poeEnabled']
      isolation_enabled = hash['isolationEnabled']
      rstp_enabled = hash['rstpEnabled']
      stp_guard = hash['stpGuard']
      access_policy_number = hash['accessPolicyNumber']
      link_negotiation = hash['linkNegotiation']
      port_schedule_id = hash['portScheduleId']
      udld = hash['udld']
      mac_whitelist = hash['macWhitelist']
      sticky_mac_whitelist = hash['stickyMacWhitelist']
      sticky_mac_whitelist_limit = hash['stickyMacWhitelistLimit']

      # Create object from extracted values.
      UpdateDeviceSwitchPortModel.new(name,
                                      tags,
                                      enabled,
                                      type,
                                      vlan,
                                      voice_vlan,
                                      allowed_vlans,
                                      poe_enabled,
                                      isolation_enabled,
                                      rstp_enabled,
                                      stp_guard,
                                      access_policy_number,
                                      link_negotiation,
                                      port_schedule_id,
                                      udld,
                                      mac_whitelist,
                                      sticky_mac_whitelist,
                                      sticky_mac_whitelist_limit)
    end
  end
end

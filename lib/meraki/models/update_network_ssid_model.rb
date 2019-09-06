# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSsidModel Model.
  class UpdateNetworkSsidModel < BaseModel
    # The name of an SSID
    # @return [String]
    attr_accessor :name

    # Whether or not an SSID is enabled
    # @return [Boolean]
    attr_accessor :enabled

    # The association control method for the SSID ('open', 'psk',
    # 'open-with-radius', '8021x-meraki' or '8021x-radius')
    # @return [AuthModeEnum]
    attr_accessor :auth_mode

    # The psk encryption mode for the SSID ('wpa', 'wep' or 'wpa-eap')
    # @return [EncryptionModeEnum]
    attr_accessor :encryption_mode

    # The passkey for the SSID. This param is only valid if the authMode is
    # 'psk'
    # @return [String]
    attr_accessor :psk

    # The types of WPA encryption. ('WPA1 and WPA2' or 'WPA2 only')
    # @return [WpaEncryptionModeEnum]
    attr_accessor :wpa_encryption_mode

    # The type of splash page for the SSID ('None', 'Click-through splash page',
    # 'Billing', 'Password-protected with Meraki RADIUS', 'Password-protected
    # with custom RADIUS', 'Password-protected with Active Directory',
    # 'Password-protected with LDAP', 'SMS authentication', 'Systems Manager
    # Sentry', 'Facebook Wi-Fi', 'Google OAuth' or 'Sponsored guest'). This
    # attribute is not supported for template children.
    # @return [SplashPageEnum]
    attr_accessor :splash_page

    # The RADIUS 802.1x servers to be used for authentication. This param is
    # only valid if the authMode is 'open-with-radius' or '8021x-radius'
    # @return [List of RadiusServerModel]
    attr_accessor :radius_servers

    # If true, Meraki devices will act as a RADIUS Dynamic Authorization Server
    # and will respond to RADIUS Change-of-Authorization and Disconnect messages
    # sent by the RADIUS server.
    # @return [Boolean]
    attr_accessor :radius_coa_enabled

    # This policy determines how authentication requests should be handled in
    # the event that all of the configured RADIUS servers are unreachable ('Deny
    # access' or 'Allow access')
    # @return [RadiusFailoverPolicyEnum]
    attr_accessor :radius_failover_policy

    # This policy determines which RADIUS server will be contacted first in an
    # authentication attempt and the ordering of any necessary retry attempts
    # ('Strict priority order' or 'Round robin')
    # @return [RadiusLoadBalancingPolicyEnum]
    attr_accessor :radius_load_balancing_policy

    # Whether or not RADIUS accounting is enabled. This param is only valid if
    # the authMode is 'open-with-radius' or '8021x-radius'
    # @return [Boolean]
    attr_accessor :radius_accounting_enabled

    # The RADIUS accounting 802.1x servers to be used for authentication. This
    # param is only valid if the authMode is 'open-with-radius' or
    # '8021x-radius' and radiusAccountingEnabled is 'true'
    # @return [List of RadiusAccountingServerModel]
    attr_accessor :radius_accounting_servers

    # The client IP assignment mode ('NAT mode', 'Bridge mode', 'Layer 3
    # roaming', 'Layer 3 roaming with a concentrator' or 'VPN')
    # @return [IpAssignmentModeEnum]
    attr_accessor :ip_assignment_mode

    # Direct trafic to use specific VLANs. This param is only valid with 'Bridge
    # mode' and 'Layer 3 roaming'
    # @return [Boolean]
    attr_accessor :use_vlan_tagging

    # The concentrator to use for 'Layer 3 roaming with a concentrator' or
    # 'VPN'.
    # @return [String]
    attr_accessor :concentrator_network_id

    # The VLAN ID used for VLAN tagging. This param is only valid with 'Layer 3
    # roaming with a concentrator' and 'VPN'
    # @return [Integer]
    attr_accessor :vlan_id

    # The default VLAN ID used for 'all other APs'. This param is only valid
    # with 'Bridge mode' and 'Layer 3 roaming'
    # @return [Integer]
    attr_accessor :default_vlan_id

    # The list of tags and VLAN IDs used for VLAN tagging. This param is only
    # valid with 'Bridge mode', 'Layer 3 roaming'
    # @return [List of ApTagsAndVlanIdModel]
    attr_accessor :ap_tags_and_vlan_ids

    # Allow access to a configurable list of IP ranges, which users may access
    # prior to sign-on.
    # @return [Boolean]
    attr_accessor :walled_garden_enabled

    # Specify your walled garden by entering space-separated addresses, ranges
    # using CIDR notation, domain names, and domain wildcards (e.g.
    # 192.168.1.1/24 192.168.37.10/32 www.yahoo.com *.google.com). Meraki's
    # splash page is automatically included in your walled garden.
    # @return [String]
    attr_accessor :walled_garden_ranges

    # The minimum bitrate in Mbps. ('1', '2', '5.5', '6', '9', '11', '12', '18',
    # '24', '36', '48' or '54')
    # @return [Float]
    attr_accessor :min_bitrate

    # The client-serving radio frequencies. ('Dual band operation', '5 GHz band
    # only' or 'Dual band operation with Band Steering')
    # @return [BandSelectionEnum]
    attr_accessor :band_selection

    # The upload bandwidth limit in Kbps. (0 represents no limit.)
    # @return [Integer]
    attr_accessor :per_client_bandwidth_limit_up

    # The download bandwidth limit in Kbps. (0 represents no limit.)
    # @return [Integer]
    attr_accessor :per_client_bandwidth_limit_down

    # Boolean indicating whether Layer 2 LAN isolation should be enabled or
    # disabled. Only configurable on SSIDs in bridge mode.
    # @return [Boolean]
    attr_accessor :lan_isolation_enabled

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['enabled'] = 'enabled'
      @_hash['auth_mode'] = 'authMode'
      @_hash['encryption_mode'] = 'encryptionMode'
      @_hash['psk'] = 'psk'
      @_hash['wpa_encryption_mode'] = 'wpaEncryptionMode'
      @_hash['splash_page'] = 'splashPage'
      @_hash['radius_servers'] = 'radiusServers'
      @_hash['radius_coa_enabled'] = 'radiusCoaEnabled'
      @_hash['radius_failover_policy'] = 'radiusFailoverPolicy'
      @_hash['radius_load_balancing_policy'] = 'radiusLoadBalancingPolicy'
      @_hash['radius_accounting_enabled'] = 'radiusAccountingEnabled'
      @_hash['radius_accounting_servers'] = 'radiusAccountingServers'
      @_hash['ip_assignment_mode'] = 'ipAssignmentMode'
      @_hash['use_vlan_tagging'] = 'useVlanTagging'
      @_hash['concentrator_network_id'] = 'concentratorNetworkId'
      @_hash['vlan_id'] = 'vlanId'
      @_hash['default_vlan_id'] = 'defaultVlanId'
      @_hash['ap_tags_and_vlan_ids'] = 'apTagsAndVlanIds'
      @_hash['walled_garden_enabled'] = 'walledGardenEnabled'
      @_hash['walled_garden_ranges'] = 'walledGardenRanges'
      @_hash['min_bitrate'] = 'minBitrate'
      @_hash['band_selection'] = 'bandSelection'
      @_hash['per_client_bandwidth_limit_up'] = 'perClientBandwidthLimitUp'
      @_hash['per_client_bandwidth_limit_down'] =
        'perClientBandwidthLimitDown'
      @_hash['lan_isolation_enabled'] = 'lanIsolationEnabled'
      @_hash
    end

    def initialize(name = nil,
                   enabled = nil,
                   auth_mode = nil,
                   encryption_mode = nil,
                   psk = nil,
                   wpa_encryption_mode = nil,
                   splash_page = nil,
                   radius_servers = nil,
                   radius_coa_enabled = nil,
                   radius_failover_policy = nil,
                   radius_load_balancing_policy = nil,
                   radius_accounting_enabled = nil,
                   radius_accounting_servers = nil,
                   ip_assignment_mode = nil,
                   use_vlan_tagging = nil,
                   concentrator_network_id = nil,
                   vlan_id = nil,
                   default_vlan_id = nil,
                   ap_tags_and_vlan_ids = nil,
                   walled_garden_enabled = nil,
                   walled_garden_ranges = nil,
                   min_bitrate = nil,
                   band_selection = nil,
                   per_client_bandwidth_limit_up = nil,
                   per_client_bandwidth_limit_down = nil,
                   lan_isolation_enabled = nil)
      @name = name
      @enabled = enabled
      @auth_mode = auth_mode
      @encryption_mode = encryption_mode
      @psk = psk
      @wpa_encryption_mode = wpa_encryption_mode
      @splash_page = splash_page
      @radius_servers = radius_servers
      @radius_coa_enabled = radius_coa_enabled
      @radius_failover_policy = radius_failover_policy
      @radius_load_balancing_policy = radius_load_balancing_policy
      @radius_accounting_enabled = radius_accounting_enabled
      @radius_accounting_servers = radius_accounting_servers
      @ip_assignment_mode = ip_assignment_mode
      @use_vlan_tagging = use_vlan_tagging
      @concentrator_network_id = concentrator_network_id
      @vlan_id = vlan_id
      @default_vlan_id = default_vlan_id
      @ap_tags_and_vlan_ids = ap_tags_and_vlan_ids
      @walled_garden_enabled = walled_garden_enabled
      @walled_garden_ranges = walled_garden_ranges
      @min_bitrate = min_bitrate
      @band_selection = band_selection
      @per_client_bandwidth_limit_up = per_client_bandwidth_limit_up
      @per_client_bandwidth_limit_down = per_client_bandwidth_limit_down
      @lan_isolation_enabled = lan_isolation_enabled
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      enabled = hash['enabled']
      auth_mode = hash['authMode']
      encryption_mode = hash['encryptionMode']
      psk = hash['psk']
      wpa_encryption_mode = hash['wpaEncryptionMode']
      splash_page = hash['splashPage']
      # Parameter is an array, so we need to iterate through it
      radius_servers = nil
      unless hash['radiusServers'].nil?
        radius_servers = []
        hash['radiusServers'].each do |structure|
          radius_servers << (RadiusServerModel.from_hash(structure) if structure)
        end
      end
      radius_coa_enabled = hash['radiusCoaEnabled']
      radius_failover_policy = hash['radiusFailoverPolicy']
      radius_load_balancing_policy = hash['radiusLoadBalancingPolicy']
      radius_accounting_enabled = hash['radiusAccountingEnabled']
      # Parameter is an array, so we need to iterate through it
      radius_accounting_servers = nil
      unless hash['radiusAccountingServers'].nil?
        radius_accounting_servers = []
        hash['radiusAccountingServers'].each do |structure|
          radius_accounting_servers << (RadiusAccountingServerModel.from_hash(structure) if structure)
        end
      end
      ip_assignment_mode = hash['ipAssignmentMode']
      use_vlan_tagging = hash['useVlanTagging']
      concentrator_network_id = hash['concentratorNetworkId']
      vlan_id = hash['vlanId']
      default_vlan_id = hash['defaultVlanId']
      # Parameter is an array, so we need to iterate through it
      ap_tags_and_vlan_ids = nil
      unless hash['apTagsAndVlanIds'].nil?
        ap_tags_and_vlan_ids = []
        hash['apTagsAndVlanIds'].each do |structure|
          ap_tags_and_vlan_ids << (ApTagsAndVlanIdModel.from_hash(structure) if structure)
        end
      end
      walled_garden_enabled = hash['walledGardenEnabled']
      walled_garden_ranges = hash['walledGardenRanges']
      min_bitrate = hash['minBitrate']
      band_selection = hash['bandSelection']
      per_client_bandwidth_limit_up = hash['perClientBandwidthLimitUp']
      per_client_bandwidth_limit_down = hash['perClientBandwidthLimitDown']
      lan_isolation_enabled = hash['lanIsolationEnabled']

      # Create object from extracted values.
      UpdateNetworkSsidModel.new(name,
                                 enabled,
                                 auth_mode,
                                 encryption_mode,
                                 psk,
                                 wpa_encryption_mode,
                                 splash_page,
                                 radius_servers,
                                 radius_coa_enabled,
                                 radius_failover_policy,
                                 radius_load_balancing_policy,
                                 radius_accounting_enabled,
                                 radius_accounting_servers,
                                 ip_assignment_mode,
                                 use_vlan_tagging,
                                 concentrator_network_id,
                                 vlan_id,
                                 default_vlan_id,
                                 ap_tags_and_vlan_ids,
                                 walled_garden_enabled,
                                 walled_garden_ranges,
                                 min_bitrate,
                                 band_selection,
                                 per_client_bandwidth_limit_up,
                                 per_client_bandwidth_limit_down,
                                 lan_isolation_enabled)
    end
  end
end

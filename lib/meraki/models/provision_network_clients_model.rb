# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # ProvisionNetworkClientsModel Model.
  class ProvisionNetworkClientsModel < BaseModel
    # The MAC address of the client. Required.
    # @return [String]
    attr_accessor :mac

    # The display name for the client. Optional. Limited to 255 bytes.
    # @return [String]
    attr_accessor :name

    # The policy to apply to the specified client. Can be 'Group policy',
    # 'Whitelisted', 'Blocked', 'Per connection' or 'Normal'. Required.
    # @return [DevicePolicyEnum]
    attr_accessor :device_policy

    # The ID of the desired group policy to apply to the client. Required if
    # 'devicePolicy' is set to "Group policy". Otherwise this is ignored.
    # @return [String]
    attr_accessor :group_policy_id

    # An object, describing what the policy-connection association is for the
    # security appliance. (Only relevant if the security appliance is actually
    # within the network)
    # @return [PoliciesBySecurityApplianceModel]
    attr_accessor :policies_by_security_appliance

    # An object, describing the policy-connection associations for each active
    # SSID within the network. Keys should be the number of enabled SSIDs,
    # mapping to an object describing the client's policy
    # @return [Array<String, GeneratedObjectModel>]
    attr_accessor :policies_by_ssid

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mac'] = 'mac'
      @_hash['name'] = 'name'
      @_hash['device_policy'] = 'devicePolicy'
      @_hash['group_policy_id'] = 'groupPolicyId'
      @_hash['policies_by_security_appliance'] = 'policiesBySecurityAppliance'
      @_hash['policies_by_ssid'] = 'policiesBySsid'
      @_hash
    end

    def initialize(mac = nil,
                   device_policy = nil,
                   name = nil,
                   group_policy_id = nil,
                   policies_by_security_appliance = nil,
                   policies_by_ssid = nil)
      @mac = mac
      @name = name
      @device_policy = device_policy
      @group_policy_id = group_policy_id
      @policies_by_security_appliance = policies_by_security_appliance
      @policies_by_ssid = policies_by_ssid
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      mac = hash['mac']
      device_policy = hash['devicePolicy']
      name = hash['name']
      group_policy_id = hash['groupPolicyId']
      if hash['policiesBySecurityAppliance']
        policies_by_security_appliance = PoliciesBySecurityApplianceModel.from_hash(hash['policiesBySecurityAppliance'])
      end
      if hash['policiesBySsid']
        policies_by_ssid = GeneratedObjectModel.from_hash(hash['policiesBySsid'])
      end

      # Create object from extracted values.
      ProvisionNetworkClientsModel.new(mac,
                                       device_policy,
                                       name,
                                       group_policy_id,
                                       policies_by_security_appliance,
                                       policies_by_ssid)
    end
  end
end

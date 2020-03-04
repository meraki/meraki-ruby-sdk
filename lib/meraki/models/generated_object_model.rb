# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # The number for the SSID
  class GeneratedObjectModel < BaseModel
    # The policy to apply to the specified client. Can be 'Whitelisted',
    # 'Blocked', 'Normal' or 'Group policy'. Required.
    # @return [DevicePolicy2Enum]
    attr_accessor :device_policy

    # The ID of the desired group policy to apply to the client. Required if
    # 'devicePolicy' is set to "Group policy". Otherwise this is ignored.
    # @return [String]
    attr_accessor :group_policy_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['device_policy'] = 'devicePolicy'
      @_hash['group_policy_id'] = 'groupPolicyId'
      @_hash
    end

    def initialize(device_policy = nil,
                   group_policy_id = nil)
      @device_policy = device_policy
      @group_policy_id = group_policy_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      device_policy = hash['devicePolicy']
      group_policy_id = hash['groupPolicyId']

      # Create object from extracted values.
      GeneratedObjectModel.new(device_policy,
                               group_policy_id)
    end
  end
end

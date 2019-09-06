# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkClientPolicyModel Model.
  class UpdateNetworkClientPolicyModel < BaseModel
    # The group policy (Whitelisted, Blocked, Normal, Group policy)
    # @return [String]
    attr_accessor :device_policy

    # [optional] If devicePolicy param is set to 'Group policy' this param is
    # used to specify the group ID.
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
      UpdateNetworkClientPolicyModel.new(device_policy,
                                         group_policy_id)
    end
  end
end

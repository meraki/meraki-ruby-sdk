# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # An object, describing what the policy-connection association is for the
  # security appliance. (Only relevant if the security appliance is actually
  # within the network)
  class PoliciesBySecurityApplianceModel < BaseModel
    # The policy to apply to the specified client. Can be 'Whitelisted',
    # 'Blocked' or 'Normal'. Required.
    # @return [DevicePolicy1Enum]
    attr_accessor :device_policy

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['device_policy'] = 'devicePolicy'
      @_hash
    end

    def initialize(device_policy = nil)
      @device_policy = device_policy
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      device_policy = hash['devicePolicy']

      # Create object from extracted values.
      PoliciesBySecurityApplianceModel.new(device_policy)
    end
  end
end

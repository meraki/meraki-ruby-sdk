# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # The policy to apply to the specified client. Can be 'Whitelisted',
  # 'Blocked', 'Normal' or 'Group policy'. Required.
  class DevicePolicyEnum
    DEVICE_POLICY_ENUM = [
      # TODO: Write general description for WHITELISTED
      WHITELISTED = 'Whitelisted'.freeze,

      # TODO: Write general description for BLOCKED
      BLOCKED = 'Blocked'.freeze,

      # TODO: Write general description for NORMAL
      NORMAL = 'Normal'.freeze,

      # TODO: Write general description for ENUM_GROUP_POLICY
      ENUM_GROUP_POLICY = 'Group policy'.freeze
    ].freeze
  end
end

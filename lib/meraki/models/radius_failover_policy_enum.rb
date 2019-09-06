# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # This policy determines how authentication requests should be handled in the
  # event that all of the configured RADIUS servers are unreachable ('Deny
  # access' or 'Allow access')
  class RadiusFailoverPolicyEnum
    RADIUS_FAILOVER_POLICY_ENUM = [
      # TODO: Write general description for ENUM_DENY_ACCESS
      ENUM_DENY_ACCESS = 'Deny access'.freeze,

      # TODO: Write general description for ENUM_ALLOW_ACCESS
      ENUM_ALLOW_ACCESS = 'Allow access'.freeze
    ].freeze
  end
end

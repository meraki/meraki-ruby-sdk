# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # This policy determines which RADIUS server will be contacted first in an
  # authentication attempt and the ordering of any necessary retry attempts
  # ('Strict priority order' or 'Round robin')
  class RadiusLoadBalancingPolicyEnum
    RADIUS_LOAD_BALANCING_POLICY_ENUM = [
      # TODO: Write general description for ENUM_STRICT_PRIORITY_ORDER
      ENUM_STRICT_PRIORITY_ORDER = 'Strict priority order'.freeze,

      # TODO: Write general description for ENUM_ROUND_ROBIN
      ENUM_ROUND_ROBIN = 'Round robin'.freeze
    ].freeze
  end
end

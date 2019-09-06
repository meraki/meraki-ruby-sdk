# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # A string indicating the rule for which IPs are allowed to use the specified
  # service. Acceptable values are "blocked" (no remote IPs can access the
  # service), "restricted" (only whitelisted IPs can access the service), and
  # "unrestriced" (any remote IP can access the service). This field is required
  class AccessEnum
    ACCESS_ENUM = [
      # TODO: Write general description for BLOCKED
      BLOCKED = 'blocked'.freeze,

      # TODO: Write general description for RESTRICTED
      RESTRICTED = 'restricted'.freeze,

      # TODO: Write general description for UNRESTRICTED
      UNRESTRICTED = 'unrestricted'.freeze
    ].freeze
  end
end

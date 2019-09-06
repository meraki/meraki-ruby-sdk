# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

# CohesityManagementSdk
module Meraki
  # All configuration including auth info and base URI for the API access
  # are configured in this class.
  class Configuration
    # The base Uri for API calls
    @base_uri = 'https://api.meraki.com/api/v0'

    @x_cisco_meraki_api_key = 'TODO: Replace'

    # The attribute accessors for public properties.
    class << self
      attr_accessor :array_serialization
      attr_accessor :base_uri
      attr_accessor :x_cisco_meraki_api_key
    end
  end
end

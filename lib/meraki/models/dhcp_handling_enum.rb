# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # The appliance's handling of DHCP requests on this VLAN. One of: 'Run a DHCP
  # server', 'Relay DHCP to another server' or 'Do not respond to DHCP requests'
  class DhcpHandlingEnum
    DHCP_HANDLING_ENUM = [
      # TODO: Write general description for ENUM_RUN_A_DHCP_SERVER
      ENUM_RUN_A_DHCP_SERVER = 'Run a DHCP server'.freeze,

      # TODO: Write general description for ENUM_RELAY_DHCP_TO_ANOTHER_SERVER
      ENUM_RELAY_DHCP_TO_ANOTHER_SERVER = 'Relay DHCP to another server'.freeze,

      # TODO: Write general description for ENUM_DO_NOT_RESPOND_TO_DHCP_REQUESTS
      ENUM_DO_NOT_RESPOND_TO_DHCP_REQUESTS = 'Do not respond to DHCP requests'.freeze
    ].freeze
  end
end

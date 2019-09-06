# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Whether clients bound to your policy will bypass splash authorization or
  # behave according to the network's rules. Can be one of 'network default' or
  # 'bypass'. Only available if your network has a wireless configuration.
  class SplashAuthSettingsEnum
    SPLASH_AUTH_SETTINGS_ENUM = [
      # TODO: Write general description for ENUM_NETWORK_DEFAULT
      ENUM_NETWORK_DEFAULT = 'network default'.freeze,

      # TODO: Write general description for BYPASS
      BYPASS = 'bypass'.freeze
    ].freeze
  end
end

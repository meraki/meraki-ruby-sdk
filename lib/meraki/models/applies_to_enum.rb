# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Which kinds of admins this policy applies to. Can be one of 'All
  # organization admins', 'All enterprise admins', 'All network admins', 'All
  # admins of networks...', 'All admins of networks tagged...', 'Specific
  # admins...', 'All admins' or 'All SAML admins'.
  class AppliesToEnum
    APPLIES_TO_ENUM = [
      # TODO: Write general description for ENUM_ALL_ORGANIZATION_ADMINS
      ENUM_ALL_ORGANIZATION_ADMINS = 'All organization admins'.freeze,

      # TODO: Write general description for ENUM_ALL_ENTERPRISE_ADMINS
      ENUM_ALL_ENTERPRISE_ADMINS = 'All enterprise admins'.freeze,

      # TODO: Write general description for ENUM_ALL_NETWORK_ADMINS
      ENUM_ALL_NETWORK_ADMINS = 'All network admins'.freeze,

      # TODO: Write general description for ENUM_ALL_ADMINS_OF_NETWORKS
      ENUM_ALL_ADMINS_OF_NETWORKS = 'All admins of networks...'.freeze,

      # TODO: Write general description for ENUM_ALL_ADMINS_OF_NETWORKS_TAGGED
      ENUM_ALL_ADMINS_OF_NETWORKS_TAGGED = 'All admins of networks tagged...'.freeze,

      # TODO: Write general description for ENUM_SPECIFIC_ADMINS
      ENUM_SPECIFIC_ADMINS = 'Specific admins...'.freeze,

      # TODO: Write general description for ENUM_ALL_ADMINS
      ENUM_ALL_ADMINS = 'All admins'.freeze,

      # TODO: Write general description for ENUM_ALL_SAML_ADMINS
      ENUM_ALL_SAML_ADMINS = 'All SAML admins'.freeze
    ].freeze
  end
end

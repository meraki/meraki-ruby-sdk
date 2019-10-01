# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Settings for describing which kinds of admins this policy applies to.
  class AdminSettingsModel < BaseModel
    # Which kinds of admins this policy applies to. Can be one of 'All
    # organization admins', 'All enterprise admins', 'All network admins', 'All
    # admins of networks...', 'All admins of networks tagged...', 'Specific
    # admins...', 'All admins' or 'All SAML admins'.
    # @return [AppliesToEnum]
    attr_accessor :applies_to

    # If 'appliesTo' is set to one of 'Specific admins...', 'All admins of
    # networks...' or 'All admins of networks tagged...', then you must specify
    # this 'values' property to provide the set of
    #     entities to apply the branding policy to. For 'Specific admins...',
    # specify an array of admin IDs. For 'All admins of
    #     networks...', specify an array of network IDs and/or configuration
    # template IDs. For 'All admins of networks tagged...',
    #     specify an array of tag names.
    # @return [List of String]
    attr_accessor :values

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['applies_to'] = 'appliesTo'
      @_hash['values'] = 'values'
      @_hash
    end

    def initialize(applies_to = nil,
                   values = nil)
      @applies_to = applies_to
      @values = values
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      applies_to = hash['appliesTo']
      values = hash['values']

      # Create object from extracted values.
      AdminSettingsModel.new(applies_to,
                             values)
    end
  end
end

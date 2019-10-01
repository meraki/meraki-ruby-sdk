# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateOrganizationBrandingPolicyModel Model.
  class CreateOrganizationBrandingPolicyModel < BaseModel
    # Name of the Dashboard branding policy.
    # @return [String]
    attr_accessor :name

    # Boolean indicating whether this policy is enabled.
    # @return [Boolean]
    attr_accessor :enabled

    # Settings for describing which kinds of admins this policy applies to.
    # @return [AdminSettingsModel]
    attr_accessor :admin_settings

    # Settings for describing the modifications to various Help page features.
    # Each property in this object accepts one of
    #     'default or inherit' (do not modify functionality), 'hide' (remove the
    # section from Dashboard), or 'show' (always show
    #     the section on Dashboard). Some properties in this object also accept
    # custom HTML used to replace the section on
    #     Dashboard; see the documentation for each property to see the allowed
    # values.
    #  Each property defaults to 'default or inherit' when not provided.
    # @return [HelpSettingsModel]
    attr_accessor :help_settings

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['enabled'] = 'enabled'
      @_hash['admin_settings'] = 'adminSettings'
      @_hash['help_settings'] = 'helpSettings'
      @_hash
    end

    def initialize(name = nil,
                   enabled = nil,
                   admin_settings = nil,
                   help_settings = nil)
      @name = name
      @enabled = enabled
      @admin_settings = admin_settings
      @help_settings = help_settings
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      enabled = hash['enabled']
      admin_settings = AdminSettingsModel.from_hash(hash['adminSettings']) if
        hash['adminSettings']
      help_settings = HelpSettingsModel.from_hash(hash['helpSettings']) if
        hash['helpSettings']

      # Create object from extracted values.
      CreateOrganizationBrandingPolicyModel.new(name,
                                                enabled,
                                                admin_settings,
                                                help_settings)
    end
  end
end

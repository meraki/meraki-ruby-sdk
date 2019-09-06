# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSmProfileUmbrellaModel Model.
  class UpdateNetworkSmProfileUmbrellaModel < BaseModel
    # optional: A new name for the profile
    # @return [String]
    attr_accessor :name

    # optional: A new scope for the profile (one of all, none, withAny, withAll,
    # withoutAny, or withoutAll) and a set of tags of the devices to be assigned
    # @return [String]
    attr_accessor :scope

    # optional: The bundle ID of the application
    # @return [String]
    attr_accessor :app_bundle_identifier

    # optional: The bundle ID of the provider
    # @return [String]
    attr_accessor :provider_bundle_identifier

    # optional: The specific ProviderConfiguration to be passed to the filtering
    # framework, in the form of an array of objects (as JSON).
    # @return [List of ProviderConfigurationModel]
    attr_accessor :provider_configuration

    # optional: Whether the certificate should be attached to this profile (one
    # of true, false)
    # @return [Boolean]
    attr_accessor :uses_cert

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['scope'] = 'scope'
      @_hash['app_bundle_identifier'] = 'AppBundleIdentifier'
      @_hash['provider_bundle_identifier'] = 'ProviderBundleIdentifier'
      @_hash['provider_configuration'] = 'ProviderConfiguration'
      @_hash['uses_cert'] = 'usesCert'
      @_hash
    end

    def initialize(name = nil,
                   scope = nil,
                   app_bundle_identifier = nil,
                   provider_bundle_identifier = nil,
                   provider_configuration = nil,
                   uses_cert = nil)
      @name = name
      @scope = scope
      @app_bundle_identifier = app_bundle_identifier
      @provider_bundle_identifier = provider_bundle_identifier
      @provider_configuration = provider_configuration
      @uses_cert = uses_cert
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      scope = hash['scope']
      app_bundle_identifier = hash['AppBundleIdentifier']
      provider_bundle_identifier = hash['ProviderBundleIdentifier']
      # Parameter is an array, so we need to iterate through it
      provider_configuration = nil
      unless hash['ProviderConfiguration'].nil?
        provider_configuration = []
        hash['ProviderConfiguration'].each do |structure|
          provider_configuration << (ProviderConfigurationModel.from_hash(structure) if structure)
        end
      end
      uses_cert = hash['usesCert']

      # Create object from extracted values.
      UpdateNetworkSmProfileUmbrellaModel.new(name,
                                              scope,
                                              app_bundle_identifier,
                                              provider_bundle_identifier,
                                              provider_configuration,
                                              uses_cert)
    end
  end
end

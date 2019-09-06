# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # AddNetworkSmProfileUmbrellaModel Model.
  class AddNetworkSmProfileUmbrellaModel < BaseModel
    # The bundle ID of the application, defaults to com.cisco.ciscosecurity.app
    # @return [String]
    attr_accessor :app_bundle_identifier

    # The bundle ID of the provider, defaults to
    # com.cisco.ciscosecurity.app.CiscoUmbrella
    # @return [String]
    attr_accessor :provider_bundle_identifier

    # The specific ProviderConfiguration to be passed to the filtering
    # framework, in the form of an array of objects (as JSON).
    # @return [List of ProviderConfigurationModel]
    attr_accessor :provider_configuration

    # Whether the certificate should be attached to this profile (one of true,
    # false). False by default
    # @return [Boolean]
    attr_accessor :uses_cert

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['app_bundle_identifier'] = 'AppBundleIdentifier'
      @_hash['provider_bundle_identifier'] = 'ProviderBundleIdentifier'
      @_hash['provider_configuration'] = 'ProviderConfiguration'
      @_hash['uses_cert'] = 'usesCert'
      @_hash
    end

    def initialize(provider_configuration = nil,
                   app_bundle_identifier = nil,
                   provider_bundle_identifier = nil,
                   uses_cert = nil)
      @app_bundle_identifier = app_bundle_identifier
      @provider_bundle_identifier = provider_bundle_identifier
      @provider_configuration = provider_configuration
      @uses_cert = uses_cert
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      provider_configuration = nil
      unless hash['ProviderConfiguration'].nil?
        provider_configuration = []
        hash['ProviderConfiguration'].each do |structure|
          provider_configuration << (ProviderConfigurationModel.from_hash(structure) if structure)
        end
      end
      app_bundle_identifier = hash['AppBundleIdentifier']
      provider_bundle_identifier = hash['ProviderBundleIdentifier']
      uses_cert = hash['usesCert']

      # Create object from extracted values.
      AddNetworkSmProfileUmbrellaModel.new(provider_configuration,
                                           app_bundle_identifier,
                                           provider_bundle_identifier,
                                           uses_cert)
    end
  end
end

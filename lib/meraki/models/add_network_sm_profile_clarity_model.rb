# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # AddNetworkSmProfileClarityModel Model.
  class AddNetworkSmProfileClarityModel < BaseModel
    # The bundle ID of the application, defaults to com.cisco.ciscosecurity.app
    # @return [String]
    attr_accessor :plugin_bundle_id

    # Whether or not to enable browser traffic filtering (one of true, false).
    # Defaults to true
    # @return [Boolean]
    attr_accessor :filter_browsers

    # Whether or not to enable socket traffic filtering (one of true, false).
    # Defaults to true
    # @return [Boolean]
    attr_accessor :filter_sockets

    # The specific VendorConfig to be passed to the filtering framework, in the
    # form of an array of objects (as JSON).
    # @return [List of VendorConfigModel]
    attr_accessor :vendor_config

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['plugin_bundle_id'] = 'PluginBundleID'
      @_hash['filter_browsers'] = 'FilterBrowsers'
      @_hash['filter_sockets'] = 'FilterSockets'
      @_hash['vendor_config'] = 'VendorConfig'
      @_hash
    end

    def initialize(vendor_config = nil,
                   plugin_bundle_id = nil,
                   filter_browsers = nil,
                   filter_sockets = nil)
      @plugin_bundle_id = plugin_bundle_id
      @filter_browsers = filter_browsers
      @filter_sockets = filter_sockets
      @vendor_config = vendor_config
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      vendor_config = nil
      unless hash['VendorConfig'].nil?
        vendor_config = []
        hash['VendorConfig'].each do |structure|
          vendor_config << (VendorConfigModel.from_hash(structure) if structure)
        end
      end
      plugin_bundle_id = hash['PluginBundleID']
      filter_browsers = hash['FilterBrowsers']
      filter_sockets = hash['FilterSockets']

      # Create object from extracted values.
      AddNetworkSmProfileClarityModel.new(vendor_config,
                                          plugin_bundle_id,
                                          filter_browsers,
                                          filter_sockets)
    end
  end
end

# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateNetworkWirelessRfProfileModel Model.
  class CreateNetworkWirelessRfProfileModel < BaseModel
    # The name of the new profile. Must be unique. This param is required on
    # creation.
    # @return [String]
    attr_accessor :name

    # Steers client to best available access point. Can be either true or false.
    # Defaults to true.
    # @return [Boolean]
    attr_accessor :client_balancing_enabled

    # Minimum bitrate can be set to either 'band' or 'ssid'. Defaults to band.
    # @return [MinBitrateTypeEnum]
    attr_accessor :min_bitrate_type

    # Band selection can be set to either 'ssid' or 'ap'. This param is required
    # on creation.
    # @return [BandSelectionTypeEnum]
    attr_accessor :band_selection_type

    # Settings that will be enabled if selectionType is set to 'ap'.
    # @return [ApBandSettingsModel]
    attr_accessor :ap_band_settings

    # Settings related to 2.4Ghz band
    # @return [TwoFourGhzSettingsModel]
    attr_accessor :two_four_ghz_settings

    # Settings related to 5Ghz band
    # @return [FiveGhzSettingsModel]
    attr_accessor :five_ghz_settings

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['client_balancing_enabled'] = 'clientBalancingEnabled'
      @_hash['min_bitrate_type'] = 'minBitrateType'
      @_hash['band_selection_type'] = 'bandSelectionType'
      @_hash['ap_band_settings'] = 'apBandSettings'
      @_hash['two_four_ghz_settings'] = 'twoFourGhzSettings'
      @_hash['five_ghz_settings'] = 'fiveGhzSettings'
      @_hash
    end

    def initialize(name = nil,
                   band_selection_type = nil,
                   client_balancing_enabled = nil,
                   min_bitrate_type = nil,
                   ap_band_settings = nil,
                   two_four_ghz_settings = nil,
                   five_ghz_settings = nil)
      @name = name
      @client_balancing_enabled = client_balancing_enabled
      @min_bitrate_type = min_bitrate_type
      @band_selection_type = band_selection_type
      @ap_band_settings = ap_band_settings
      @two_four_ghz_settings = two_four_ghz_settings
      @five_ghz_settings = five_ghz_settings
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      band_selection_type = hash['bandSelectionType']
      client_balancing_enabled = hash['clientBalancingEnabled']
      min_bitrate_type = hash['minBitrateType']
      if hash['apBandSettings']
        ap_band_settings = ApBandSettingsModel.from_hash(hash['apBandSettings'])
      end
      if hash['twoFourGhzSettings']
        two_four_ghz_settings = TwoFourGhzSettingsModel.from_hash(hash['twoFourGhzSettings'])
      end
      if hash['fiveGhzSettings']
        five_ghz_settings = FiveGhzSettingsModel.from_hash(hash['fiveGhzSettings'])
      end

      # Create object from extracted values.
      CreateNetworkWirelessRfProfileModel.new(name,
                                              band_selection_type,
                                              client_balancing_enabled,
                                              min_bitrate_type,
                                              ap_band_settings,
                                              two_four_ghz_settings,
                                              five_ghz_settings)
    end
  end
end

# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkWirelessRfProfileModel Model.
  class UpdateNetworkWirelessRfProfileModel < BaseModel
    # The name of the new profile. Must be unique.
    # @return [String]
    attr_accessor :name

    # Steers client to best available access point. Can be either true or false.
    # @return [Boolean]
    attr_accessor :client_balancing_enabled

    # Minimum bitrate can be set to either 'band' or 'ssid'.
    # @return [MinBitrateType1Enum]
    attr_accessor :min_bitrate_type

    # Band selection can be set to either 'ssid' or 'ap'.
    # @return [BandSelectionType1Enum]
    attr_accessor :band_selection_type

    # Settings that will be enabled if selectionType is set to 'ap'.
    # @return [ApBandSettings1Model]
    attr_accessor :ap_band_settings

    # Settings related to 2.4Ghz band
    # @return [TwoFourGhzSettings1Model]
    attr_accessor :two_four_ghz_settings

    # Settings related to 5Ghz band
    # @return [FiveGhzSettings1Model]
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
                   client_balancing_enabled = nil,
                   min_bitrate_type = nil,
                   band_selection_type = nil,
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
      client_balancing_enabled = hash['clientBalancingEnabled']
      min_bitrate_type = hash['minBitrateType']
      band_selection_type = hash['bandSelectionType']
      if hash['apBandSettings']
        ap_band_settings = ApBandSettings1Model.from_hash(hash['apBandSettings'])
      end
      if hash['twoFourGhzSettings']
        two_four_ghz_settings = TwoFourGhzSettings1Model.from_hash(hash['twoFourGhzSettings'])
      end
      if hash['fiveGhzSettings']
        five_ghz_settings = FiveGhzSettings1Model.from_hash(hash['fiveGhzSettings'])
      end

      # Create object from extracted values.
      UpdateNetworkWirelessRfProfileModel.new(name,
                                              client_balancing_enabled,
                                              min_bitrate_type,
                                              band_selection_type,
                                              ap_band_settings,
                                              two_four_ghz_settings,
                                              five_ghz_settings)
    end
  end
end

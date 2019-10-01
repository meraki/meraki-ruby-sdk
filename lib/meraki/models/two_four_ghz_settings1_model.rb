# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Settings related to 2.4Ghz band
  class TwoFourGhzSettings1Model < BaseModel
    # Sets max power (dBm) of 2.4Ghz band. Can be integer between 5 and 30.
    # @return [Integer]
    attr_accessor :max_power

    # Sets min power (dBm) of 2.4Ghz band. Can be integer between 5 and 30.
    # @return [Integer]
    attr_accessor :min_power

    # Sets min bitrate (Mbps) of 2.4Ghz band. Can be one of '1', '2', '5.5',
    # '6', '9', '11', '12', '18', '24', '36', '48' or '54'.
    # @return [Float]
    attr_accessor :min_bitrate

    # Sets valid auto channels for 2.4Ghz band. Can be one of '1', '6' or '11'.
    # @return [List of Integer]
    attr_accessor :valid_auto_channels

    # Determines whether ax radio on 2.4Ghz band is on or off. Can be either
    # true or false. If false, we highly recommend disabling band steering.
    # @return [Boolean]
    attr_accessor :ax_enabled

    # The RX-SOP level controls the sensitivity of the radio. It is strongly
    # recommended to use RX-SOP only after
    #     consulting a wireless expert. RX-SOP can be configured in the range of
    # -65 to -95 (dBm). A value of null will
    #     reset this to the default.
    # @return [Integer]
    attr_accessor :rxsop

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['max_power'] = 'maxPower'
      @_hash['min_power'] = 'minPower'
      @_hash['min_bitrate'] = 'minBitrate'
      @_hash['valid_auto_channels'] = 'validAutoChannels'
      @_hash['ax_enabled'] = 'axEnabled'
      @_hash['rxsop'] = 'rxsop'
      @_hash
    end

    def initialize(max_power = nil,
                   min_power = nil,
                   min_bitrate = nil,
                   valid_auto_channels = nil,
                   ax_enabled = nil,
                   rxsop = nil)
      @max_power = max_power
      @min_power = min_power
      @min_bitrate = min_bitrate
      @valid_auto_channels = valid_auto_channels
      @ax_enabled = ax_enabled
      @rxsop = rxsop
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      max_power = hash['maxPower']
      min_power = hash['minPower']
      min_bitrate = hash['minBitrate']
      valid_auto_channels = hash['validAutoChannels']
      ax_enabled = hash['axEnabled']
      rxsop = hash['rxsop']

      # Create object from extracted values.
      TwoFourGhzSettings1Model.new(max_power,
                                   min_power,
                                   min_bitrate,
                                   valid_auto_channels,
                                   ax_enabled,
                                   rxsop)
    end
  end
end

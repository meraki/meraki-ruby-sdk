# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Settings related to 5Ghz band
  class FiveGhzSettings1Model < BaseModel
    # Sets max power (dBm) of 5Ghz band. Can be integer between 8 and 30.
    # @return [Integer]
    attr_accessor :max_power

    # Sets min power (dBm) of 5Ghz band. Can be integer between 8 and 30.
    # @return [Integer]
    attr_accessor :min_power

    # Sets min bitrate (Mbps) of 5Ghz band. Can be one of '6', '9', '12', '18',
    # '24', '36', '48' or '54'.
    # @return [String]
    attr_accessor :min_bitrate

    # Sets valid auto channels for 5Ghz band. Can be one of '36', '40', '44',
    # '48', '52', '56', '60', '64', '100', '104', '108', '112', '116', '120',
    # '124', '128', '132', '136', '140', '144', '149', '153', '157', '161' or
    # '165'.
    # @return [List of Integer]
    attr_accessor :valid_auto_channels

    # Sets channel width (MHz) for 5Ghz band. Can be one of 'auto', '20', '40'
    # or '80'.
    # @return [String]
    attr_accessor :channel_width

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
      @_hash['channel_width'] = 'channelWidth'
      @_hash['rxsop'] = 'rxsop'
      @_hash
    end

    def initialize(max_power = nil,
                   min_power = nil,
                   min_bitrate = nil,
                   valid_auto_channels = nil,
                   channel_width = nil,
                   rxsop = nil)
      @max_power = max_power
      @min_power = min_power
      @min_bitrate = min_bitrate
      @valid_auto_channels = valid_auto_channels
      @channel_width = channel_width
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
      channel_width = hash['channelWidth']
      rxsop = hash['rxsop']

      # Create object from extracted values.
      FiveGhzSettings1Model.new(max_power,
                                min_power,
                                min_bitrate,
                                valid_auto_channels,
                                channel_width,
                                rxsop)
    end
  end
end

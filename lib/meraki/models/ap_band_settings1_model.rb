# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Settings that will be enabled if selectionType is set to 'ap'.
  class ApBandSettings1Model < BaseModel
    # Choice between 'dual', '2.4ghz' or '5ghz'.
    # @return [BandOperationMode1Enum]
    attr_accessor :band_operation_mode

    # Steers client to most open band. Can be either true or false.
    # @return [Boolean]
    attr_accessor :band_steering_enabled

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['band_operation_mode'] = 'bandOperationMode'
      @_hash['band_steering_enabled'] = 'bandSteeringEnabled'
      @_hash
    end

    def initialize(band_operation_mode = nil,
                   band_steering_enabled = nil)
      @band_operation_mode = band_operation_mode
      @band_steering_enabled = band_steering_enabled
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      band_operation_mode = hash['bandOperationMode']
      band_steering_enabled = hash['bandSteeringEnabled']

      # Create object from extracted values.
      ApBandSettings1Model.new(band_operation_mode,
                               band_steering_enabled)
    end
  end
end

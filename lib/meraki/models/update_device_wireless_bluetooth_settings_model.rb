# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateDeviceWirelessBluetoothSettingsModel Model.
  class UpdateDeviceWirelessBluetoothSettingsModel < BaseModel
    # Desired UUID of the beacon. If the value is set to null it will reset to
    # Dashboard's automatically generated value.
    # @return [String]
    attr_accessor :uuid

    # Desired major value of the beacon. If the value is set to null it will
    # reset to Dashboard's automatically generated value.
    # @return [Integer]
    attr_accessor :major

    # Desired minor value of the beacon. If the value is set to null it will
    # reset to Dashboard's automatically generated value.
    # @return [Integer]
    attr_accessor :minor

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uuid'] = 'uuid'
      @_hash['major'] = 'major'
      @_hash['minor'] = 'minor'
      @_hash
    end

    def initialize(uuid = nil,
                   major = nil,
                   minor = nil)
      @uuid = uuid
      @major = major
      @minor = minor
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      uuid = hash['uuid']
      major = hash['major']
      minor = hash['minor']

      # Create object from extracted values.
      UpdateDeviceWirelessBluetoothSettingsModel.new(uuid,
                                                     major,
                                                     minor)
    end
  end
end

# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateOrganizationLicenseModel Model.
  class UpdateOrganizationLicenseModel < BaseModel
    # The serial number of the device to assign this license to. Set this to
    # null to unassign the license. If a different license is already active on
    # the device, this parameter will control queueing/dequeuing this license.
    # @return [String]
    attr_accessor :device_serial

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['device_serial'] = 'deviceSerial'
      @_hash
    end

    def initialize(device_serial = nil)
      @device_serial = device_serial
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      device_serial = hash['deviceSerial']

      # Create object from extracted values.
      UpdateOrganizationLicenseModel.new(device_serial)
    end
  end
end

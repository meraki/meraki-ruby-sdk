# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # AssignOrganizationLicensesSeatsModel Model.
  class AssignOrganizationLicensesSeatsModel < BaseModel
    # The ID of the SM license to assign seats from
    # @return [String]
    attr_accessor :license_id

    # The ID of the SM network to assign the seats to
    # @return [String]
    attr_accessor :network_id

    # The number of seats to assign to the SM network. Must be less than or
    # equal to the total number of seats of the license
    # @return [Integer]
    attr_accessor :seat_count

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['license_id'] = 'licenseId'
      @_hash['network_id'] = 'networkId'
      @_hash['seat_count'] = 'seatCount'
      @_hash
    end

    def initialize(license_id = nil,
                   network_id = nil,
                   seat_count = nil)
      @license_id = license_id
      @network_id = network_id
      @seat_count = seat_count
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      license_id = hash['licenseId']
      network_id = hash['networkId']
      seat_count = hash['seatCount']

      # Create object from extracted values.
      AssignOrganizationLicensesSeatsModel.new(license_id,
                                               network_id,
                                               seat_count)
    end
  end
end

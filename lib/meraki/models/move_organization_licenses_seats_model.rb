# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # MoveOrganizationLicensesSeatsModel Model.
  class MoveOrganizationLicensesSeatsModel < BaseModel
    # The ID of the organization to move the SM seats to
    # @return [String]
    attr_accessor :dest_organization_id

    # The ID of the SM license to move the seats from
    # @return [String]
    attr_accessor :license_id

    # The number of seats to move to the new organization. Must be less than or
    # equal to the total number of seats of the license
    # @return [Integer]
    attr_accessor :seat_count

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['dest_organization_id'] = 'destOrganizationId'
      @_hash['license_id'] = 'licenseId'
      @_hash['seat_count'] = 'seatCount'
      @_hash
    end

    def initialize(dest_organization_id = nil,
                   license_id = nil,
                   seat_count = nil)
      @dest_organization_id = dest_organization_id
      @license_id = license_id
      @seat_count = seat_count
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      dest_organization_id = hash['destOrganizationId']
      license_id = hash['licenseId']
      seat_count = hash['seatCount']

      # Create object from extracted values.
      MoveOrganizationLicensesSeatsModel.new(dest_organization_id,
                                             license_id,
                                             seat_count)
    end
  end
end

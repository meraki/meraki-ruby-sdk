# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # MoveOrganizationLicensesModel Model.
  class MoveOrganizationLicensesModel < BaseModel
    # The ID of the organization to move the licenses to
    # @return [String]
    attr_accessor :dest_organization_id

    # A list of IDs of licenses to move to the new organization
    # @return [List of String]
    attr_accessor :license_ids

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['dest_organization_id'] = 'destOrganizationId'
      @_hash['license_ids'] = 'licenseIds'
      @_hash
    end

    def initialize(dest_organization_id = nil,
                   license_ids = nil)
      @dest_organization_id = dest_organization_id
      @license_ids = license_ids
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      dest_organization_id = hash['destOrganizationId']
      license_ids = hash['licenseIds']

      # Create object from extracted values.
      MoveOrganizationLicensesModel.new(dest_organization_id,
                                        license_ids)
    end
  end
end

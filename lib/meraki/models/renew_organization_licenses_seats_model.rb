# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # RenewOrganizationLicensesSeatsModel Model.
  class RenewOrganizationLicensesSeatsModel < BaseModel
    # The ID of the SM license to renew. This license must already be assigned
    # to an SM network
    # @return [String]
    attr_accessor :license_id_to_renew

    # The SM license to use to renew the seats on 'licenseIdToRenew'. This
    # license must have at least as many seats available as there are seats on
    # 'licenseIdToRenew'
    # @return [String]
    attr_accessor :unused_license_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['license_id_to_renew'] = 'licenseIdToRenew'
      @_hash['unused_license_id'] = 'unusedLicenseId'
      @_hash
    end

    def initialize(license_id_to_renew = nil,
                   unused_license_id = nil)
      @license_id_to_renew = license_id_to_renew
      @unused_license_id = unused_license_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      license_id_to_renew = hash['licenseIdToRenew']
      unused_license_id = hash['unusedLicenseId']

      # Create object from extracted values.
      RenewOrganizationLicensesSeatsModel.new(license_id_to_renew,
                                              unused_license_id)
    end
  end
end

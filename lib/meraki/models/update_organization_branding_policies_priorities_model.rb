# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateOrganizationBrandingPoliciesPrioritiesModel Model.
  class UpdateOrganizationBrandingPoliciesPrioritiesModel < BaseModel
    # A list of branding policy IDs arranged in ascending priority order (IDs
    # later in the array have higher priority).
    # @return [List of String]
    attr_accessor :branding_policy_ids

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['branding_policy_ids'] = 'brandingPolicyIds'
      @_hash
    end

    def initialize(branding_policy_ids = nil)
      @branding_policy_ids = branding_policy_ids
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      branding_policy_ids = hash['brandingPolicyIds']

      # Create object from extracted values.
      UpdateOrganizationBrandingPoliciesPrioritiesModel.new(branding_policy_ids)
    end
  end
end

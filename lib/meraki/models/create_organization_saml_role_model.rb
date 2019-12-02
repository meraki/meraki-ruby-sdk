# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateOrganizationSamlRoleModel Model.
  class CreateOrganizationSamlRoleModel < BaseModel
    # The role of the SAML administrator
    # @return [String]
    attr_accessor :role

    # The privilege of the SAML administrator on the organization
    # @return [String]
    attr_accessor :org_access

    # The list of tags that the SAML administrator has privleges on
    # @return [List of Tag2Model]
    attr_accessor :tags

    # The list of networks that the SAML administrator has privileges on
    # @return [List of Network2Model]
    attr_accessor :networks

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['role'] = 'role'
      @_hash['org_access'] = 'orgAccess'
      @_hash['tags'] = 'tags'
      @_hash['networks'] = 'networks'
      @_hash
    end

    def initialize(role = nil,
                   org_access = nil,
                   tags = nil,
                   networks = nil)
      @role = role
      @org_access = org_access
      @tags = tags
      @networks = networks
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      role = hash['role']
      org_access = hash['orgAccess']
      # Parameter is an array, so we need to iterate through it
      tags = nil
      unless hash['tags'].nil?
        tags = []
        hash['tags'].each do |structure|
          tags << (Tag2Model.from_hash(structure) if structure)
        end
      end
      # Parameter is an array, so we need to iterate through it
      networks = nil
      unless hash['networks'].nil?
        networks = []
        hash['networks'].each do |structure|
          networks << (Network2Model.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      CreateOrganizationSamlRoleModel.new(role,
                                          org_access,
                                          tags,
                                          networks)
    end
  end
end

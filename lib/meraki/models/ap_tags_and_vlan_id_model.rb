# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # ApTagsAndVlanIdModel Model.
  class ApTagsAndVlanIdModel < BaseModel
    # Comma-separated list of AP tags
    # @return [String]
    attr_accessor :tags

    # Numerical identifier that is assigned to the VLAN
    # @return [Integer]
    attr_accessor :vlan_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['tags'] = 'tags'
      @_hash['vlan_id'] = 'vlanId'
      @_hash
    end

    def initialize(tags = nil,
                   vlan_id = nil)
      @tags = tags
      @vlan_id = vlan_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      tags = hash['tags']
      vlan_id = hash['vlanId']

      # Create object from extracted values.
      ApTagsAndVlanIdModel.new(tags,
                               vlan_id)
    end
  end
end

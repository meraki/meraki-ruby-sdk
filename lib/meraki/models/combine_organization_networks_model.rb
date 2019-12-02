# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CombineOrganizationNetworksModel Model.
  class CombineOrganizationNetworksModel < BaseModel
    # The name of the combined network
    # @return [String]
    attr_accessor :name

    # A list of the network IDs that will be combined. If an ID of a combined
    # network is included in this list, the other networks in the list will be
    # grouped into that network
    # @return [List of String]
    attr_accessor :network_ids

    # A unique identifier which can be used for device enrollment or easy access
    # through the Meraki SM Registration page or the Self Service Portal. Please
    # note that changing this field may cause existing bookmarks to break. All
    # networks that are part of this combined network will have their enrollment
    # string appended by '-network_type'. If left empty, all exisitng enrollment
    # strings will be deleted.
    # @return [String]
    attr_accessor :enrollment_string

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['network_ids'] = 'networkIds'
      @_hash['enrollment_string'] = 'enrollmentString'
      @_hash
    end

    def initialize(name = nil,
                   network_ids = nil,
                   enrollment_string = nil)
      @name = name
      @network_ids = network_ids
      @enrollment_string = enrollment_string
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      network_ids = hash['networkIds']
      enrollment_string = hash['enrollmentString']

      # Create object from extracted values.
      CombineOrganizationNetworksModel.new(name,
                                           network_ids,
                                           enrollment_string)
    end
  end
end

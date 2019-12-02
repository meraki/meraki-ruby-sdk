# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSwitchSettingsDscpToCosMappingsModel Model.
  class UpdateNetworkSwitchSettingsDscpToCosMappingsModel < BaseModel
    # An array of DSCP to CoS mappings. An empty array will reset the mappings
    # to default.
    # @return [List of MappingModel]
    attr_accessor :mappings

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mappings'] = 'mappings'
      @_hash
    end

    def initialize(mappings = nil)
      @mappings = mappings
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      mappings = nil
      unless hash['mappings'].nil?
        mappings = []
        hash['mappings'].each do |structure|
          mappings << (MappingModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateNetworkSwitchSettingsDscpToCosMappingsModel.new(mappings)
    end
  end
end

# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkConnectivityMonitoringDestinationsModel Model.
  class UpdateNetworkConnectivityMonitoringDestinationsModel < BaseModel
    # The list of connectivity monitoring destinations
    # @return [List of DestinationModel]
    attr_accessor :destinations

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['destinations'] = 'destinations'
      @_hash
    end

    def initialize(destinations = nil)
      @destinations = destinations
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      destinations = nil
      unless hash['destinations'].nil?
        destinations = []
        hash['destinations'].each do |structure|
          destinations << (DestinationModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateNetworkConnectivityMonitoringDestinationsModel.new(destinations)
    end
  end
end

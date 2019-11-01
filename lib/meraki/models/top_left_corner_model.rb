# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # The longitude and latitude of the top left corner of your floor plan.
  class TopLeftCornerModel < BaseModel
    # Latitude
    # @return [Float]
    attr_accessor :lat

    # Longitude
    # @return [Float]
    attr_accessor :lng

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['lat'] = 'lat'
      @_hash['lng'] = 'lng'
      @_hash
    end

    def initialize(lat = nil,
                   lng = nil)
      @lat = lat
      @lng = lng
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      lat = hash['lat']
      lng = hash['lng']

      # Create object from extracted values.
      TopLeftCornerModel.new(lat,
                             lng)
    end
  end
end

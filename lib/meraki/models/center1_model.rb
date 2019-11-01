# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # The longitude and latitude of the center of your floor plan. If you want to
  # change the geolocation data of your floor plan, either the 'center' or two
  # adjacent corners (e.g. 'topLeftCorner' and 'bottomLeftCorner') must be
  # specified. If 'center' is specified, the floor plan is placed over that
  # point with no rotation. If two adjacent corners are specified, the floor
  # plan is rotated to line up with the two specified points. The aspect ratio
  # of the floor plan's image is preserved regardless of which corners/center
  # are specified. (This means if that more than two corners are specified, only
  # two corners may be used to preserve the floor plan's aspect ratio.). No two
  # points can have the same latitude, longitude pair.
  class Center1Model < BaseModel
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
      Center1Model.new(lat,
                       lng)
    end
  end
end

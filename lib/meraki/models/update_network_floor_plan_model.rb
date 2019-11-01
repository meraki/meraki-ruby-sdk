# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkFloorPlanModel Model.
  class UpdateNetworkFloorPlanModel < BaseModel
    # The name of your floor plan.
    # @return [String]
    attr_accessor :name

    # The longitude and latitude of the center of your floor plan. If you want
    # to change the geolocation data of your floor plan, either the 'center' or
    # two adjacent corners (e.g. 'topLeftCorner' and 'bottomLeftCorner') must be
    # specified. If 'center' is specified, the floor plan is placed over that
    # point with no rotation. If two adjacent corners are specified, the floor
    # plan is rotated to line up with the two specified points. The aspect ratio
    # of the floor plan's image is preserved regardless of which corners/center
    # are specified. (This means if that more than two corners are specified,
    # only two corners may be used to preserve the floor plan's aspect ratio.).
    # No two points can have the same latitude, longitude pair.
    # @return [Center1Model]
    attr_accessor :center

    # The longitude and latitude of the bottom left corner of your floor plan.
    # @return [BottomLeftCornerModel]
    attr_accessor :bottom_left_corner

    # The longitude and latitude of the bottom right corner of your floor plan.
    # @return [BottomRightCornerModel]
    attr_accessor :bottom_right_corner

    # The longitude and latitude of the top left corner of your floor plan.
    # @return [TopLeftCornerModel]
    attr_accessor :top_left_corner

    # The longitude and latitude of the top right corner of your floor plan.
    # @return [TopRightCornerModel]
    attr_accessor :top_right_corner

    # The file contents (a base 64 encoded string) of your new image. Supported
    # formats are PNG, GIF, and JPG. Note that all images are saved as PNG
    # files, regardless of the format they are uploaded in. If you upload a new
    # image, and you do NOT specify any new geolocation fields ('center,
    # 'topLeftCorner', etc), the floor plan will be recentered with no rotation
    # in order to maintain the aspect ratio of your new image.
    # @return [String]
    attr_accessor :image_contents

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['center'] = 'center'
      @_hash['bottom_left_corner'] = 'bottomLeftCorner'
      @_hash['bottom_right_corner'] = 'bottomRightCorner'
      @_hash['top_left_corner'] = 'topLeftCorner'
      @_hash['top_right_corner'] = 'topRightCorner'
      @_hash['image_contents'] = 'imageContents'
      @_hash
    end

    def initialize(name = nil,
                   center = nil,
                   bottom_left_corner = nil,
                   bottom_right_corner = nil,
                   top_left_corner = nil,
                   top_right_corner = nil,
                   image_contents = nil)
      @name = name
      @center = center
      @bottom_left_corner = bottom_left_corner
      @bottom_right_corner = bottom_right_corner
      @top_left_corner = top_left_corner
      @top_right_corner = top_right_corner
      @image_contents = image_contents
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      center = Center1Model.from_hash(hash['center']) if hash['center']
      if hash['bottomLeftCorner']
        bottom_left_corner = BottomLeftCornerModel.from_hash(hash['bottomLeftCorner'])
      end
      if hash['bottomRightCorner']
        bottom_right_corner = BottomRightCornerModel.from_hash(hash['bottomRightCorner'])
      end
      top_left_corner = TopLeftCornerModel.from_hash(hash['topLeftCorner']) if
        hash['topLeftCorner']
      if hash['topRightCorner']
        top_right_corner = TopRightCornerModel.from_hash(hash['topRightCorner'])
      end
      image_contents = hash['imageContents']

      # Create object from extracted values.
      UpdateNetworkFloorPlanModel.new(name,
                                      center,
                                      bottom_left_corner,
                                      bottom_right_corner,
                                      top_left_corner,
                                      top_right_corner,
                                      image_contents)
    end
  end
end

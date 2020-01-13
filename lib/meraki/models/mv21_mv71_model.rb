# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Quality and resolution for MV21/MV71 camera models.
  class MV21MV71Model < BaseModel
    # Quality of the camera. Can be one of 'Standard', 'Enhanced' or 'High'.
    # @return [Quality1Enum]
    attr_accessor :quality

    # Resolution of the camera. Can be one of '1280x720'.
    # @return [String]
    attr_accessor :resolution

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['quality'] = 'quality'
      @_hash['resolution'] = 'resolution'
      @_hash
    end

    def initialize(quality = nil,
                   resolution = '1280x720')
      @quality = quality
      @resolution = resolution
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      quality = hash['quality']
      resolution = hash['resolution'] ||= '1280x720'

      # Create object from extracted values.
      MV21MV71Model.new(quality,
                        resolution)
    end
  end
end

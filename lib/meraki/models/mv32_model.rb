# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Quality and resolution for MV32 camera models.
  class MV32Model < BaseModel
    # Quality of the camera. Can be one of 'Standard' or 'Enhanced'.
    # @return [Quality3Enum]
    attr_accessor :quality

    # Resolution of the camera. Can be one of '1080x1080' or '2058x2058'.
    # @return [Resolution2Enum]
    attr_accessor :resolution

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['quality'] = 'quality'
      @_hash['resolution'] = 'resolution'
      @_hash
    end

    def initialize(quality = nil,
                   resolution = nil)
      @quality = quality
      @resolution = resolution
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      quality = hash['quality']
      resolution = hash['resolution']

      # Create object from extracted values.
      MV32Model.new(quality,
                    resolution)
    end
  end
end

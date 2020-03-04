# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Video quality and resolution settings for all the camera models.
  class VideoSettingsModel < BaseModel
    # Quality and resolution for MV21/MV71 camera models.
    # @return [MV21MV71Model]
    attr_accessor :mv21_mv71

    # Quality and resolution for MV12/MV22/MV72 camera models.
    # @return [MV12MV22MV72Model]
    attr_accessor :mv12_mv22_mv72

    # Quality and resolution for MV32 camera models.
    # @return [MV32Model]
    attr_accessor :mv32

    # Quality and resolution for MV12WE camera models.
    # @return [MV12WEModel]
    attr_accessor :mv12_we

    # Quality and resolution for MV22X/MV72X camera models.
    # @return [MV22XMV72XModel]
    attr_accessor :mv22_x_mv72_x

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['mv21_mv71'] = 'MV21/MV71'
      @_hash['mv12_mv22_mv72'] = 'MV12/MV22/MV72'
      @_hash['mv32'] = 'MV32'
      @_hash['mv12_we'] = 'MV12WE'
      @_hash['mv22_x_mv72_x'] = 'MV22X/MV72X'
      @_hash
    end

    def initialize(mv21_mv71 = nil,
                   mv12_mv22_mv72 = nil,
                   mv32 = nil,
                   mv12_we = nil,
                   mv22_x_mv72_x = nil)
      @mv21_mv71 = mv21_mv71
      @mv12_mv22_mv72 = mv12_mv22_mv72
      @mv32 = mv32
      @mv12_we = mv12_we
      @mv22_x_mv72_x = mv22_x_mv72_x
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      mv21_mv71 = MV21MV71Model.from_hash(hash['MV21/MV71']) if
        hash['MV21/MV71']
      mv12_mv22_mv72 = MV12MV22MV72Model.from_hash(hash['MV12/MV22/MV72']) if
        hash['MV12/MV22/MV72']
      mv32 = MV32Model.from_hash(hash['MV32']) if hash['MV32']
      mv12_we = MV12WEModel.from_hash(hash['MV12WE']) if hash['MV12WE']
      mv22_x_mv72_x = MV22XMV72XModel.from_hash(hash['MV22X/MV72X']) if
        hash['MV22X/MV72X']

      # Create object from extracted values.
      VideoSettingsModel.new(mv21_mv71,
                             mv12_mv22_mv72,
                             mv32,
                             mv12_we,
                             mv22_x_mv72_x)
    end
  end
end

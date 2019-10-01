# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # A mapping of uplinks to their bandwidth settings (be sure to check which
  # uplinks are supported for your network)
  class BandwidthLimits6Model < BaseModel
    # The bandwidth settings for the 'wan1' uplink
    # @return [Wan11Model]
    attr_accessor :wan1

    # The bandwidth settings for the 'wan2' uplink
    # @return [Wan21Model]
    attr_accessor :wan2

    # The bandwidth settings for the 'cellular' uplink
    # @return [CellularModel]
    attr_accessor :cellular

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['wan1'] = 'wan1'
      @_hash['wan2'] = 'wan2'
      @_hash['cellular'] = 'cellular'
      @_hash
    end

    def initialize(wan1 = nil,
                   wan2 = nil,
                   cellular = nil)
      @wan1 = wan1
      @wan2 = wan2
      @cellular = cellular
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      wan1 = Wan11Model.from_hash(hash['wan1']) if hash['wan1']
      wan2 = Wan21Model.from_hash(hash['wan2']) if hash['wan2']
      cellular = CellularModel.from_hash(hash['cellular']) if hash['cellular']

      # Create object from extracted values.
      BandwidthLimits6Model.new(wan1,
                                wan2,
                                cellular)
    end
  end
end

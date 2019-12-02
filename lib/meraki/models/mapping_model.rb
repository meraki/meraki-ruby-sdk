# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # MappingModel Model.
  class MappingModel < BaseModel
    # The Differentiated Services Code Point (DSCP) tag in the IP header that
    # will be mapped to a particular Class-of-Service (CoS) queue. Value can be
    # in the range of 0 to 63 inclusive.
    # @return [Integer]
    attr_accessor :dscp

    # The actual layer-2 CoS queue the DSCP value is mapped to. These are not
    # bits set on outgoing frames. Value can be in the range of 0 to 5
    # inclusive.
    # @return [Integer]
    attr_accessor :cos

    # Label for the mapping (optional).
    # @return [String]
    attr_accessor :title

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['dscp'] = 'dscp'
      @_hash['cos'] = 'cos'
      @_hash['title'] = 'title'
      @_hash
    end

    def initialize(dscp = nil,
                   cos = nil,
                   title = nil)
      @dscp = dscp
      @cos = cos
      @title = title
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      dscp = hash['dscp']
      cos = hash['cos']
      title = hash['title']

      # Create object from extracted values.
      MappingModel.new(dscp,
                       cos,
                       title)
    end
  end
end

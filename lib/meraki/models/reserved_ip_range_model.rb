# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # ReservedIpRangeModel Model.
  class ReservedIpRangeModel < BaseModel
    # Starting IP included in the reserved range of IPs
    # @return [String]
    attr_accessor :start

    # Ending IP included in the reserved range of IPs
    # @return [String]
    attr_accessor :mend

    # Comment explaining the reserved IP range
    # @return [String]
    attr_accessor :comment

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['start'] = 'start'
      @_hash['mend'] = 'end'
      @_hash['comment'] = 'comment'
      @_hash
    end

    def initialize(start = nil,
                   mend = nil,
                   comment = nil)
      @start = start
      @mend = mend
      @comment = comment
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      start = hash['start']
      mend = hash['end']
      comment = hash['comment']

      # Create object from extracted values.
      ReservedIpRangeModel.new(start,
                               mend,
                               comment)
    end
  end
end

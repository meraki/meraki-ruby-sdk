# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateNetworkSwitchStackModel Model.
  class CreateNetworkSwitchStackModel < BaseModel
    # The name of the new stack
    # @return [String]
    attr_accessor :name

    # An array of switch serials to be added into the new stack
    # @return [List of String]
    attr_accessor :serials

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['serials'] = 'serials'
      @_hash
    end

    def initialize(name = nil,
                   serials = nil)
      @name = name
      @serials = serials
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      serials = hash['serials']

      # Create object from extracted values.
      CreateNetworkSwitchStackModel.new(name,
                                        serials)
    end
  end
end

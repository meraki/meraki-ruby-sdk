# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # DefinitionModel Model.
  class DefinitionModel < BaseModel
    # The type of definition. Can be one of 'application',
    # 'applicationCategory', 'host', 'port', 'ipRange' or 'localNet'.
    # @return [TypeEnum]
    attr_accessor :type

    # If "type" is 'host', 'port', 'ipRange' or 'localNet', then "value" must be
    # a string, matching either
    #     a hostname (e.g. "somesite.com"), a port (e.g. 8080), or an IP range
    # ("192.1.0.0",
    #     "192.1.0.0/16", or "10.1.0.0/16:80"). 'localNet' also supports CIDR
    # notation, excluding
    #     custom ports.
    #      If "type" is 'application' or 'applicationCategory', then "value"
    # must be an object
    #     with the structure { "id": "meraki:layer7/..." }, where "id" is the
    # application category or
    #     application ID (for a list of IDs for your network, use the
    # trafficShaping/applicationCategories
    #     endpoint).
    # @return [String]
    attr_accessor :value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['value'] = 'value'
      @_hash
    end

    def initialize(type = nil,
                   value = nil)
      @type = type
      @value = value
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash['type']
      value = hash['value']

      # Create object from extracted values.
      DefinitionModel.new(type,
                          value)
    end
  end
end

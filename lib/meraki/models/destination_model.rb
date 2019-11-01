# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # DestinationModel Model.
  class DestinationModel < BaseModel
    # The IP address to test connectivity with
    # @return [String]
    attr_accessor :ip

    # Description of the testing destination. Optional, defaults to null
    # @return [String]
    attr_accessor :description

    # Boolean indicating whether this is the default testing destination (true)
    # or not (false). Defaults to false. Only one default is allowed
    # @return [Boolean]
    attr_accessor :default

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['ip'] = 'ip'
      @_hash['description'] = 'description'
      @_hash['default'] = 'default'
      @_hash
    end

    def initialize(ip = nil,
                   description = nil,
                   default = nil)
      @ip = ip
      @description = description
      @default = default
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      ip = hash['ip']
      description = hash['description']
      default = hash['default']

      # Create object from extracted values.
      DestinationModel.new(ip,
                           description,
                           default)
    end
  end
end

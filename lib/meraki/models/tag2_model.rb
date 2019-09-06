# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Tag2Model Model.
  class Tag2Model < BaseModel
    # The name of the tag
    # @return [String]
    attr_accessor :tag

    # The privilege of the SAML administrator on the tag
    # @return [String]
    attr_accessor :access

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['tag'] = 'tag'
      @_hash['access'] = 'access'
      @_hash
    end

    def initialize(tag = nil,
                   access = nil)
      @tag = tag
      @access = access
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      tag = hash['tag']
      access = hash['access']

      # Create object from extracted values.
      Tag2Model.new(tag,
                    access)
    end
  end
end

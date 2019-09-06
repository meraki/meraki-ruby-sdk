# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Settings for blacklisted URL patterns
  class BlockedUrlPatternsModel < BaseModel
    # How URL patterns are applied. Can be 'network default', 'append' or
    # 'override'.
    # @return [Settings2Enum]
    attr_accessor :settings

    # A blacklist of URL patterns to block
    # @return [List of String]
    attr_accessor :patterns

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['settings'] = 'settings'
      @_hash['patterns'] = 'patterns'
      @_hash
    end

    def initialize(settings = nil,
                   patterns = nil)
      @settings = settings
      @patterns = patterns
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      settings = hash['settings']
      patterns = hash['patterns']

      # Create object from extracted values.
      BlockedUrlPatternsModel.new(settings,
                                  patterns)
    end
  end
end

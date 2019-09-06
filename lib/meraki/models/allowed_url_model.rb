# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # AllowedUrlModel Model.
  class AllowedUrlModel < BaseModel
    # The url to whitelist
    # @return [String]
    attr_accessor :url

    # Comment about the whitelisted entity
    # @return [String]
    attr_accessor :comment

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['url'] = 'url'
      @_hash['comment'] = 'comment'
      @_hash
    end

    def initialize(url = nil,
                   comment = nil)
      @url = url
      @comment = comment
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      url = hash['url']
      comment = hash['comment']

      # Create object from extracted values.
      AllowedUrlModel.new(url,
                          comment)
    end
  end
end

# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # AllowedFileModel Model.
  class AllowedFileModel < BaseModel
    # The file sha256 hash to whitelist
    # @return [String]
    attr_accessor :sha256

    # Comment about the whitelisted entity
    # @return [String]
    attr_accessor :comment

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['sha256'] = 'sha256'
      @_hash['comment'] = 'comment'
      @_hash
    end

    def initialize(sha256 = nil,
                   comment = nil)
      @sha256 = sha256
      @comment = comment
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      sha256 = hash['sha256']
      comment = hash['comment']

      # Create object from extracted values.
      AllowedFileModel.new(sha256,
                           comment)
    end
  end
end

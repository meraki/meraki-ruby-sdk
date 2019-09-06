# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Settings for blacklisted URL categories
  class BlockedUrlCategoriesModel < BaseModel
    # How URL categories are applied. Can be 'network default', 'append' or
    # 'override'.
    # @return [Settings4Enum]
    attr_accessor :settings

    # A list of URL categories to block
    # @return [List of String]
    attr_accessor :categories

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['settings'] = 'settings'
      @_hash['categories'] = 'categories'
      @_hash
    end

    def initialize(settings = nil,
                   categories = nil)
      @settings = settings
      @categories = categories
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      settings = hash['settings']
      categories = hash['categories']

      # Create object from extracted values.
      BlockedUrlCategoriesModel.new(settings,
                                    categories)
    end
  end
end

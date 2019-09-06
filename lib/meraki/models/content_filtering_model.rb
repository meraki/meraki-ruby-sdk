# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # The content filtering settings for your group policy
  class ContentFilteringModel < BaseModel
    # Settings for whitelisted URL patterns
    # @return [AllowedUrlPatternsModel]
    attr_accessor :allowed_url_patterns

    # Settings for blacklisted URL patterns
    # @return [BlockedUrlPatternsModel]
    attr_accessor :blocked_url_patterns

    # Settings for blacklisted URL categories
    # @return [BlockedUrlCategoriesModel]
    attr_accessor :blocked_url_categories

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['allowed_url_patterns'] = 'allowedUrlPatterns'
      @_hash['blocked_url_patterns'] = 'blockedUrlPatterns'
      @_hash['blocked_url_categories'] = 'blockedUrlCategories'
      @_hash
    end

    def initialize(allowed_url_patterns = nil,
                   blocked_url_patterns = nil,
                   blocked_url_categories = nil)
      @allowed_url_patterns = allowed_url_patterns
      @blocked_url_patterns = blocked_url_patterns
      @blocked_url_categories = blocked_url_categories
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      if hash['allowedUrlPatterns']
        allowed_url_patterns = AllowedUrlPatternsModel.from_hash(hash['allowedUrlPatterns'])
      end
      if hash['blockedUrlPatterns']
        blocked_url_patterns = BlockedUrlPatternsModel.from_hash(hash['blockedUrlPatterns'])
      end
      if hash['blockedUrlCategories']
        blocked_url_categories = BlockedUrlCategoriesModel.from_hash(hash['blockedUrlCategories'])
      end

      # Create object from extracted values.
      ContentFilteringModel.new(allowed_url_patterns,
                                blocked_url_patterns,
                                blocked_url_categories)
    end
  end
end

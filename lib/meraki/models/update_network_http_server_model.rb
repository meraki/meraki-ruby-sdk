# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkHttpServerModel Model.
  class UpdateNetworkHttpServerModel < BaseModel
    # A name for easy reference to the HTTP server
    # @return [String]
    attr_accessor :name

    # The URL of the HTTP server
    # @return [String]
    attr_accessor :url

    # A shared secret that will be included in POSTs sent to the HTTP server.
    # This secret can be used to verify that the request was sent by Meraki.
    # @return [String]
    attr_accessor :shared_secret

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['url'] = 'url'
      @_hash['shared_secret'] = 'sharedSecret'
      @_hash
    end

    def initialize(name = nil,
                   url = nil,
                   shared_secret = nil)
      @name = name
      @url = url
      @shared_secret = shared_secret
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      url = hash['url']
      shared_secret = hash['sharedSecret']

      # Create object from extracted values.
      UpdateNetworkHttpServerModel.new(name,
                                       url,
                                       shared_secret)
    end
  end
end

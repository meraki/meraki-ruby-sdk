# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateOrganizationInsightMonitoredMediaServerModel Model.
  class UpdateOrganizationInsightMonitoredMediaServerModel < BaseModel
    # The name of the VoIP provider
    # @return [String]
    attr_accessor :name

    # The IP address (IPv4 only) or hostname of the media server to monitor
    # @return [String]
    attr_accessor :address

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['address'] = 'address'
      @_hash
    end

    def initialize(name = nil,
                   address = nil)
      @name = name
      @address = address
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      address = hash['address']

      # Create object from extracted values.
      UpdateOrganizationInsightMonitoredMediaServerModel.new(name,
                                                             address)
    end
  end
end

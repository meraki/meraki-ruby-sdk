# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateNetworkSmBypassActivationLockAttemptModel Model.
  class CreateNetworkSmBypassActivationLockAttemptModel < BaseModel
    # The ids of the devices to attempt activation lock bypass.
    # @return [List of String]
    attr_accessor :ids

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['ids'] = 'ids'
      @_hash
    end

    def initialize(ids = nil)
      @ids = ids
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      ids = hash['ids']

      # Create object from extracted values.
      CreateNetworkSmBypassActivationLockAttemptModel.new(ids)
    end
  end
end

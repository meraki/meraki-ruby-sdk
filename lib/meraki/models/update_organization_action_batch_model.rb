# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateOrganizationActionBatchModel Model.
  class UpdateOrganizationActionBatchModel < BaseModel
    # A boolean representing whether or not the batch has been confirmed. This
    # property cannot be unset once it is true.
    # @return [Boolean]
    attr_accessor :confirmed

    # Set to true to force the batch to run synchronous. There can be at most 20
    # actions in synchronous batch.
    # @return [Boolean]
    attr_accessor :synchronous

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['confirmed'] = 'confirmed'
      @_hash['synchronous'] = 'synchronous'
      @_hash
    end

    def initialize(confirmed = nil,
                   synchronous = nil)
      @confirmed = confirmed
      @synchronous = synchronous
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      confirmed = hash['confirmed']
      synchronous = hash['synchronous']

      # Create object from extracted values.
      UpdateOrganizationActionBatchModel.new(confirmed,
                                             synchronous)
    end
  end
end

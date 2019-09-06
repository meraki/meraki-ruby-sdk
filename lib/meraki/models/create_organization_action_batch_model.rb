# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateOrganizationActionBatchModel Model.
  class CreateOrganizationActionBatchModel < BaseModel
    # Set to true for immediate execution. Set to false if the action should be
    # previewed before executing. This property cannot be unset once it is true.
    # Defaults to false.
    # @return [Boolean]
    attr_accessor :confirmed

    # Set to true to force the batch to run synchronous. There can be at most 20
    # actions in synchronous batch. Defaults to false.
    # @return [Boolean]
    attr_accessor :synchronous

    # A set of changes to make as part of this action (<a
    # href='https://developer.cisco.com/meraki/api/#/rest/guides/action-batches/
    # '>more details</a>)
    # @return [List of ActionModel]
    attr_accessor :actions

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['confirmed'] = 'confirmed'
      @_hash['synchronous'] = 'synchronous'
      @_hash['actions'] = 'actions'
      @_hash
    end

    def initialize(actions = nil,
                   confirmed = nil,
                   synchronous = nil)
      @confirmed = confirmed
      @synchronous = synchronous
      @actions = actions
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      actions = nil
      unless hash['actions'].nil?
        actions = []
        hash['actions'].each do |structure|
          actions << (ActionModel.from_hash(structure) if structure)
        end
      end
      confirmed = hash['confirmed']
      synchronous = hash['synchronous']

      # Create object from extracted values.
      CreateOrganizationActionBatchModel.new(actions,
                                             confirmed,
                                             synchronous)
    end
  end
end

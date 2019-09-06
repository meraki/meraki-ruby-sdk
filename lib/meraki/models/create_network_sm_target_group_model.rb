# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateNetworkSmTargetGroupModel Model.
  class CreateNetworkSmTargetGroupModel < BaseModel
    # The name of this target group
    # @return [String]
    attr_accessor :name

    # The scope and tag options of the target group. Comma separated values
    # beginning with one of withAny, withAll, withoutAny, withoutAll, all, none,
    # followed by tags. Default to none if empty.
    # @return [String]
    attr_accessor :scope

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['scope'] = 'scope'
      @_hash
    end

    def initialize(name = nil,
                   scope = nil)
      @name = name
      @scope = scope
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      scope = hash['scope']

      # Create object from extracted values.
      CreateNetworkSmTargetGroupModel.new(name,
                                          scope)
    end
  end
end

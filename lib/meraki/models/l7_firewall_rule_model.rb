# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # L7FirewallRuleModel Model.
  class L7FirewallRuleModel < BaseModel
    # The policy applied to matching traffic. Must be 'deny'.
    # @return [Policy2Enum]
    attr_accessor :policy

    # Type of the L7 Rule. Must be 'application', 'applicationCategory', 'host',
    # 'port' or 'ipRange'
    # @return [Type2Enum]
    attr_accessor :type

    # The 'value' of what you want to block. If 'type' is 'host', 'port' or
    # 'ipRange', 'value' must be a string matching either a hostname (e.g.
    # somewhere.com), a port (e.g. 8080), or an IP range (e.g. 192.1.0.0/16). If
    # 'type' is 'application' or 'applicationCategory', then 'value' must be an
    # object with an ID for the application.
    # @return [String]
    attr_accessor :value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['policy'] = 'policy'
      @_hash['type'] = 'type'
      @_hash['value'] = 'value'
      @_hash
    end

    def initialize(policy = nil,
                   type = nil,
                   value = nil)
      @policy = policy
      @type = type
      @value = value
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      policy = hash['policy']
      type = hash['type']
      value = hash['value']

      # Create object from extracted values.
      L7FirewallRuleModel.new(policy,
                              type,
                              value)
    end
  end
end

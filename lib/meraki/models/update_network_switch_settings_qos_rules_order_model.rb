# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSwitchSettingsQosRulesOrderModel Model.
  class UpdateNetworkSwitchSettingsQosRulesOrderModel < BaseModel
    # A list of quality of service rule IDs arranged in order in which they
    # should be processed by the switch.
    # @return [List of String]
    attr_accessor :rule_ids

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['rule_ids'] = 'ruleIds'
      @_hash
    end

    def initialize(rule_ids = nil)
      @rule_ids = rule_ids
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      rule_ids = hash['ruleIds']

      # Create object from extracted values.
      UpdateNetworkSwitchSettingsQosRulesOrderModel.new(rule_ids)
    end
  end
end

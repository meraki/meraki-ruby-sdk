# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # The firewall and traffic shaping rules and settings for your policy.
  class FirewallAndTrafficShapingModel < BaseModel
    # How firewall and traffic shaping rules are enforced. Can be 'network
    # default', 'ignore' or 'custom'.
    # @return [Settings1Enum]
    attr_accessor :settings

    # An array of traffic shaping rules. Rules are applied in the order that
    #     they are specified in. An empty list (or null) means no rules. Note
    # that
    #     you are allowed a maximum of 8 rules.
    # @return [List of TrafficShapingRuleModel]
    attr_accessor :traffic_shaping_rules

    # An ordered array of the L3 firewall rules
    # @return [List of L3FirewallRuleModel]
    attr_accessor :l3_firewall_rules

    # An ordered array of L7 firewall rules
    # @return [List of L7FirewallRuleModel]
    attr_accessor :l7_firewall_rules

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['settings'] = 'settings'
      @_hash['traffic_shaping_rules'] = 'trafficShapingRules'
      @_hash['l3_firewall_rules'] = 'l3FirewallRules'
      @_hash['l7_firewall_rules'] = 'l7FirewallRules'
      @_hash
    end

    def initialize(settings = nil,
                   traffic_shaping_rules = nil,
                   l3_firewall_rules = nil,
                   l7_firewall_rules = nil)
      @settings = settings
      @traffic_shaping_rules = traffic_shaping_rules
      @l3_firewall_rules = l3_firewall_rules
      @l7_firewall_rules = l7_firewall_rules
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      settings = hash['settings']
      # Parameter is an array, so we need to iterate through it
      traffic_shaping_rules = nil
      unless hash['trafficShapingRules'].nil?
        traffic_shaping_rules = []
        hash['trafficShapingRules'].each do |structure|
          traffic_shaping_rules << (TrafficShapingRuleModel.from_hash(structure) if structure)
        end
      end
      # Parameter is an array, so we need to iterate through it
      l3_firewall_rules = nil
      unless hash['l3FirewallRules'].nil?
        l3_firewall_rules = []
        hash['l3FirewallRules'].each do |structure|
          l3_firewall_rules << (L3FirewallRuleModel.from_hash(structure) if structure)
        end
      end
      # Parameter is an array, so we need to iterate through it
      l7_firewall_rules = nil
      unless hash['l7FirewallRules'].nil?
        l7_firewall_rules = []
        hash['l7FirewallRules'].each do |structure|
          l7_firewall_rules << (L7FirewallRuleModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      FirewallAndTrafficShapingModel.new(settings,
                                         traffic_shaping_rules,
                                         l3_firewall_rules,
                                         l7_firewall_rules)
    end
  end
end

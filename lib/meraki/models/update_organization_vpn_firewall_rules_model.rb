# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateOrganizationVpnFirewallRulesModel Model.
  class UpdateOrganizationVpnFirewallRulesModel < BaseModel
    # An ordered array of the firewall rules (not including the default rule)
    # @return [List of Rule14Model]
    attr_accessor :rules

    # Log the special default rule (boolean value - enable only if you've
    # configured a syslog server) (optional)
    # @return [Boolean]
    attr_accessor :syslog_default_rule

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['rules'] = 'rules'
      @_hash['syslog_default_rule'] = 'syslogDefaultRule'
      @_hash
    end

    def initialize(rules = nil,
                   syslog_default_rule = nil)
      @rules = rules
      @syslog_default_rule = syslog_default_rule
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      rules = nil
      unless hash['rules'].nil?
        rules = []
        hash['rules'].each do |structure|
          rules << (Rule14Model.from_hash(structure) if structure)
        end
      end
      syslog_default_rule = hash['syslogDefaultRule']

      # Create object from extracted values.
      UpdateOrganizationVpnFirewallRulesModel.new(rules,
                                                  syslog_default_rule)
    end
  end
end

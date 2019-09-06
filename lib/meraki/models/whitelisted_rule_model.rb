# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # WhitelistedRuleModel Model.
  class WhitelistedRuleModel < BaseModel
    # A rule identifier of the format
    # meraki:intrusion/snort/GID/<gid>/SID/<sid>. gid and sid can be obtained
    # from either https://www.snort.org/rule-docs or as ruleIds from the
    # security events in /organization/[orgId]/securityEvents
    # @return [String]
    attr_accessor :rule_id

    # Message is optional and is ignored on a PUT call. It is allowed in order
    # for PUT to be compatible with GET
    # @return [String]
    attr_accessor :message

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['rule_id'] = 'ruleId'
      @_hash['message'] = 'message'
      @_hash
    end

    def initialize(rule_id = nil,
                   message = nil)
      @rule_id = rule_id
      @message = message
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      rule_id = hash['ruleId']
      message = hash['message']

      # Create object from extracted values.
      WhitelistedRuleModel.new(rule_id,
                               message)
    end
  end
end

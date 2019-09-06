# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # L3FirewallRuleModel Model.
  class L3FirewallRuleModel < BaseModel
    # Description of the rule (optional)
    # @return [String]
    attr_accessor :comment

    # 'allow' or 'deny' traffic specified by this rule
    # @return [String]
    attr_accessor :policy

    # The type of protocol (must be 'tcp', 'udp', 'icmp' or 'any')
    # @return [String]
    attr_accessor :protocol

    # Destination port (integer in the range 1-65535), a port range (e.g.
    # 8080-9090), or 'any'
    # @return [String]
    attr_accessor :dest_port

    # Destination IP address (in IP or CIDR notation), a fully-qualified domain
    # name (FQDN, if your network supports it) or 'any'.
    # @return [String]
    attr_accessor :dest_cidr

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['comment'] = 'comment'
      @_hash['policy'] = 'policy'
      @_hash['protocol'] = 'protocol'
      @_hash['dest_port'] = 'destPort'
      @_hash['dest_cidr'] = 'destCidr'
      @_hash
    end

    def initialize(policy = nil,
                   protocol = nil,
                   dest_cidr = nil,
                   comment = nil,
                   dest_port = nil)
      @comment = comment
      @policy = policy
      @protocol = protocol
      @dest_port = dest_port
      @dest_cidr = dest_cidr
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      policy = hash['policy']
      protocol = hash['protocol']
      dest_cidr = hash['destCidr']
      comment = hash['comment']
      dest_port = hash['destPort']

      # Create object from extracted values.
      L3FirewallRuleModel.new(policy,
                              protocol,
                              dest_cidr,
                              comment,
                              dest_port)
    end
  end
end

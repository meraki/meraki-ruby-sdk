# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Rule1Model Model.
  class Rule1Model < BaseModel
    # Description of the rule (optional)
    # @return [String]
    attr_accessor :comment

    # 'allow' or 'deny' traffic specified by this rule
    # @return [PolicyEnum]
    attr_accessor :policy

    # The type of protocol (must be 'tcp', 'udp', 'icmp' or 'any')
    # @return [ProtocolEnum]
    attr_accessor :protocol

    # Comma-separated list of source port(s) (integer in the range 1-65535), or
    # 'any'
    # @return [String]
    attr_accessor :src_port

    # Comma-separated list of source IP address(es) (in IP or CIDR notation), or
    # 'any' (note: FQDN not supported for source addresses)
    # @return [String]
    attr_accessor :src_cidr

    # Comma-separated list of destination port(s) (integer in the range
    # 1-65535), or 'any'
    # @return [String]
    attr_accessor :dest_port

    # Comma-separated list of destination IP address(es) (in IP or CIDR
    # notation), fully-qualified domain names (FQDN) or 'any'
    # @return [String]
    attr_accessor :dest_cidr

    # Log this rule to syslog (true or false, boolean value) - only applicable
    # if a syslog has been configured (optional)
    # @return [Boolean]
    attr_accessor :syslog_enabled

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['comment'] = 'comment'
      @_hash['policy'] = 'policy'
      @_hash['protocol'] = 'protocol'
      @_hash['src_port'] = 'srcPort'
      @_hash['src_cidr'] = 'srcCidr'
      @_hash['dest_port'] = 'destPort'
      @_hash['dest_cidr'] = 'destCidr'
      @_hash['syslog_enabled'] = 'syslogEnabled'
      @_hash
    end

    def initialize(policy = nil,
                   protocol = nil,
                   src_cidr = nil,
                   dest_cidr = nil,
                   comment = nil,
                   src_port = nil,
                   dest_port = nil,
                   syslog_enabled = nil)
      @comment = comment
      @policy = policy
      @protocol = protocol
      @src_port = src_port
      @src_cidr = src_cidr
      @dest_port = dest_port
      @dest_cidr = dest_cidr
      @syslog_enabled = syslog_enabled
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      policy = hash['policy']
      protocol = hash['protocol']
      src_cidr = hash['srcCidr']
      dest_cidr = hash['destCidr']
      comment = hash['comment']
      src_port = hash['srcPort']
      dest_port = hash['destPort']
      syslog_enabled = hash['syslogEnabled']

      # Create object from extracted values.
      Rule1Model.new(policy,
                     protocol,
                     src_cidr,
                     dest_cidr,
                     comment,
                     src_port,
                     dest_port,
                     syslog_enabled)
    end
  end
end

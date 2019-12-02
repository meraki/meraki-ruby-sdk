# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Rule10Model Model.
  class Rule10Model < BaseModel
    # Description of the rule (optional).
    # @return [String]
    attr_accessor :comment

    # 'allow' or 'deny' traffic specified by this rule.
    # @return [Policy6Enum]
    attr_accessor :policy

    # IP address version (must be 'any', 'ipv4' or 'ipv6'). Applicable only if
    # network supports IPv6. Default value is 'ipv4'.
    # @return [IpVersionEnum]
    attr_accessor :ip_version

    # The type of protocol (must be 'tcp', 'udp', or 'any').
    # @return [Protocol3Enum]
    attr_accessor :protocol

    # Source IP address (in IP or CIDR notation) or 'any'.
    # @return [String]
    attr_accessor :src_cidr

    # Source port. Must be in the range  of 1-65535 or 'any'. Default is 'any'.
    # @return [String]
    attr_accessor :src_port

    # Destination IP address (in IP or CIDR notation) or 'any'.
    # @return [String]
    attr_accessor :dst_cidr

    # Destination port. Must be in the range of 1-65535 or 'any'. Default is
    # 'any'.
    # @return [String]
    attr_accessor :dst_port

    # Incoming traffic VLAN. Must be in the range of 1-4095 or 'any'. Default is
    # 'any'.
    # @return [String]
    attr_accessor :vlan

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['comment'] = 'comment'
      @_hash['policy'] = 'policy'
      @_hash['ip_version'] = 'ipVersion'
      @_hash['protocol'] = 'protocol'
      @_hash['src_cidr'] = 'srcCidr'
      @_hash['src_port'] = 'srcPort'
      @_hash['dst_cidr'] = 'dstCidr'
      @_hash['dst_port'] = 'dstPort'
      @_hash['vlan'] = 'vlan'
      @_hash
    end

    def initialize(policy = nil,
                   protocol = nil,
                   src_cidr = nil,
                   dst_cidr = nil,
                   comment = nil,
                   ip_version = nil,
                   src_port = nil,
                   dst_port = nil,
                   vlan = nil)
      @comment = comment
      @policy = policy
      @ip_version = ip_version
      @protocol = protocol
      @src_cidr = src_cidr
      @src_port = src_port
      @dst_cidr = dst_cidr
      @dst_port = dst_port
      @vlan = vlan
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      policy = hash['policy']
      protocol = hash['protocol']
      src_cidr = hash['srcCidr']
      dst_cidr = hash['dstCidr']
      comment = hash['comment']
      ip_version = hash['ipVersion']
      src_port = hash['srcPort']
      dst_port = hash['dstPort']
      vlan = hash['vlan']

      # Create object from extracted values.
      Rule10Model.new(policy,
                      protocol,
                      src_cidr,
                      dst_cidr,
                      comment,
                      ip_version,
                      src_port,
                      dst_port,
                      vlan)
    end
  end
end

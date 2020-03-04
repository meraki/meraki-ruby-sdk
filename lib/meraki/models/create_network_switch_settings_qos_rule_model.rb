# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateNetworkSwitchSettingsQosRuleModel Model.
  class CreateNetworkSwitchSettingsQosRuleModel < BaseModel
    # The VLAN of the incoming packet. A null value will match any VLAN.
    # @return [Integer]
    attr_accessor :vlan

    # The protocol of the incoming packet. Can be one of "ANY", "TCP" or "UDP".
    # Default value is "ANY"
    # @return [Protocol8Enum]
    attr_accessor :protocol

    # The source port of the incoming packet. Applicable only if protocol is TCP
    # or UDP.
    # @return [Integer]
    attr_accessor :src_port

    # The source port range of the incoming packet. Applicable only if protocol
    # is set to TCP or UDP. Example: 70-80
    # @return [String]
    attr_accessor :src_port_range

    # The destination port of the incoming packet. Applicable only if protocol
    # is TCP or UDP.
    # @return [Integer]
    attr_accessor :dst_port

    # The destination port range of the incoming packet. Applicable only if
    # protocol is set to TCP or UDP. Example: 70-80
    # @return [String]
    attr_accessor :dst_port_range

    # DSCP tag. Set this to -1 to trust incoming DSCP. Default value is 0
    # @return [Integer]
    attr_accessor :dscp

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['vlan'] = 'vlan'
      @_hash['protocol'] = 'protocol'
      @_hash['src_port'] = 'srcPort'
      @_hash['src_port_range'] = 'srcPortRange'
      @_hash['dst_port'] = 'dstPort'
      @_hash['dst_port_range'] = 'dstPortRange'
      @_hash['dscp'] = 'dscp'
      @_hash
    end

    def initialize(vlan = nil,
                   protocol = nil,
                   src_port = nil,
                   src_port_range = nil,
                   dst_port = nil,
                   dst_port_range = nil,
                   dscp = nil)
      @vlan = vlan
      @protocol = protocol
      @src_port = src_port
      @src_port_range = src_port_range
      @dst_port = dst_port
      @dst_port_range = dst_port_range
      @dscp = dscp
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      vlan = hash['vlan']
      protocol = hash['protocol']
      src_port = hash['srcPort']
      src_port_range = hash['srcPortRange']
      dst_port = hash['dstPort']
      dst_port_range = hash['dstPortRange']
      dscp = hash['dscp']

      # Create object from extracted values.
      CreateNetworkSwitchSettingsQosRuleModel.new(vlan,
                                                  protocol,
                                                  src_port,
                                                  src_port_range,
                                                  dst_port,
                                                  dst_port_range,
                                                  dscp)
    end
  end
end

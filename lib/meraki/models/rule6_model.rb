# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Rule6Model Model.
  class Rule6Model < BaseModel
    # A descriptive name for the rule
    # @return [String]
    attr_accessor :name

    # The IP address that will be used to access the internal resource from the
    # WAN
    # @return [String]
    attr_accessor :public_ip

    # The IP address of the server or device that hosts the internal resource
    # that you wish to make available on the WAN
    # @return [String]
    attr_accessor :lan_ip

    # The physical WAN interface on which the traffic will arrive ('internet1'
    # or, if available, 'internet2')
    # @return [String]
    attr_accessor :uplink

    # The ports this mapping will provide access on, and the remote IPs that
    # will be allowed access to the resource
    # @return [List of Object]
    attr_accessor :allowed_inbound

    # Either of the following: 'tcp', 'udp', 'icmp-ping' or 'any'
    # @return [String]
    attr_accessor :protocol

    # An array of ports or port ranges that will be forwarded to the host on the
    # LAN
    # @return [String]
    attr_accessor :destination_ports

    # An array of ranges of WAN IP addresses that are allowed to make inbound
    # connections on the specified ports or port ranges, or 'any'
    # @return [String]
    attr_accessor :allowed_ips

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['public_ip'] = 'publicIp'
      @_hash['lan_ip'] = 'lanIp'
      @_hash['uplink'] = 'uplink'
      @_hash['allowed_inbound'] = 'allowedInbound'
      @_hash['protocol'] = 'protocol'
      @_hash['destination_ports'] = 'destinationPorts'
      @_hash['allowed_ips'] = 'allowedIps'
      @_hash
    end

    def initialize(name = nil,
                   public_ip = nil,
                   lan_ip = nil,
                   uplink = nil,
                   allowed_inbound = nil,
                   protocol = nil,
                   destination_ports = nil,
                   allowed_ips = nil)
      @name = name
      @public_ip = public_ip
      @lan_ip = lan_ip
      @uplink = uplink
      @allowed_inbound = allowed_inbound
      @protocol = protocol
      @destination_ports = destination_ports
      @allowed_ips = allowed_ips
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      public_ip = hash['publicIp']
      lan_ip = hash['lanIp']
      uplink = hash['uplink']
      allowed_inbound = hash['allowedInbound']
      protocol = hash['protocol']
      destination_ports = hash['destinationPorts']
      allowed_ips = hash['allowedIps']

      # Create object from extracted values.
      Rule6Model.new(name,
                     public_ip,
                     lan_ip,
                     uplink,
                     allowed_inbound,
                     protocol,
                     destination_ports,
                     allowed_ips)
    end
  end
end

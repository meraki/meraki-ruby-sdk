# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # AllowedInboundModel Model.
  class AllowedInboundModel < BaseModel
    # Either of the following: 'tcp', 'udp', 'icmp-ping' or 'any'
    # @return [Protocol4Enum]
    attr_accessor :protocol

    # An array of ports or port ranges that will be forwarded to the host on the
    # LAN
    # @return [List of String]
    attr_accessor :destination_ports

    # An array of ranges of WAN IP addresses that are allowed to make inbound
    # connections on the specified ports or port ranges, or 'any'
    # @return [List of String]
    attr_accessor :allowed_ips

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['protocol'] = 'protocol'
      @_hash['destination_ports'] = 'destinationPorts'
      @_hash['allowed_ips'] = 'allowedIps'
      @_hash
    end

    def initialize(protocol = nil,
                   destination_ports = nil,
                   allowed_ips = nil)
      @protocol = protocol
      @destination_ports = destination_ports
      @allowed_ips = allowed_ips
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      protocol = hash['protocol']
      destination_ports = hash['destinationPorts']
      allowed_ips = hash['allowedIps']

      # Create object from extracted values.
      AllowedInboundModel.new(protocol,
                              destination_ports,
                              allowed_ips)
    end
  end
end

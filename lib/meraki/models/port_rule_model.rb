# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # PortRuleModel Model.
  class PortRuleModel < BaseModel
    # A description of the rule
    # @return [String]
    attr_accessor :name

    # 'tcp' or 'udp'
    # @return [Protocol3Enum]
    attr_accessor :protocol

    # Destination port of the traffic that is arriving on the WAN
    # @return [String]
    attr_accessor :public_port

    # Local IP address to which traffic will be forwarded
    # @return [String]
    attr_accessor :local_ip

    # Destination port of the forwarded traffic that will be sent from the MX to
    # the specified host on the LAN. If you simply wish to forward the traffic
    # without translating the port, this should be the same as the Public port
    # @return [String]
    attr_accessor :local_port

    # Remote IP addresses or ranges that are permitted to access the internal
    # resource via this port forwarding rule, or 'any'
    # @return [List of String]
    attr_accessor :allowed_ips

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['protocol'] = 'protocol'
      @_hash['public_port'] = 'publicPort'
      @_hash['local_ip'] = 'localIp'
      @_hash['local_port'] = 'localPort'
      @_hash['allowed_ips'] = 'allowedIps'
      @_hash
    end

    def initialize(name = nil,
                   protocol = nil,
                   public_port = nil,
                   local_ip = nil,
                   local_port = nil,
                   allowed_ips = nil)
      @name = name
      @protocol = protocol
      @public_port = public_port
      @local_ip = local_ip
      @local_port = local_port
      @allowed_ips = allowed_ips
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      protocol = hash['protocol']
      public_port = hash['publicPort']
      local_ip = hash['localIp']
      local_port = hash['localPort']
      allowed_ips = hash['allowedIps']

      # Create object from extracted values.
      PortRuleModel.new(name,
                        protocol,
                        public_port,
                        local_ip,
                        local_port,
                        allowed_ips)
    end
  end
end

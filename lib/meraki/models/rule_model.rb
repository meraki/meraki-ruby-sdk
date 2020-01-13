# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # RuleModel Model.
  class RuleModel < BaseModel
    # A descriptive name for the rule
    # @return [String]
    attr_accessor :name

    # The IP address of the server or device that hosts the internal resource
    # that you wish to make available on the WAN
    # @return [String]
    attr_accessor :lan_ip

    # A port or port ranges that will be forwarded to the host on the LAN
    # @return [String]
    attr_accessor :public_port

    # A port or port ranges that will receive the forwarded traffic from the WAN
    # @return [String]
    attr_accessor :local_port

    # An array of ranges of WAN IP addresses that are allowed to make inbound
    # connections on the specified ports or port ranges.
    # @return [List of String]
    attr_accessor :allowed_ips

    # TCP or UDP
    # @return [String]
    attr_accessor :protocol

    # `any` or `restricted`. Specify the right to make inbound connections on
    # the specified ports or port ranges. If `restricted`, a list of allowed IPs
    # is mandatory.
    # @return [String]
    attr_accessor :access

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['lan_ip'] = 'lanIp'
      @_hash['public_port'] = 'publicPort'
      @_hash['local_port'] = 'localPort'
      @_hash['allowed_ips'] = 'allowedIps'
      @_hash['protocol'] = 'protocol'
      @_hash['access'] = 'access'
      @_hash
    end

    def initialize(lan_ip = nil,
                   public_port = nil,
                   local_port = nil,
                   protocol = nil,
                   access = nil,
                   name = nil,
                   allowed_ips = nil)
      @name = name
      @lan_ip = lan_ip
      @public_port = public_port
      @local_port = local_port
      @allowed_ips = allowed_ips
      @protocol = protocol
      @access = access
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      lan_ip = hash['lanIp']
      public_port = hash['publicPort']
      local_port = hash['localPort']
      protocol = hash['protocol']
      access = hash['access']
      name = hash['name']
      allowed_ips = hash['allowedIps']

      # Create object from extracted values.
      RuleModel.new(lan_ip,
                    public_port,
                    local_port,
                    protocol,
                    access,
                    name,
                    allowed_ips)
    end
  end
end

# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Rule8Model Model.
  class Rule8Model < BaseModel
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
    # @return [Uplink1Enum]
    attr_accessor :uplink

    # The ports this mapping will provide access on, and the remote IPs that
    # will be allowed access to the resource
    # @return [List of AllowedInboundModel]
    attr_accessor :allowed_inbound

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['public_ip'] = 'publicIp'
      @_hash['lan_ip'] = 'lanIp'
      @_hash['uplink'] = 'uplink'
      @_hash['allowed_inbound'] = 'allowedInbound'
      @_hash
    end

    def initialize(lan_ip = nil,
                   name = nil,
                   public_ip = nil,
                   uplink = nil,
                   allowed_inbound = nil)
      @name = name
      @public_ip = public_ip
      @lan_ip = lan_ip
      @uplink = uplink
      @allowed_inbound = allowed_inbound
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      lan_ip = hash['lanIp']
      name = hash['name']
      public_ip = hash['publicIp']
      uplink = hash['uplink']
      # Parameter is an array, so we need to iterate through it
      allowed_inbound = nil
      unless hash['allowedInbound'].nil?
        allowed_inbound = []
        hash['allowedInbound'].each do |structure|
          allowed_inbound << (AllowedInboundModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      Rule8Model.new(lan_ip,
                     name,
                     public_ip,
                     uplink,
                     allowed_inbound)
    end
  end
end

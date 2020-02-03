# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Rule7Model Model.
  class Rule7Model < BaseModel
    # The IP address that will be used to access the internal resource from the
    # WAN
    # @return [String]
    attr_accessor :public_ip

    # The physical WAN interface on which the traffic will arrive ('internet1'
    # or, if available, 'internet2')
    # @return [Uplink1Enum]
    attr_accessor :uplink

    # An array of associated forwarding rules
    # @return [List of PortRuleModel]
    attr_accessor :port_rules

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['public_ip'] = 'publicIp'
      @_hash['uplink'] = 'uplink'
      @_hash['port_rules'] = 'portRules'
      @_hash
    end

    def initialize(public_ip = nil,
                   uplink = nil,
                   port_rules = nil)
      @public_ip = public_ip
      @uplink = uplink
      @port_rules = port_rules
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      public_ip = hash['publicIp']
      uplink = hash['uplink']
      # Parameter is an array, so we need to iterate through it
      port_rules = nil
      unless hash['portRules'].nil?
        port_rules = []
        hash['portRules'].each do |structure|
          port_rules << (PortRuleModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      Rule7Model.new(public_ip,
                     uplink,
                     port_rules)
    end
  end
end

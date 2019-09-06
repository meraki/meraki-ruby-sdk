# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # ServerModel Model.
  class ServerModel < BaseModel
    # The IP address of the syslog server
    # @return [String]
    attr_accessor :host

    # The port of the syslog server
    # @return [Integer]
    attr_accessor :port

    # A list of roles for the syslog server. Options (case-insensitive):
    # 'Wireless event log', 'Appliance event log', 'Switch event log', 'Air
    # Marshal events', 'Flows', 'URLs', 'IDS alerts', 'Security events'
    # @return [List of String]
    attr_accessor :roles

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['host'] = 'host'
      @_hash['port'] = 'port'
      @_hash['roles'] = 'roles'
      @_hash
    end

    def initialize(host = nil,
                   port = nil,
                   roles = nil)
      @host = host
      @port = port
      @roles = roles
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      host = hash['host']
      port = hash['port']
      roles = hash['roles']

      # Create object from extracted values.
      ServerModel.new(host,
                      port,
                      roles)
    end
  end
end

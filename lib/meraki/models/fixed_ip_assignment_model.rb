# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # FixedIpAssignmentModel Model.
  class FixedIpAssignmentModel < BaseModel
    # A descriptive name of the assignment
    # @return [String]
    attr_accessor :name

    # The IP address you want to assign to a specific server or device
    # @return [String]
    attr_accessor :ip

    # The MAC address of the server or device that hosts the internal resource
    # that you wish to receive the specified IP address
    # @return [String]
    attr_accessor :mac

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['ip'] = 'ip'
      @_hash['mac'] = 'mac'
      @_hash
    end

    def initialize(ip = nil,
                   mac = nil,
                   name = nil)
      @name = name
      @ip = ip
      @mac = mac
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      ip = hash['ip']
      mac = hash['mac']
      name = hash['name']

      # Create object from extracted values.
      FixedIpAssignmentModel.new(ip,
                                 mac,
                                 name)
    end
  end
end

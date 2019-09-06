# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkWarmSpareSettingsModel Model.
  class UpdateNetworkWarmSpareSettingsModel < BaseModel
    # Enable warm spare
    # @return [Boolean]
    attr_accessor :enabled

    # Serial number of the warm spare appliance
    # @return [String]
    attr_accessor :spare_serial

    # Uplink mode, either virtual or public
    # @return [String]
    attr_accessor :uplink_mode

    # The WAN 1 shared IP
    # @return [String]
    attr_accessor :virtual_ip1

    # The WAN 2 shared IP
    # @return [String]
    attr_accessor :virtual_ip2

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash['spare_serial'] = 'spareSerial'
      @_hash['uplink_mode'] = 'uplinkMode'
      @_hash['virtual_ip1'] = 'virtualIp1'
      @_hash['virtual_ip2'] = 'virtualIp2'
      @_hash
    end

    def initialize(enabled = nil,
                   spare_serial = nil,
                   uplink_mode = nil,
                   virtual_ip1 = nil,
                   virtual_ip2 = nil)
      @enabled = enabled
      @spare_serial = spare_serial
      @uplink_mode = uplink_mode
      @virtual_ip1 = virtual_ip1
      @virtual_ip2 = virtual_ip2
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash['enabled']
      spare_serial = hash['spareSerial']
      uplink_mode = hash['uplinkMode']
      virtual_ip1 = hash['virtualIp1']
      virtual_ip2 = hash['virtualIp2']

      # Create object from extracted values.
      UpdateNetworkWarmSpareSettingsModel.new(enabled,
                                              spare_serial,
                                              uplink_mode,
                                              virtual_ip1,
                                              virtual_ip2)
    end
  end
end

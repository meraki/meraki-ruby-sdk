# meraki
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # The network_wide destinations for all alerts on the network.
  class DefaultDestinationsModel < BaseModel
    # A list of emails that will recieve the alert(s).
    # @return [List of String]
    attr_accessor :emails

    # If true, then all network admins will receive emails.
    # @return [Boolean]
    attr_accessor :all_admins

    # If true, then an SNMP trap will be sent if there is an SNMP trap server
    # configured for this network.
    # @return [Boolean]
    attr_accessor :snmp

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['emails'] = 'emails'
      @_hash['all_admins'] = 'allAdmins'
      @_hash['snmp'] = 'snmp'
      @_hash
    end

    def initialize(emails = nil,
                   all_admins = nil,
                   snmp = nil,
                   additional_properties = {})
      @emails = emails
      @all_admins = all_admins
      @snmp = snmp

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      emails = hash['emails']
      all_admins = hash['allAdmins']
      snmp = hash['snmp']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      DefaultDestinationsModel.new(emails,
                                   all_admins,
                                   snmp,
                                   hash)
    end
  end
end

# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSwitchLinkAggregationModel Model.
  class UpdateNetworkSwitchLinkAggregationModel < BaseModel
    # Array of switch or stack ports for updating aggregation group. Minimum 2
    # and maximum 8 ports are supported.
    # @return [List of SwitchPortModel]
    attr_accessor :switch_ports

    # Array of switch profile ports for updating aggregation group. Minimum 2
    # and maximum 8 ports are supported.
    # @return [List of SwitchProfilePortModel]
    attr_accessor :switch_profile_ports

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['switch_ports'] = 'switchPorts'
      @_hash['switch_profile_ports'] = 'switchProfilePorts'
      @_hash
    end

    def initialize(switch_ports = nil,
                   switch_profile_ports = nil)
      @switch_ports = switch_ports
      @switch_profile_ports = switch_profile_ports
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      switch_ports = nil
      unless hash['switchPorts'].nil?
        switch_ports = []
        hash['switchPorts'].each do |structure|
          switch_ports << (SwitchPortModel.from_hash(structure) if structure)
        end
      end
      # Parameter is an array, so we need to iterate through it
      switch_profile_ports = nil
      unless hash['switchProfilePorts'].nil?
        switch_profile_ports = []
        hash['switchProfilePorts'].each do |structure|
          switch_profile_ports << (SwitchProfilePortModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateNetworkSwitchLinkAggregationModel.new(switch_ports,
                                                  switch_profile_ports)
    end
  end
end

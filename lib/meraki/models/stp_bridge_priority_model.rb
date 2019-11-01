# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # StpBridgePriorityModel Model.
  class StpBridgePriorityModel < BaseModel
    # List of switch profile IDs
    # @return [List of String]
    attr_accessor :switch_profiles

    # List of switch serial numbers
    # @return [List of String]
    attr_accessor :switches

    # List of stack IDs
    # @return [List of String]
    attr_accessor :stacks

    # STP priority for switch, stacks, or switch profiles
    # @return [Integer]
    attr_accessor :stp_priority

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['switch_profiles'] = 'switchProfiles'
      @_hash['switches'] = 'switches'
      @_hash['stacks'] = 'stacks'
      @_hash['stp_priority'] = 'stpPriority'
      @_hash
    end

    def initialize(stp_priority = nil,
                   switch_profiles = nil,
                   switches = nil,
                   stacks = nil)
      @switch_profiles = switch_profiles
      @switches = switches
      @stacks = stacks
      @stp_priority = stp_priority
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      stp_priority = hash['stpPriority']
      switch_profiles = hash['switchProfiles']
      switches = hash['switches']
      stacks = hash['stacks']

      # Create object from extracted values.
      StpBridgePriorityModel.new(stp_priority,
                                 switch_profiles,
                                 switches,
                                 stacks)
    end
  end
end

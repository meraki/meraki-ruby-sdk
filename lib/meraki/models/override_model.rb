# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # OverrideModel Model.
  class OverrideModel < BaseModel
    # List of switch serials. Applicable only for switch network.
    # @return [List of String]
    attr_accessor :switches

    # List of switch profile IDs. Applicable only for template network.
    # @return [List of String]
    attr_accessor :switch_profiles

    # MTU size for the switches or switch profiles.
    # @return [Integer]
    attr_accessor :mtu_size

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['switches'] = 'switches'
      @_hash['switch_profiles'] = 'switchProfiles'
      @_hash['mtu_size'] = 'mtuSize'
      @_hash
    end

    def initialize(mtu_size = nil,
                   switches = nil,
                   switch_profiles = nil)
      @switches = switches
      @switch_profiles = switch_profiles
      @mtu_size = mtu_size
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      mtu_size = hash['mtuSize']
      switches = hash['switches']
      switch_profiles = hash['switchProfiles']

      # Create object from extracted values.
      OverrideModel.new(mtu_size,
                        switches,
                        switch_profiles)
    end
  end
end

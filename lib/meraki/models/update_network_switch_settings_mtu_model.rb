# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSwitchSettingsMtuModel Model.
  class UpdateNetworkSwitchSettingsMtuModel < BaseModel
    # MTU size for the entire network. Default value is 9578.
    # @return [Integer]
    attr_accessor :default_mtu_size

    # Override MTU size for individual switches or switch profiles. An empty
    # array will clear overrides.
    # @return [List of OverrideModel]
    attr_accessor :overrides

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['default_mtu_size'] = 'defaultMtuSize'
      @_hash['overrides'] = 'overrides'
      @_hash
    end

    def initialize(default_mtu_size = nil,
                   overrides = nil)
      @default_mtu_size = default_mtu_size
      @overrides = overrides
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      default_mtu_size = hash['defaultMtuSize']
      # Parameter is an array, so we need to iterate through it
      overrides = nil
      unless hash['overrides'].nil?
        overrides = []
        hash['overrides'].each do |structure|
          overrides << (OverrideModel.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      UpdateNetworkSwitchSettingsMtuModel.new(default_mtu_size,
                                              overrides)
    end
  end
end

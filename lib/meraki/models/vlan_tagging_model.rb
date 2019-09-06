# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # The VLAN tagging settings for your group policy. Only available if your
  # network has a wireless configuration.
  class VlanTaggingModel < BaseModel
    # How VLAN tagging is applied. Can be 'network default', 'ignore' or
    # 'custom'.
    # @return [Settings5Enum]
    attr_accessor :settings

    # The ID of the vlan you want to tag. This only applies if 'settings' is set
    # to 'custom'.
    # @return [String]
    attr_accessor :vlan_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['settings'] = 'settings'
      @_hash['vlan_id'] = 'vlanId'
      @_hash
    end

    def initialize(settings = nil,
                   vlan_id = nil)
      @settings = settings
      @vlan_id = vlan_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      settings = hash['settings']
      vlan_id = hash['vlanId']

      # Create object from extracted values.
      VlanTaggingModel.new(settings,
                           vlan_id)
    end
  end
end

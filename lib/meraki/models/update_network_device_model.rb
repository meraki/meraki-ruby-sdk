# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkDeviceModel Model.
  class UpdateNetworkDeviceModel < BaseModel
    # The name of a device
    # @return [String]
    attr_accessor :name

    # The tags of a device
    # @return [String]
    attr_accessor :tags

    # The latitude of a device
    # @return [Float]
    attr_accessor :lat

    # The longitude of a device
    # @return [Float]
    attr_accessor :lng

    # The address of a device
    # @return [String]
    attr_accessor :address

    # The notes for the device. String. Limited to 255 characters.
    # @return [String]
    attr_accessor :notes

    # Whether or not to set the latitude and longitude of a device based on the
    # new address. Only applies when lat and lng are not specified.
    # @return [Boolean]
    attr_accessor :move_map_marker

    # The ID of a switch profile to bind to the device (for available switch
    # profiles, see the 'Switch Profiles' endpoint). Use null to unbind the
    # switch device from the current profile. For a device to be bindable to a
    # switch profile, it must (1) be a switch, and (2) belong to a network that
    # is bound to a configuration template.
    # @return [String]
    attr_accessor :switch_profile_id

    # The floor plan to associate to this device. null disassociates the device
    # from the floorplan.
    # @return [String]
    attr_accessor :floor_plan_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['tags'] = 'tags'
      @_hash['lat'] = 'lat'
      @_hash['lng'] = 'lng'
      @_hash['address'] = 'address'
      @_hash['notes'] = 'notes'
      @_hash['move_map_marker'] = 'moveMapMarker'
      @_hash['switch_profile_id'] = 'switchProfileId'
      @_hash['floor_plan_id'] = 'floorPlanId'
      @_hash
    end

    def initialize(name = nil,
                   tags = nil,
                   lat = nil,
                   lng = nil,
                   address = nil,
                   notes = nil,
                   move_map_marker = nil,
                   switch_profile_id = nil,
                   floor_plan_id = nil)
      @name = name
      @tags = tags
      @lat = lat
      @lng = lng
      @address = address
      @notes = notes
      @move_map_marker = move_map_marker
      @switch_profile_id = switch_profile_id
      @floor_plan_id = floor_plan_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      tags = hash['tags']
      lat = hash['lat']
      lng = hash['lng']
      address = hash['address']
      notes = hash['notes']
      move_map_marker = hash['moveMapMarker']
      switch_profile_id = hash['switchProfileId']
      floor_plan_id = hash['floorPlanId']

      # Create object from extracted values.
      UpdateNetworkDeviceModel.new(name,
                                   tags,
                                   lat,
                                   lng,
                                   address,
                                   notes,
                                   move_map_marker,
                                   switch_profile_id,
                                   floor_plan_id)
    end
  end
end

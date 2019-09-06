# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # CreateOrganizationNetworkModel Model.
  class CreateOrganizationNetworkModel < BaseModel
    # The name of the new network
    # @return [String]
    attr_accessor :name

    # The type of the new network. Valid types are wireless, appliance, switch,
    # systemsManager, camera, or a space-separated list of those for a combined
    # network.
    # @return [String]
    attr_accessor :type

    # A space-separated list of tags to be applied to the network
    # @return [String]
    attr_accessor :tags

    # The timezone of the network. For a list of allowed timezones, please see
    # the 'TZ' column in the table in <a target='_blank'
    # href='https://en.wikipedia.org/wiki/List_of_tz_database_time_zones'>this
    # article.</a>
    # @return [String]
    attr_accessor :time_zone

    # The ID of the network to copy configuration from. Other provided
    # parameters will override the copied configuration, except type which must
    # match this network's type exactly.
    # @return [String]
    attr_accessor :copy_from_network_id

    # Disables the local device status pages (<a target='_blank'
    # href='http://my.meraki.com/'>my.meraki.com, </a><a target='_blank'
    # href='http://ap.meraki.com/'>ap.meraki.com, </a><a target='_blank'
    # href='http://switch.meraki.com/'>switch.meraki.com, </a><a target='_blank'
    # href='http://wired.meraki.com/'>wired.meraki.com</a>). Optional (defaults
    # to false)
    # @return [Boolean]
    attr_accessor :disable_my_meraki_com

    # Disables access to the device status page (<a
    # target='_blank'>http://[device's LAN IP])</a>. Optional. Can only be set
    # if disableMyMerakiCom is set to false
    # @return [Boolean]
    attr_accessor :disable_remote_status_page

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['type'] = 'type'
      @_hash['tags'] = 'tags'
      @_hash['time_zone'] = 'timeZone'
      @_hash['copy_from_network_id'] = 'copyFromNetworkId'
      @_hash['disable_my_meraki_com'] = 'disableMyMerakiCom'
      @_hash['disable_remote_status_page'] = 'disableRemoteStatusPage'
      @_hash
    end

    def initialize(name = nil,
                   type = nil,
                   tags = nil,
                   time_zone = nil,
                   copy_from_network_id = nil,
                   disable_my_meraki_com = nil,
                   disable_remote_status_page = nil)
      @name = name
      @type = type
      @tags = tags
      @time_zone = time_zone
      @copy_from_network_id = copy_from_network_id
      @disable_my_meraki_com = disable_my_meraki_com
      @disable_remote_status_page = disable_remote_status_page
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      type = hash['type']
      tags = hash['tags']
      time_zone = hash['timeZone']
      copy_from_network_id = hash['copyFromNetworkId']
      disable_my_meraki_com = hash['disableMyMerakiCom']
      disable_remote_status_page = hash['disableRemoteStatusPage']

      # Create object from extracted values.
      CreateOrganizationNetworkModel.new(name,
                                         type,
                                         tags,
                                         time_zone,
                                         copy_from_network_id,
                                         disable_my_meraki_com,
                                         disable_remote_status_page)
    end
  end
end

# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkModel Model.
  class UpdateNetworkModel < BaseModel
    # The name of the new network
    # @return [String]
    attr_accessor :name

    # The timezone of the network. For a list of allowed timezones, please see
    # the 'TZ' column in the table in <a target='_blank'
    # href='https://en.wikipedia.org/wiki/List_of_tz_database_time_zones'>this
    # article.</a>
    # @return [String]
    attr_accessor :time_zone

    # A space-separated list of tags to be applied to the network
    # @return [String]
    attr_accessor :tags

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
      @_hash['time_zone'] = 'timeZone'
      @_hash['tags'] = 'tags'
      @_hash['disable_my_meraki_com'] = 'disableMyMerakiCom'
      @_hash['disable_remote_status_page'] = 'disableRemoteStatusPage'
      @_hash
    end

    def initialize(name = nil,
                   time_zone = nil,
                   tags = nil,
                   disable_my_meraki_com = nil,
                   disable_remote_status_page = nil)
      @name = name
      @time_zone = time_zone
      @tags = tags
      @disable_my_meraki_com = disable_my_meraki_com
      @disable_remote_status_page = disable_remote_status_page
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      time_zone = hash['timeZone']
      tags = hash['tags']
      disable_my_meraki_com = hash['disableMyMerakiCom']
      disable_remote_status_page = hash['disableRemoteStatusPage']

      # Create object from extracted values.
      UpdateNetworkModel.new(name,
                             time_zone,
                             tags,
                             disable_my_meraki_com,
                             disable_remote_status_page)
    end
  end
end

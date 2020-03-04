# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # LicenseModel Model.
  class LicenseModel < BaseModel
    # The key of the license
    # @return [String]
    attr_accessor :key

    # Either 'renew' or 'addDevices'. 'addDevices' will increase the license
    # limit, while 'renew' will extend the amount of time until expiration. This
    # parameter is legacy and only applies to coterm licensing; it should not be
    # specified when claiming per-device licenses. Please see <a target='_blank'
    # href='https://documentation.meraki.com/zGeneral_Administration/Licensing/A
    # dding_an_Enterprise_license_to_an_existing_Dashboard_account'>this
    # article</a> for more information.
    # @return [Mode4Enum]
    attr_accessor :mode

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['key'] = 'key'
      @_hash['mode'] = 'mode'
      @_hash
    end

    def initialize(key = nil,
                   mode = nil)
      @key = key
      @mode = mode
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      key = hash['key']
      mode = hash['mode']

      # Create object from extracted values.
      LicenseModel.new(key,
                       mode)
    end
  end
end

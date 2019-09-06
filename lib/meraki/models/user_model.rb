# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UserModel Model.
  class UserModel < BaseModel
    # The username for the SNMP user. Required.
    # @return [String]
    attr_accessor :username

    # The passphrase for the SNMP user. Required.
    # @return [String]
    attr_accessor :passphrase

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['username'] = 'username'
      @_hash['passphrase'] = 'passphrase'
      @_hash
    end

    def initialize(username = nil,
                   passphrase = nil)
      @username = username
      @passphrase = passphrase
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      username = hash['username']
      passphrase = hash['passphrase']

      # Create object from extracted values.
      UserModel.new(username,
                    passphrase)
    end
  end
end

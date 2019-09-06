# meraki
#
# This file was automatically generated for meraki by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # Set the included/excluded networks from the intrusion engine (optional -
  # omitting will leave current config unchanged). This is available only in
  # 'passthrough' mode
  class ProtectedNetworksModel < BaseModel
    # true/false whether to use special IPv4 addresses:
    # https://tools.ietf.org/html/rfc5735 (required). Default value is true if
    # none currently saved
    # @return [Boolean]
    attr_accessor :use_default

    # list of IP addresses or subnets being protected (required if 'useDefault'
    # is false)
    # @return [List of String]
    attr_accessor :included_cidr

    # list of IP addresses or subnets being excluded from protection (required
    # if 'useDefault' is false)
    # @return [List of String]
    attr_accessor :excluded_cidr

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['use_default'] = 'useDefault'
      @_hash['included_cidr'] = 'includedCidr'
      @_hash['excluded_cidr'] = 'excludedCidr'
      @_hash
    end

    def initialize(use_default = nil,
                   included_cidr = nil,
                   excluded_cidr = nil)
      @use_default = use_default
      @included_cidr = included_cidr
      @excluded_cidr = excluded_cidr
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      use_default = hash['useDefault']
      included_cidr = hash['includedCidr']
      excluded_cidr = hash['excludedCidr']

      # Create object from extracted values.
      ProtectedNetworksModel.new(use_default,
                                 included_cidr,
                                 excluded_cidr)
    end
  end
end

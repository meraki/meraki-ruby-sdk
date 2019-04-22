# meraki
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkSmAppPolariModel Model.
  class UpdateNetworkSmAppPolariModel < BaseModel
    # The scope (one of all, none, automatic, withAny, withAll, withoutAny, or
    # withoutAll) and a set of tags of the devices to be assigned
    # @return [String]
    attr_accessor :scope

    # Whether or not SM should auto-install this app (one of true or false).
    # False by default.
    # @return [String]
    attr_accessor :prevent_auto_install

    # Whether or not the app should use VPP by device assignment (one of true or
    # false). False by default.
    # @return [String]
    attr_accessor :uses_vpp

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['scope'] = 'scope'
      @_hash['prevent_auto_install'] = 'preventAutoInstall'
      @_hash['uses_vpp'] = 'usesVPP'
      @_hash
    end

    def initialize(scope = nil,
                   prevent_auto_install = nil,
                   uses_vpp = nil,
                   additional_properties = {})
      @scope = scope
      @prevent_auto_install = prevent_auto_install
      @uses_vpp = uses_vpp

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      scope = hash['scope']
      prevent_auto_install = hash['preventAutoInstall']
      uses_vpp = hash['usesVPP']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      UpdateNetworkSmAppPolariModel.new(scope,
                                        prevent_auto_install,
                                        uses_vpp,
                                        hash)
    end
  end
end

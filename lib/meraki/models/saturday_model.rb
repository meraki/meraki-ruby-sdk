# meraki
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # The schedule object for Saturday.
  class SaturdayModel < BaseModel
    # Whether the schedule is active (true) or inactive (false) during the time
    # specified between 'from' and 'to'. Defaults to true.
    # @return [Boolean]
    attr_accessor :active

    # The time, from '00:00' to '24:00'. Must be less than the time specified in
    # 'to'. Defaults to '00:00'. Only 30 minute increments are allowed.
    # @return [String]
    attr_accessor :from

    # The time, from '00:00' to '24:00'. Must be greater than the time specified
    # in 'from'. Defaults to '24:00'. Only 30 minute increments are allowed.
    # @return [String]
    attr_accessor :to

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['active'] = 'active'
      @_hash['from'] = 'from'
      @_hash['to'] = 'to'
      @_hash
    end

    def initialize(active = nil,
                   from = nil,
                   to = nil,
                   additional_properties = {})
      @active = active
      @from = from
      @to = to

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      active = hash['active']
      from = hash['from']
      to = hash['to']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      SaturdayModel.new(active,
                        from,
                        to,
                        hash)
    end
  end
end

# meraki
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module Meraki
  # UpdateNetworkOneToManyNatRulesModel Model.
  class UpdateNetworkOneToManyNatRulesModel < BaseModel
    # An array of 1:Many nat rules
    # @return [List of Rule5Model]
    attr_accessor :rules

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['rules'] = 'rules'
      @_hash
    end

    def initialize(rules = nil,
                   additional_properties = {})
      @rules = rules

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      rules = nil
      unless hash['rules'].nil?
        rules = []
        hash['rules'].each do |structure|
          rules << (Rule5Model.from_hash(structure) if structure)
        end
      end

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      UpdateNetworkOneToManyNatRulesModel.new(rules,
                                              hash)
    end
  end
end
